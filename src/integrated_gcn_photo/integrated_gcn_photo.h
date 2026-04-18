// integrated_gcn_photo.h
// Computation order: A * (X * W)
// GEMM first (reduces feature dim), then SpMM on smaller features
// Configured for Amazon Photo dataset (7650 nodes, 745 features, 8 classes)
#ifndef INTEGRATED_GCN_PHOTO_H
#define INTEGRATED_GCN_PHOTO_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"


// ---------- Data types ----------
// --- Layer 1
typedef ap_fixed<8, 3, AP_RND, AP_SAT>  DTYPE;
typedef ap_fixed<16, 6, AP_RND, AP_SAT>  acc32_t;
typedef int              idx_t;
// --- Layer 2
//typedef ap_fixed<16, 10, AP_RND, AP_SAT>  DTYPE;
//typedef ap_fixed<32, 18, AP_RND, AP_SAT>  acc32_t;
//

// Scaling factor
static const acc32_t H_OUT_SCALE = acc32_t(0.0625);

// ---------- Graph / layer dimensions ----------
// Uncomment ONE layer configuration:

// --- Layer 1: X(7650x745) * W(745x64) ---
#define LAYER_2_ACTIVE 0
#define NODES    7650
#define F_IN     745
#define F_OUT    64
#define F_IN_PAD_GEMM  768   // ceil(745/64)*64

// --- Layer 2: H_bn_relu(7650x64) * W(64x8) ---
//#define LAYER_2_ACTIVE 1
//#define NODES    7650
//#define F_IN     64
//#define F_OUT    8
//#define F_IN_PAD_GEMM  64   // ceil(64/64)*64

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
const int DSIZE = 64/sizeof(DTYPE);

// ---------- GEMM parameters (X * W, done first) ----------
#define MI             64   // rows per tile (i axis, NODES dim)
#define MJ             64   // cols per tile (j axis, F_OUT dim) — must equal F_OUT_PAD
#define MK             64   // shared per tile (k axis, F_IN dim)
#define UI             4
// Pad NODES to multiple of MI: ceil(7650/64)*64 = 7680.
#define NODES_PAD      7680
#define F_OUT_PAD      64

// ---------- SpMM parameters (A * H_temp, done second) ----------
#define F_OUT_PAD_SPMM 64   // ceil(F_OUT/32)*32
#define F_OUT_VECS     (F_OUT_PAD_SPMM / DSIZE)  // 2
#define UF             32

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
