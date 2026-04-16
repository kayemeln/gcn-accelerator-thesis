// naive_spmm_stage.cpp
// Naive CSR-based SpMM: H_out = A * H_temp
// Row-wise traversal with basic inner-loop pipelining.
// No streaming dataflow, no vectorisation.

#include "naive_spmm_stage.h"

void naive_spmm_stage(
    idx_t*   rowptr,
    idx_t*   colind,
    DTYPE*   values,
    DTYPE*   H_temp,
    DTYPE*   H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=rowptr
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

    acc32_t acc[F_OUT];
    SPMM_ROW:
    for (int i = 0; i < NODES; i++) {
        SPMM_INIT:
        for (int f = 0; f < F_OUT; f++) {
            acc[f] = 0;
        }
        idx_t row_start = rowptr[i];
        idx_t row_end   = rowptr[i + 1];
        SPMM_NNZ:
        for (idx_t jj = row_start; jj < row_end; jj++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=168 avg=4
            idx_t   col = colind[jj];
            DTYPE val = values[jj];
            SPMM_FEAT:
            for (int f = 0; f < F_OUT; f++) {
                acc[f] += (acc32_t)val * (acc32_t)H_temp[col * F_OUT + f];
            }
        }
        SPMM_WRITE:
        for (int f = 0; f < F_OUT; f++) {
            H_out[i * F_OUT + f] = (DTYPE)acc[f];
        }
    }
}
