// baseline_gcn.cpp
#include "baseline_gcn.h"

void baseline_gcn(
    DTYPE* A,
    DTYPE* X,
    DTYPE* W,
    DTYPE* H_temp,
    DTYPE* H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=A
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=W
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

    // Stage 1: H_temp = A * X
    for (int i = 0; i < NODES; i++)
        for (int j = 0; j < F_IN; j++) {
            DTYPE sum = 0;
            for (int k = 0; k < NODES; k++)
                sum += A[i * NODES + k] * X[k * F_IN + j];
            H_temp[i * F_IN + j] = sum;
        }

    // Stage 2: H_out = H_temp * W
    for (int i = 0; i < NODES; i++)
        for (int j = 0; j < F_OUT; j++) {
            DTYPE sum = 0;
            for (int k = 0; k < F_IN; k++)
                sum += H_temp[i * F_IN + k] * W[k * F_OUT + j];
            H_out[i * F_OUT + j] = sum;
        }
}
