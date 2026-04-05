// design2_spmm_baseline.cpp
//
// Naive CSR-based SpMM: H_out = A * X
// Row-wise traversal with basic inner-loop pipelining.
// No streaming dataflow, no vectorisation.
//
#include "design2_spmm.h"

void design2_spmm_baseline(
    idx_t*   rowptr,
    idx_t*   colind,
    DTYPE* values,
    DTYPE* X,
    DTYPE* H_out,
    int      nnz
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=rowptr
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=colind
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=values
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

    acc32_t acc[F_IN];

    SPMM_ROW:
    for (int i = 0; i < NODES; i++) {

        SPMM_INIT:
        for (int f = 0; f < F_IN; f++) {
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
            for (int f = 0; f < F_IN; f++) {
                acc[f] += (acc32_t)val * (acc32_t)X[col * F_IN + f];
            }
        }

        SPMM_WRITE:
        for (int f = 0; f < F_IN; f++) {
            H_out[i * F_IN + f] = (DTYPE)acc[f];
        }
    }
}
