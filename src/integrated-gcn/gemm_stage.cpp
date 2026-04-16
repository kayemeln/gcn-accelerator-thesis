// gemm_stage.cpp
// Standalone GEMM kernel: H_temp = X * W
// Extracted from integrated_gcn for independent synthesis

#include "gemm_stage.h"

// ---- Iteration counts ----
static constexpr int GEMM_IB_COUNT = NODES_PAD     / MI;       // 43
static constexpr int GEMM_KB_COUNT = F_IN_PAD_GEMM / MK;       // 23
static constexpr int GEMM_JB_COUNT = F_OUT_PAD     / MJ;       // 1
static constexpr int GEMM_X_VECS_PER_K  = MI / DSIZE;          // 2
static constexpr int GEMM_W_VECS_PER_K  = MJ / DSIZE;          // 2
static constexpr int GEMM_XW_VECS_PER_ROW = MJ / DSIZE;        // 2

// ReadX: stream X^T as wide vectors
static void gemm_read_X(
    hls::vector<DTYPE, DSIZE>* X,
    hls::stream<hls::vector<DTYPE, DSIZE>>& X_stream
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                for (int k = 0; k < MK; k++) {
                    for (int ii = 0; ii < GEMM_X_VECS_PER_K; ii++) {
#pragma HLS PIPELINE II=1
                        X_stream.write(
                            X[((kb * MK + k) * NODES_PAD + ib * MI) / DSIZE + ii]);
                    }
                }
            }
        }
    }
}

// ReadW: stream W as wide vectors
static void gemm_read_W(
    hls::vector<DTYPE, DSIZE>* W,
    hls::stream<hls::vector<DTYPE, DSIZE>>& W_stream
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                for (int k = 0; k < MK; k++) {
                    for (int jj = 0; jj < GEMM_W_VECS_PER_K; jj++) {
#pragma HLS PIPELINE II=1
                        W_stream.write(
                            W[((kb * MK + k) * F_OUT_PAD + jb * MJ) / DSIZE + jj]);
                    }
                }
            }
        }
    }
}

// Comp: consume X/W streams, accumulate in XW_block, stream result block out.
static void gemm_compute(
    hls::stream<hls::vector<DTYPE, DSIZE>>& X_stream,
    hls::stream<hls::vector<DTYPE, DSIZE>>& W_stream,
    hls::stream<hls::vector<DTYPE, DSIZE>>& XW_stream
){
    acc32_t XW_block[MI][MJ];
    DTYPE W_line[MJ];
    DTYPE X_line[MI];
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=XW_block
#pragma HLS ARRAY_PARTITION dim=1 type=cyclic factor=UI variable=XW_block
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=W_line
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=X_line

    COMP_IB:
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        COMP_JB:
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {

            COMP_INIT:
            for (int i = 0; i < MI; i++) {
#pragma HLS PIPELINE II=1
                for (int j = 0; j < MJ; j++) {
#pragma HLS UNROLL
                    XW_block[i][j] = 0;
                }
            }

            COMP_KB:
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                COMP_K:
                for (int k = 0; k < MK; k++) {

                    COMP_LOAD_XW:
                    for (int xx = 0; xx < GEMM_X_VECS_PER_K; xx++) {
#pragma HLS PIPELINE II=1
                        hls::vector<DTYPE, DSIZE> X_temp = X_stream.read();
                        hls::vector<DTYPE, DSIZE> W_temp = W_stream.read();
                        for (int d = 0; d < DSIZE; d++) {
#pragma HLS UNROLL
                            X_line[xx * DSIZE + d] = X_temp[d];
                            W_line[xx * DSIZE + d] = W_temp[d];
                        }
                    }

                    COMP_I:
                    for (int i_outer = 0; i_outer < MI; i_outer += UI) {
#pragma HLS PIPELINE II=1
                        for (int iu = 0; iu < UI; iu++) {
#pragma HLS UNROLL
                            DTYPE X_val = X_line[i_outer + iu];
                            COMP_J:
                            for (int j = 0; j < MJ; j++) {
#pragma HLS UNROLL
                                XW_block[i_outer + iu][j]
                                    += X_val * W_line[j];
                            }
                        }
                    }
                }
            }

            COMP_EMIT:
            for (int i = 0; i < MI; i++) {
                for (int jj = 0; jj < GEMM_XW_VECS_PER_ROW; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> XW_temp;
                    for (int j = 0; j < DSIZE; j++) {
#pragma HLS UNROLL
                        XW_temp[j] = (DTYPE)XW_block[i][jj * DSIZE + j];
                    }
                    XW_stream.write(XW_temp);
                }
            }
        }
    }
}

// WriteXW: drain XW stream to DRAM, dropping rows past NODES (padding).
static void gemm_write(
    hls::stream<hls::vector<DTYPE, DSIZE>>& XW_stream,
    hls::vector<DTYPE, DSIZE>* H_temp
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int i = 0; i < MI; i++) {
                for (int jj = 0; jj < GEMM_XW_VECS_PER_ROW; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> XW_temp = XW_stream.read();
                    if (ib * MI + i < NODES)
                        H_temp[((ib * MI + i) * F_OUT_PAD + jb * MJ) / DSIZE + jj]
                            = XW_temp;
                }
            }
        }
    }
}

// Top-level: ReadX || ReadW || Comp || WriteXW, chained by FIFOs.
void gemm_stage(
    hls::vector<DTYPE, DSIZE>* X,
    hls::vector<DTYPE, DSIZE>* W,
    hls::vector<DTYPE, DSIZE>* H_temp
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=W
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=H_temp

#pragma HLS DATAFLOW
    hls::stream<hls::vector<DTYPE, DSIZE>> X_stream("X_stream");
    hls::stream<hls::vector<DTYPE, DSIZE>> W_stream("W_stream");
    hls::stream<hls::vector<DTYPE, DSIZE>> XW_stream("XW_stream");
#pragma HLS STREAM variable=X_stream  depth=16
#pragma HLS STREAM variable=W_stream  depth=16
#pragma HLS STREAM variable=XW_stream depth=16

    gemm_read_X(X, X_stream);
    gemm_read_W(W, W_stream);
    gemm_compute(X_stream, W_stream, XW_stream);
    gemm_write(XW_stream, H_temp);
}
