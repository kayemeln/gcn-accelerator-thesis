// naive_spmm_stage.h
// Naive CSR-based SpMM kernel: H_out = A * H_temp
// No streaming dataflow, no vectorisation.
#ifndef NAIVE_SPMM_STAGE_H
#define NAIVE_SPMM_STAGE_H

#include "ap_fixed.h"

// ---------- Data types ----------
typedef ap_fixed<16, 6>  DTYPE;
typedef ap_fixed<32, 12> acc32_t;
typedef int              idx_t;

// ---------- Graph / layer dimensions ----------
// Uncomment ONE layer configuration:

// --- Layer 1: X(2708x1433) * W(1433x64) ---
#define NODES    2708
#define F_IN     1433
#define F_OUT    64

// --- Layer 2: H_bn_relu(2708x64) * W(64x7) ---
// #define NODES    2708
// #define F_IN     64
// #define F_OUT    7

// ---------- Top-level function ----------
void naive_spmm_stage(
    idx_t*   rowptr,      // [NODES+1]
    idx_t*   colind,      // [NNZ]
    DTYPE*   values,      // [NNZ]
    DTYPE*   H_temp,      // [NODES x F_OUT] input (flat, not vectorised)
    DTYPE*   H_out        // [NODES x F_OUT] output (flat, not vectorised)
);

#endif
