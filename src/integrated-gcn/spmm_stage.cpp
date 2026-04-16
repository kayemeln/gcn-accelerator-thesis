// spmm_stage.cpp
// Standalone SpMM kernel: H_out = A * H_temp
// Extracted from integrated_gcn for independent synthesis

#include "spmm_stage.h"

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

        SPMM_WRITE:
        for (int f = 0; f < F_OUT; f++) {
#pragma HLS PIPELINE II=1
            result_fifo.write((DTYPE)acc[f]);
        }
    }
}

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
            if (d == DSIZE - 1 || f == F_OUT - 1)
                H_out[i * F_OUT_VECS + v] = out_vec;
        }
    }
}

// Top-level: LoadCSR || Compute || Store, chained by FIFOs.
void spmm_stage(
    idx_t*   row_length,
    idx_t*   colind,
    DTYPE*   values,
    hls::vector<DTYPE, DSIZE>* H_temp,
    int      nnz_total,
    hls::vector<DTYPE, DSIZE>* H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=row_length
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

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
