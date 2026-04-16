// gemm_stage.h
// Standalone GEMM kernel: H_temp = X * W
// Extracted from integrated_gcn for independent synthesis
#ifndef GEMM_STAGE_H
#define GEMM_STAGE_H

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
#define F_IN_PAD_GEMM  1472  // ceil(1433/64)*64

// --- Layer 2: H_bn_relu(2708x64) * W(64x7) ---
// #define NODES    2708
// #define F_IN     64
// #define F_OUT    7
// #define F_IN_PAD_GEMM  64   // ceil(64/64)*64

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
const int DSIZE = 64/sizeof(DTYPE);

// ---------- GEMM parameters ----------
#define MI             64
#define MJ             64
#define MK             64
#define UI             4
#define NODES_PAD      2752
#define F_OUT_PAD      64

// ---------- SpMM-derived constants (needed for H_temp layout) ----------
#define F_OUT_PAD_SPMM 64
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)

// ---------- Top-level function ----------
void gemm_stage(
    hls::vector<DTYPE, DSIZE>* X,       // X^T, vectorised: [F_IN_PAD_GEMM x NODES_PAD / DSIZE]
    hls::vector<DTYPE, DSIZE>* W,       // [F_IN_PAD_GEMM x F_OUT_PAD / DSIZE]
    hls::vector<DTYPE, DSIZE>* H_temp   // [NODES x F_OUT_VECS] intermediate output
);

#endif
