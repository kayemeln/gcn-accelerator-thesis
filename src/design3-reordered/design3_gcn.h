// design3_gcn.h
// Computation order: A * (X * W)
// GEMM first (reduces feature dim), then SpMM on smaller features
#ifndef DESIGN3_GCN_H
#define DESIGN3_GCN_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

// ---------- Data types ----------
typedef ap_fixed<16, 4>  DTYPE;      // range [-8, +8)
typedef ap_fixed<32, 8>  acc32_t;    // wider accumulator
typedef int              idx_t;

// ---------- Graph / layer dimensions ----------
#define NODES    2708
#define F_IN     1433
#define F_OUT    64 // changed from 256 for testing

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
#define DSIZE    32

// ---------- GEMM parameters (X * W, done first) ----------
#define M              64   // Block/tile size
// Pad F_IN to multiple of M: ceil(1433/64)*64 = 1472
#define F_IN_PAD_GEMM  1472
// Pad NODES (rows of X) to multiple of M: ceil(2708/64)*64 = 2752.
// Needed because X is now stored transposed + vectorised, so the row
// dimension must be a multiple of M (and DSIZE) for aligned wide reads.
#define NODES_PAD      2752
// F_OUT = 256 = 4*M, no padding needed
#define F_OUT_PAD      64

// ---------- SpMM parameters (A * H_temp, done second) ----------
// SpMM now operates on F_OUT features (256) instead of F_IN (1433)
#define F_OUT_PAD_SPMM 64   // ceil(256/32)*32 = 256, already aligned
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)  // 8
#define UF             32    // Unroll factor for SpMM MAC

// ---------- Top-level function ----------
void design3_gcn(
    // GEMM inputs
    hls::vector<DTYPE, DSIZE>* X,            // X^T, vectorised: [F_IN_PAD_GEMM x NODES_PAD / DSIZE]
    hls::vector<DTYPE, DSIZE>* W,            // [F_IN_PAD_GEMM x F_OUT_PAD / DSIZE]
    hls::vector<DTYPE, DSIZE>* H_temp,       // [NODES x F_OUT_VECS] intermediate
    // SpMM inputs (CSR)
    idx_t*   row_length,                     // [NODES]
    idx_t*   colind,                         // [NNZ]
    DTYPE*   values,                         // [NNZ]
    int      nnz_total,
    // Output
    hls::vector<DTYPE, DSIZE>* H_out         // [NODES x F_OUT_VECS]
);

#endif
