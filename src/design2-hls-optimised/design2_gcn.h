// design2_gcn.h
#ifndef DESIGN2_GCN_H
#define DESIGN2_GCN_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

// ---------- Data types ----------
typedef ap_fixed<16, 4>  DTYPE;      // range [-8, +8)
typedef ap_fixed<32, 8>  acc32_t;    // wider accumulator for SpMM
typedef int              idx_t;

// ---------- Graph / layer dimensions ----------
#define NODES    2708
#define F_IN     1433
#define F_OUT    256

// ---------- Vectorisation (512-bit AXI / 16-bit = 32 elements) ----------
#define DSIZE    32

// ---------- SpMM parameters ----------
// Pad F_IN to multiple of DSIZE for vector loads: ceil(1433/32)*32 = 1440
#define F_IN_PAD_SPMM  1440
#define F_IN_VECS      (F_IN_PAD_SPMM / DSIZE)  // 45
#define UF             32  // Unroll factor for SpMM MAC

// ---------- GEMM parameters ----------
#define M          64  // Block/tile size
// Pad F_IN to multiple of M for tiled GEMM: ceil(1433/256)*256 = 1536
#define F_IN_PAD_GEMM  1472
// F_OUT = 256 = M, no padding needed
#define F_OUT_PAD      256

// ---------- Top-level function ----------
void design2_gcn(
    // SpMM inputs (CSR)
    idx_t*   row_length,                   // [NODES]
    idx_t*   colind,                       // [NNZ]
    DTYPE*   values,                       // [NNZ]
    hls::vector<DTYPE, DSIZE>* X,          // [NODES x F_IN_VECS]
    int      nnz_total,
    DTYPE* H_temp,
    // GEMM inputs
    hls::vector<DTYPE, DSIZE>* W,          // [F_IN_PAD_GEMM x F_OUT_PAD / DSIZE]
    // Output
    hls::vector<DTYPE, DSIZE>* H_out       // [NODES x F_OUT_PAD / DSIZE]
);

#endif
