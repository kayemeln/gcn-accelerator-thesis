// design2_spmm.cpp
//
// Streaming CSR-based SpMM: H_out = A * X
//
// Three-stage dataflow pipeline:
//   1. load_csr:  burst-read MCSR arrays from DRAM into FIFOs
//   2. compute:   for each NNZ, vector-load X[col] into BRAM, MAC into accumulator
//   3. store:     write completed rows back to DRAM
//
// X is stored as hls::vector<fix16_t, 32> so each AXI beat fetches
// 32 × 16-bit = 512 bits. Loading one X row takes F_IN_VECS = 45 beats
// instead of 1433 scalar reads.
//
// Uses MCSR format (row_length[] instead of rowptr[]).
//
#include "design2_spmm.h"

#define nnz_total 13264

// ----------------------------------------------------------------
// Input stage: burst-read CSR arrays from DRAM into FIFOs
// ----------------------------------------------------------------
static void load_csr(
    idx_t*   row_length,
    idx_t*   colind,
    fix16_t* values,
//    int      nnz_total,
    hls::stream<idx_t>&   row_fifo,
    hls::stream<idx_t>&   col_fifo,
    hls::stream<fix16_t>& val_fifo
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

// ----------------------------------------------------------------
// Compute stage
//
// For each row:
//   - Zero accumulator
//   - For each NNZ: vector-load X[col] row, MAC across features
//   - Write result to output FIFO
//
// The X load loop iterates F_IN_VECS = 45 times, each reading a
// 512-bit vector (32 elements). The MAC loop iterates F_IN_PAD/UF
// = 180 times with UF=8 parallel MACs.
// ----------------------------------------------------------------
static void compute_spmm(
    hls::vector<fix16_t, VSIZE>* X,
    //int      nnz_total,
    hls::stream<idx_t>&   row_fifo,
    hls::stream<idx_t>&   col_fifo,
    hls::stream<fix16_t>& val_fifo,
    hls::stream<fix16_t>& result_fifo
){
    // On-chip buffers
    acc32_t acc[F_IN_PAD];
    fix16_t x_buf[F_IN_PAD];
#pragma HLS ARRAY_PARTITION variable=acc   cyclic factor=UF
#pragma HLS ARRAY_PARTITION variable=x_buf cyclic factor=UF

    COMPUTE_ROW:
    for (int i = 0; i < NODES; i++) {

        idx_t rl = row_fifo.read();

        // Zero the accumulator
        COMPUTE_INIT:
        for (int f = 0; f < F_IN_PAD; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
            acc[f] = 0;
        }

        // Process each non-zero in this row
        COMPUTE_NNZ:
        for (idx_t jj = 0; jj < rl; jj++) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=86 avg=3

            idx_t   col = col_fifo.read();
            fix16_t val = val_fifo.read();

            // Vector-load X[col] row: 45 beats × 32 elements = 1440
            COMPUTE_LOAD_X:
            for (int v = 0; v < F_IN_VECS; v++) {
#pragma HLS PIPELINE II=1
                hls::vector<fix16_t, VSIZE> x_vec = X[col * F_IN_VECS + v];
                for (int d = 0; d < VSIZE; d++) {
#pragma HLS UNROLL
                    x_buf[v * VSIZE + d] = x_vec[d];
                }
            }

            // MAC: acc[f] += val * x_buf[f]
            COMPUTE_MAC:
            for (int f = 0; f < F_IN_PAD; f++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=UF
                acc[f] += (acc32_t)val * (acc32_t)x_buf[f];
            }
        }

        // Write result row to output FIFO (only real features)
        COMPUTE_WRITE:
        for (int f = 0; f < F_IN; f++) {
#pragma HLS PIPELINE II=1
            result_fifo.write((fix16_t)acc[f]);
        }
    }
}

// ----------------------------------------------------------------
// Output stage: write results back to DRAM as vectors
// ----------------------------------------------------------------
static void store_result(
    hls::vector<fix16_t, VSIZE>* H_out,
    hls::stream<fix16_t>& result_fifo
){
    fix16_t row_buf[F_IN_PAD];
#pragma HLS ARRAY_PARTITION variable=row_buf cyclic factor=VSIZE

    STORE_ROWS:
    for (int i = 0; i < NODES; i++) {
        // Read scalars from FIFO one at a time
        STORE_READ:
        for (int f = 0; f < F_IN; f++) {
#pragma HLS PIPELINE II=1
            row_buf[f] = result_fifo.read();
        }
        // Zero padding
        for (int f = F_IN; f < F_IN_PAD; f++)
            row_buf[f] = 0;

        // Pack and write vectors
        STORE_WRITE:
        for (int v = 0; v < F_IN_VECS; v++) {
#pragma HLS PIPELINE II=1
            hls::vector<fix16_t, VSIZE> out_vec;
            for (int d = 0; d < VSIZE; d++) {
#pragma HLS UNROLL
                out_vec[d] = row_buf[v * VSIZE + d];
            }
            H_out[i * F_IN_VECS + v] = out_vec;
        }
    }
}

// ----------------------------------------------------------------
// Top-level function
// ----------------------------------------------------------------
void design2_spmm(
    idx_t*   row_length,
    idx_t*   colind,
    fix16_t* values,
    hls::vector<fix16_t, VSIZE>* X,
    hls::vector<fix16_t, VSIZE>* H_out//,
//    int      nnz_total
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=row_length
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

#pragma HLS DATAFLOW

    hls::stream<idx_t>   row_fifo("row_fifo");
    hls::stream<idx_t>   col_fifo("col_fifo");
    hls::stream<fix16_t> val_fifo("val_fifo");
    hls::stream<fix16_t> result_fifo("result_fifo");

#pragma HLS STREAM variable=row_fifo    depth=64
#pragma HLS STREAM variable=col_fifo    depth=256
#pragma HLS STREAM variable=val_fifo    depth=256
#pragma HLS STREAM variable=result_fifo depth=2048

    load_csr(row_length, colind, values,
             row_fifo, col_fifo, val_fifo);

    compute_spmm(X,
                 row_fifo, col_fifo, val_fifo,
                 result_fifo);

    store_result(H_out, result_fifo);
}