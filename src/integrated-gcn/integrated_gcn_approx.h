// integrated_gcn_approx.h
// Approximate-multiply variant of the GCN accelerator.
// Uses ap_fixed<8,6> data type with gate-level approximate multipliers.
// Computation order: A * (X * W)
#ifndef INTEGRATED_GCN_APPROX_H
#define INTEGRATED_GCN_APPROX_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

// ---------- Data types (8-bit approximate) ----------
typedef ap_fixed<8, 3, AP_RND, AP_SAT>   DTYPE;      // range [-32, +31.75], 2 fractional bits
typedef ap_fixed<16, 6> acc32_t;    // wide accumulator: 28 int bits, 4 frac bits
                                     // (4 frac bits match the 8x8 product precision;
                                     //  28 int bits cover worst-case accumulation of
                                     //  ~1472 products in the GEMM stage)
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

// ---------- Vectorisation (512-bit AXI / 8-bit = 64 elements) ----------
const int DSIZE = 64/sizeof(DTYPE);

// ---------- GEMM parameters (X * W, done first) ----------
#define MI             64   // rows per tile (i axis, NODES dim)
#define MJ             64   // cols per tile (j axis, F_OUT dim) -- must equal F_OUT_PAD
#define MK             64   // shared per tile (k axis, F_IN dim)
#define UI             4    // i-loop unroll: each cycle issues UI*MJ MACs
#define NODES_PAD      2752 // ceil(2708/64)*64
#define F_OUT_PAD      64

// ---------- SpMM parameters (A * H_temp, done second) ----------
#define F_OUT_PAD_SPMM 64   // ceil(F_OUT/DSIZE)*DSIZE, already aligned
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)  // 1 (was 2 with 16-bit DTYPE)
#define UF             32   // Unroll factor for SpMM MAC

// ---------- Top-level function ----------
void integrated_gcn_approx(
    // GEMM inputs
    hls::vector<DTYPE, DSIZE>* X,            // X^T, vectorised
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
