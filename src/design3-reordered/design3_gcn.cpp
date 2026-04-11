// design3_gcn.cpp
// Computation order: H_out = A * (X * W)
// Stage 1: GEMM  — H_temp = X * W   (reduces 1433 features to 256)
// Stage 2: SpMM  — H_out  = A * H_temp (sparse multiply on 256 features)

#include "design3_gcn.h"

// ================================================================
//  STAGE 1: GEMM  (tiled block matrix multiply)
//  H_temp = X * W
//  X:      [F_IN_PAD_GEMM x NODES_PAD] transposed + vectorised (A-side)
//  W:      [F_IN_PAD_GEMM x F_OUT_PAD] vectorised, B-side
//  H_temp: [NODES x F_OUT_PAD] vectorised
//
//  Transposing X lets the kb -> k -> i loop fetch consecutive X elements
//  (one k, sweeping i) as a wide vector, removing the strided per-i scalar
//  load that was bottlenecking DRAM bandwidth.
// ================================================================

// ---- GEMM dataflow sub-stages ---------------------------------------------
// Iteration counts reused by all sub-stages so traffic stays in lockstep.
// Tile dims are decoupled: MI/MJ/MK can differ. MJ is pinned to F_OUT_PAD so
// the fully-unrolled j axis never does padding work.
static constexpr int GEMM_IB_COUNT = NODES_PAD     / MI;       // 43
static constexpr int GEMM_KB_COUNT = F_IN_PAD_GEMM / MK;       // 23
static constexpr int GEMM_JB_COUNT = F_OUT_PAD     / MJ;       // 1
static constexpr int GEMM_A_VECS_PER_K  = MI / DSIZE;          // 2
static constexpr int GEMM_B_VECS_PER_K  = MJ / DSIZE;          // 2
static constexpr int GEMM_AB_VECS_PER_ROW = MJ / DSIZE;        // 2

// ReadA: stream X^T as wide vectors (one A_line = MI/DSIZE vectors per (kb,k)).
static void gemm_read_A(
    hls::vector<DTYPE, DSIZE>* X,
    hls::stream<hls::vector<DTYPE, DSIZE>>& A_stream
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                for (int k = 0; k < MK; k++) {
                    for (int ii = 0; ii < GEMM_A_VECS_PER_K; ii++) {
#pragma HLS PIPELINE II=1
                        A_stream.write(
                            X[((kb * MK + k) * NODES_PAD + ib * MI) / DSIZE + ii]);
                    }
                }
            }
        }
    }
}

// ReadB: stream W as wide vectors (one B_line = MJ/DSIZE vectors per (kb,k)).
static void gemm_read_B(
    hls::vector<DTYPE, DSIZE>* W,
    hls::stream<hls::vector<DTYPE, DSIZE>>& B_stream
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                for (int k = 0; k < MK; k++) {
                    for (int jj = 0; jj < GEMM_B_VECS_PER_K; jj++) {
#pragma HLS PIPELINE II=1
                        B_stream.write(
                            W[((kb * MK + k) * F_OUT_PAD + jb * MJ) / DSIZE + jj]);
                    }
                }
            }
        }
    }
}

// Comp: consume A/B streams, accumulate in AB_block, stream result block out.
// The MAC kernel unrolls the inner j axis fully (MJ wide) AND unrolls the
// i axis by UI, giving UI*MJ parallel multiplies per pipelined cycle.
static void gemm_compute(
    hls::stream<hls::vector<DTYPE, DSIZE>>& A_stream,
    hls::stream<hls::vector<DTYPE, DSIZE>>& B_stream,
    hls::stream<hls::vector<DTYPE, DSIZE>>& AB_stream
){
    acc32_t AB_block[MI][MJ];
    DTYPE B_line[MJ];
    DTYPE A_line[MI];
    // dim=2 complete: every column of AB_block is an independent bank, so
    // the MJ-wide j unroll can write in parallel.
    // dim=1 cyclic factor=UI: UI different rows land in different banks, so
    // the UI-wide i unroll can write in parallel on top of that.
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=AB_block
#pragma HLS ARRAY_PARTITION dim=1 type=cyclic factor=UI variable=AB_block
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B_line
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=A_line

    COMP_IB:
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        COMP_JB:
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {

            COMP_INIT:
            for (int i = 0; i < MI; i++) {
#pragma HLS PIPELINE II=1
                for (int j = 0; j < MJ; j++) {
#pragma HLS UNROLL
                    AB_block[i][j] = 0;
                }
            }

            COMP_KB:
            for (int kb = 0; kb < GEMM_KB_COUNT; kb++) {
                COMP_K:
                for (int k = 0; k < MK; k++) {

                    COMP_LOAD_B:
                    for (int jj = 0; jj < GEMM_B_VECS_PER_K; jj++) {
#pragma HLS PIPELINE II=1
                        hls::vector<DTYPE, DSIZE> B_temp = B_stream.read();
                        for (int j = 0; j < DSIZE; j++) {
#pragma HLS UNROLL
                            B_line[jj * DSIZE + j] = B_temp[j];
                        }
                    }

                    COMP_LOAD_A:
                    for (int ii = 0; ii < GEMM_A_VECS_PER_K; ii++) {
#pragma HLS PIPELINE II=1
                        hls::vector<DTYPE, DSIZE> A_temp = A_stream.read();
                        for (int i = 0; i < DSIZE; i++) {
#pragma HLS UNROLL
                            A_line[ii * DSIZE + i] = A_temp[i];
                        }
                    }

                    // Pipelined over i_outer; each cycle issues UI*MJ MACs.
                    COMP_I:
                    for (int i_outer = 0; i_outer < MI; i_outer += UI) {
#pragma HLS PIPELINE II=1
                        for (int iu = 0; iu < UI; iu++) {
#pragma HLS UNROLL
                            DTYPE A_temp = A_line[i_outer + iu];
                            COMP_J:
                            for (int j = 0; j < MJ; j++) {
#pragma HLS UNROLL
                                AB_block[i_outer + iu][j]
                                    += A_temp * B_line[j];
                            }
                        }
                    }
                }
            }

            COMP_EMIT:
            for (int i = 0; i < MI; i++) {
                for (int jj = 0; jj < GEMM_AB_VECS_PER_ROW; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> AB_temp;
                    for (int j = 0; j < DSIZE; j++) {
#pragma HLS UNROLL
                        AB_temp[j] = (DTYPE)AB_block[i][jj * DSIZE + j];
                    }
                    AB_stream.write(AB_temp);
                }
            }
        }
    }
}

// WriteAB: drain AB stream to DRAM, dropping rows past NODES (padding).
static void gemm_write(
    hls::stream<hls::vector<DTYPE, DSIZE>>& AB_stream,
    hls::vector<DTYPE, DSIZE>* H_temp
){
    for (int ib = 0; ib < GEMM_IB_COUNT; ib++) {
        for (int jb = 0; jb < GEMM_JB_COUNT; jb++) {
            for (int i = 0; i < MI; i++) {
                for (int jj = 0; jj < GEMM_AB_VECS_PER_ROW; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> AB_temp = AB_stream.read();
                    if (ib * MI + i < NODES)
                        H_temp[((ib * MI + i) * F_OUT_PAD + jb * MJ) / DSIZE + jj]
                            = AB_temp;
                }
            }
        }
    }
}

// Dataflow wrapper: ReadA || ReadB || Comp || WriteAB, chained by FIFOs.
static void gemm_stage(
    hls::vector<DTYPE, DSIZE>* X,
    hls::vector<DTYPE, DSIZE>* W,
    hls::vector<DTYPE, DSIZE>* H_temp
){
#pragma HLS DATAFLOW
    hls::stream<hls::vector<DTYPE, DSIZE>> A_stream("A_stream");
    hls::stream<hls::vector<DTYPE, DSIZE>> B_stream("B_stream");
    hls::stream<hls::vector<DTYPE, DSIZE>> AB_stream("AB_stream");
#pragma HLS STREAM variable=A_stream  depth=16
#pragma HLS STREAM variable=B_stream  depth=16
#pragma HLS STREAM variable=AB_stream depth=16

    gemm_read_A(X, A_stream);
    gemm_read_B(W, B_stream);
    gemm_compute(A_stream, B_stream, AB_stream);
    gemm_write(AB_stream, H_temp);
}

static void spmm_load_csr(
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    int      nnz_total,
    hls::stream<idx_t>&  row_fifo,
    hls::stream<idx_t>&  col_fifo,
    hls::stream<DTYPE>&  val_fifo
){
    LOAD_ROWS:
    for (int i = 0; i < NODES; i++) {
#pragma HLS PIPELINE II=1
        row_fifo.write(row_length[i]);
    }

    LOAD_NNZ:
    for (int i = 0; i < nnz_total; i++) {
#pragma HLS PIPELINE II=1
        col_fifo.write(colind[i]);
        val_fifo.write(values[i]);
    }
}

static void spmm_compute(
    hls::vector<DTYPE, DSIZE>* H_temp,
    hls::stream<idx_t>&  row_fifo,
    hls::stream<idx_t>&  col_fifo,
    hls::stream<DTYPE>&  val_fifo,
    hls::stream<DTYPE>&  result_fifo
){
    acc32_t acc[F_OUT_PAD_SPMM];
    DTYPE   h_buf[F_OUT_PAD_SPMM];
#pragma HLS ARRAY_PARTITION variable=acc   cyclic factor=UF
#pragma HLS ARRAY_PARTITION variable=h_buf cyclic factor=UF

    SPMM_ROW:
    for (int i = 0; i < NODES; i++) {

        idx_t rl = row_fifo.read();

        SPMM_INIT:
        for (int f = 0; f < F_OUT_PAD_SPMM; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
            acc[f] = 0;
        }

        SPMM_NNZ:
        for (idx_t jj = 0; jj < rl; jj++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=168 avg=4

            idx_t col = col_fifo.read();
            DTYPE val = val_fifo.read();

            // Load H_temp row for this neighbor (8 vectors vs 45 in design2)
            SPMM_LOAD_H:
            for (int v = 0; v < F_OUT_VECS; v++) {
#pragma HLS PIPELINE II=1
                hls::vector<DTYPE, DSIZE> h_vec = H_temp[col * F_OUT_VECS + v];
                for (int d = 0; d < DSIZE; d++) {
#pragma HLS UNROLL
                    h_buf[v * DSIZE + d] = h_vec[d];
                }
            }

            SPMM_MAC:
            for (int f = 0; f < F_OUT_PAD_SPMM; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
                acc[f] += (acc32_t)val * (acc32_t)h_buf[f];
            }
        }

        // Write F_OUT features to result FIFO
        SPMM_WRITE:
        for (int f = 0; f < F_OUT; f++) {
#pragma HLS PIPELINE II=1
            result_fifo.write((DTYPE)acc[f]);
        }
    }
}

// Store SpMM result to external memory as vectors (F_OUT is DSIZE-aligned)
static void spmm_store(
    hls::vector<DTYPE, DSIZE>* H_out,
    hls::stream<DTYPE>& result_fifo
){
    hls::vector<DTYPE, DSIZE> out_vec;

    SPMM_STORE_ROW:
    for (int i = 0; i < NODES; i++) {
        SPMM_STORE_FEAT:
        for (int f = 0; f < F_OUT; f++) {
#pragma HLS PIPELINE II=1
            int v = f / DSIZE;
            int d = f % DSIZE;
            out_vec[d] = result_fifo.read();
            if (d == DSIZE - 1)
                H_out[i * F_OUT_VECS + v] = out_vec;
        }
    }
}

// SpMM top-level with dataflow
static void spmm_stage(
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    hls::vector<DTYPE, DSIZE>* H_temp,
    int      nnz_total,
    hls::vector<DTYPE, DSIZE>* H_out
){
#pragma HLS DATAFLOW

    hls::stream<idx_t>  row_fifo("row_fifo");
    hls::stream<idx_t>  col_fifo("col_fifo");
    hls::stream<DTYPE>  val_fifo("val_fifo");
    hls::stream<DTYPE>  result_fifo("result_fifo");

#pragma HLS STREAM variable=row_fifo    depth=16
#pragma HLS STREAM variable=col_fifo    depth=256
#pragma HLS STREAM variable=val_fifo    depth=256
#pragma HLS STREAM variable=result_fifo depth=32

    spmm_load_csr(row_length, colind, values, nnz_total,
                  row_fifo, col_fifo, val_fifo);

    spmm_compute(H_temp, row_fifo, col_fifo, val_fifo, result_fifo);

    spmm_store(H_out, result_fifo);
}

// ================================================================
//  TOP-LEVEL: GCN Layer  —  A * (X * W)
// ================================================================

void design3_gcn(
    hls::vector<DTYPE, DSIZE>* X,
    hls::vector<DTYPE, DSIZE>* W,
    hls::vector<DTYPE, DSIZE>* H_temp,
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    int      nnz_total,
    hls::vector<DTYPE, DSIZE>* H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=W
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=row_length
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem5 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem6 port=H_out

    // Stage 1: GEMM  (X * W → H_temp)
    gemm_stage(X, W, H_temp);

    // Stage 2: SpMM  (A * H_temp → H_out)
    spmm_stage(row_length, colind, values, H_temp, nnz_total, H_out);
}
