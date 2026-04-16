// spmm_stage.h
// Standalone SpMM kernel: H_out = A * H_temp
// Extracted from integrated_gcn for independent synthesis
#ifndef SPMM_STAGE_H
#define SPMM_STAGE_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

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

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
const int DSIZE = 64/sizeof(DTYPE);

// ---------- SpMM parameters ----------
#define F_OUT_PAD_SPMM 64   // ceil(F_OUT/32)*32
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)
#define UF             32

// ---------- Top-level function ----------
void spmm_stage(
    idx_t*   row_length,                     // [NODES]
    idx_t*   colind,                         // [NNZ]
    DTYPE*   values,                         // [NNZ]
    hls::vector<DTYPE, DSIZE>* H_temp,       // [NODES x F_OUT_VECS] input
    int      nnz_total,
    hls::vector<DTYPE, DSIZE>* H_out         // [NODES x F_OUT_VECS] output
);

#endif
