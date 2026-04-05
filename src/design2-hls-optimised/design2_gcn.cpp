// design2_gcn.cpp
//
// Integrated GCN layer: H_out = ReLU((A * X) * W)
//
// Stage 1: SpMM  -- H_temp = A * X   (sparse × dense, streaming CSR)
// Stage 2: GEMM  -- H_out  = H_temp * W (dense × dense, tiled block MM)
//
// H_temp is stored in external memory as scalar DTYPE with stride F_IN_PAD_GEMM
// so that the GEMM kernel can tile over it with block size M=256.
//
#include "design2_gcn.h"

// ================================================================
//  STAGE 1: SpMM  (streaming CSR-based, vectorised X load)
// ================================================================

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
    hls::vector<DTYPE, DSIZE>* X,
    hls::stream<idx_t>&  row_fifo,
    hls::stream<idx_t>&  col_fifo,
    hls::stream<DTYPE>&  val_fifo,
    hls::stream<DTYPE>&  result_fifo
){
    acc32_t acc[F_IN_PAD_SPMM];
    DTYPE   x_buf[F_IN_PAD_SPMM];
#pragma HLS ARRAY_PARTITION variable=acc   cyclic factor=UF
#pragma HLS ARRAY_PARTITION variable=x_buf cyclic factor=UF

    SPMM_ROW:
    for (int i = 0; i < NODES; i++) {

        idx_t rl = row_fifo.read();

        SPMM_INIT:
        for (int f = 0; f < F_IN_PAD_SPMM; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
            acc[f] = 0;
        }

        SPMM_NNZ:
        for (idx_t jj = 0; jj < rl; jj++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=168 avg=4

            idx_t col = col_fifo.read();
            DTYPE val = val_fifo.read();

            SPMM_LOAD_X:
            for (int v = 0; v < F_IN_VECS; v++) {
#pragma HLS PIPELINE II=1
                hls::vector<DTYPE, DSIZE> x_vec = X[col * F_IN_VECS + v];
                for (int d = 0; d < DSIZE; d++) {
#pragma HLS UNROLL
                    x_buf[v * DSIZE + d] = x_vec[d];
                }
            }

            SPMM_MAC:
            for (int f = 0; f < F_IN_PAD_SPMM; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
                acc[f] += (acc32_t)val * (acc32_t)x_buf[f];
            }
        }

        // Write F_IN real features to result FIFO
        SPMM_WRITE:
        for (int f = 0; f < F_IN; f++) {
#pragma HLS PIPELINE II=1
            result_fifo.write((DTYPE)acc[f]);
        }
    }
}

// Store SpMM result to external memory as scalar with GEMM-compatible stride
static void spmm_store(
    DTYPE* H_temp,
    hls::stream<DTYPE>& result_fifo
){
    SPMM_STORE_ROW:
    for (int i = 0; i < NODES; i++) {
        SPMM_STORE_FEAT:
        for (int f = 0; f < F_IN; f++) {
#pragma HLS PIPELINE II=1
            H_temp[i * F_IN_PAD_GEMM + f] = result_fifo.read();
        }
        // Zero-fill padding columns for GEMM tiling
        SPMM_STORE_PAD:
        for (int f = F_IN; f < F_IN_PAD_GEMM; f++) {
#pragma HLS PIPELINE II=1
            H_temp[i * F_IN_PAD_GEMM + f] = (DTYPE)0;
        }
    }
}

// SpMM top-level with dataflow
static void spmm_stage(
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    hls::vector<DTYPE, DSIZE>* X,
    int      nnz_total,
    DTYPE*   H_temp
){
#pragma HLS DATAFLOW

    hls::stream<idx_t>  row_fifo("row_fifo");
    hls::stream<idx_t>  col_fifo("col_fifo");
    hls::stream<DTYPE>  val_fifo("val_fifo");
    hls::stream<DTYPE>  result_fifo("result_fifo");

#pragma HLS STREAM variable=row_fifo    depth=64
#pragma HLS STREAM variable=col_fifo    depth=256
#pragma HLS STREAM variable=val_fifo    depth=256
#pragma HLS STREAM variable=result_fifo depth=2048

    spmm_load_csr(row_length, colind, values, nnz_total,
                  row_fifo, col_fifo, val_fifo);

    spmm_compute(X, row_fifo, col_fifo, val_fifo, result_fifo);

    spmm_store(H_temp, result_fifo);
}

// ================================================================
//  STAGE 2: GEMM  (tiled block matrix multiply)
//  H_out = H_temp * W
//  H_temp: [NODES x F_IN_PAD_GEMM] scalar, A-side
//  W:      [F_IN_PAD_GEMM x F_OUT_PAD] vectorised, B-side
//  H_out:  [NODES x F_OUT_PAD] vectorised
// ================================================================

static void gemm_stage(
    DTYPE* H_temp,
    hls::vector<DTYPE, DSIZE>* W,
    hls::vector<DTYPE, DSIZE>* H_out
){
    acc32_t AB_block[M][M]; // changed to accumulation type due to errors
    DTYPE B_line[M];
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=AB_block
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B_line

    // Padded dimensions for tiling
    const int rows   = ((NODES + M - 1) / M) * M;    // 2816
    const int shared = F_IN_PAD_GEMM;                 // 1536
    const int cols   = F_OUT_PAD;                     // 256

    int ib_count = rows / M;      // 11
    int kb_count = shared / M;    // 6
    int jb_count = cols / M;      // 1

    GEMM_IB:
    for (int ib = 0; ib < ib_count; ib++) {
        GEMM_JB:
        for (int jb = 0; jb < jb_count; jb++) {

            // Init block
            GEMM_INIT:
            for (int i = 0; i < M; i++)
                for (int j = 0; j < M; j++)
                    AB_block[i][j] = 0;

            GEMM_KB:
            for (int kb = 0; kb < kb_count; kb++) {
                GEMM_K:
                for (int k = 0; k < M; k++) {

                    // Load W tile row (vectorised)
                    GEMM_LOAD_B:
                    for (int jj = 0; jj < M / DSIZE; jj++) {
#pragma HLS PIPELINE II=1
                        hls::vector<DTYPE, DSIZE> B_temp
                            = W[((kb * M + k) * cols + jb * M) / DSIZE + jj];
                        for (int j = 0; j < DSIZE; j++) {
#pragma HLS UNROLL
                            B_line[jj * DSIZE + j] = B_temp[j];
                        }
                    }

                    // MAC across rows
                    GEMM_I:
                    for (int i = 0; i < M; i++) {
#pragma HLS PIPELINE II=1
                        DTYPE A_temp = H_temp[(ib * M + i) * shared + kb * M + k];
                        GEMM_J:
                        for (int j = 0; j < M; j++) {
#pragma HLS UNROLL
                            AB_block[i][j] += A_temp * B_line[j];
                        }
                    }
                }
            }

            // Write result tile (vectorised) with ReLU
            GEMM_WRITE:
            for (int i = 0; i < M; i++) {
                for (int jj = 0; jj < M / DSIZE; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> AB_temp;
                    for (int j = 0; j < DSIZE; j++) {
#pragma HLS UNROLL
                        DTYPE val = (DTYPE)AB_block[i][jj * DSIZE + j];
                        AB_temp[j] = val; // don't do ReLU!
                    }
                    // Only write if within real node range
                    if (ib * M + i < NODES)
                        H_out[((ib * M + i) * cols + jb * M) / DSIZE + jj] = AB_temp;
                }
            }
        }
    }
}

// ================================================================
//  TOP-LEVEL: GCN Layer
// ================================================================

void design2_gcn(
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    hls::vector<DTYPE, DSIZE>* X,
    int      nnz_total,
	DTYPE* H_temp,
    hls::vector<DTYPE, DSIZE>* W,
    hls::vector<DTYPE, DSIZE>* H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=row_length
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem5 port=W
#pragma HLS INTERFACE mode=m_axi bundle=gmem6 port=H_out


    // Stage 1: SpMM
    spmm_stage(row_length, colind, values, X, nnz_total, H_temp);

    // Stage 2: GEMM + ReLU
    gemm_stage(H_temp, W, H_out);
}