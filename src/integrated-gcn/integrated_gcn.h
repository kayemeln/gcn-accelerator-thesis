// design3_gcn.h
// Computation order: A * (X * W)
// GEMM first (reduces feature dim), then SpMM on smaller features
#ifndef INTEGRATED_GCN_H
#define INTEGRATED_GCN_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

// ---------- Data types ----------
typedef ap_fixed<16, 6, AP_RND, AP_SAT>  DTYPE;      // range [-8, +8)
typedef ap_fixed<32, 12>  acc32_t;    // wider accumulator
typedef int              idx_t;

// ---------- Graph / layer dimensions ----------
// Uncomment ONE layer configuration:

// --- Layer 1: X(2708x1433) * W(1433x64) ---
#define NODES    2708
#define F_IN     1433
#define F_OUT    64
#define F_IN_PAD_GEMM  1472  // ceil(1433/64)*64

// --- Layer 2: H_bn_relu(2708x64) * W(64x7) ---
//#define NODES    2708
//#define F_IN     64
//#define F_OUT    7
//#define F_IN_PAD_GEMM  64   // ceil(64/64)*64

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
const int DSIZE = 64/sizeof(DTYPE);

// ---------- GEMM parameters (X * W, done first) ----------
// Decoupled tile dims. MJ is pinned to F_OUT so the fully-unrolled j loop
// never wastes MACs on padding; MI/MK are free to grow for data reuse.
#define MI             64   // rows per tile (i axis, NODES dim)
#define MJ             64   // cols per tile (j axis, F_OUT dim) — must equal F_OUT_PAD
#define MK             64   // shared per tile (k axis, F_IN dim)
// Unroll factor for the i loop in the MAC kernel. Each pipelined cycle
// issues UI * MJ parallel multiplies — with UI=4, MJ=64 that's 256 DSPs.
#define UI             4
// Pad NODES (rows of X) to multiple of MI: ceil(2708/64)*64 = 2752.
// Needed because X is stored transposed + vectorised, so the row
// dimension must be a multiple of MI (and DSIZE) for aligned wide reads.
#define NODES_PAD      2752
#define F_OUT_PAD      64

// ---------- SpMM parameters (A * H_temp, done second) ----------
// SpMM now operates on F_OUT features instead of F_IN
#define F_OUT_PAD_SPMM 64   // ceil(F_OUT/32)*32, already aligned for both layers
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)  // 2
#define UF             32    // Unroll factor for SpMM MAC

// ---------- Top-level function ----------
void integrated_gcn(
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
