// design2_spmm.h
#ifndef DESIGN2_SPMM_H
#define DESIGN2_SPMM_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "hls_vector.h"

// ---------- Data types ----------
typedef ap_fixed<16, 4>  fix16_t;    // range [-8, +8), avoids overflow
typedef ap_fixed<32, 8>  acc32_t;    // wider accumulator
typedef int              idx_t;

// ---------- Graph / layer dimensions ----------
#define NODES    2708
#define F_IN     1433
#define F_OUT    256

// ---------- Vectorisation ----------
// 512-bit AXI bus / 16-bit data = 32 elements per beat
#define VSIZE    32
// Pad F_IN to next multiple of VSIZE: ceil(1433/32)*32 = 1440
#define F_IN_PAD 1440
// Number of vectors per feature row
#define F_IN_VECS (F_IN_PAD / VSIZE)  // 45

// ---------- CSR dimensions ----------
#define MAX_NNZ  20000

// ---------- Unroll factor for MAC loop ----------
#define UF 32

// ---------- Naive SpMM (CSR, no optimisation) ----------
void design2_spmm_baseline(
    idx_t*   rowptr,     // [NODES+1]
    idx_t*   colind,     // [NNZ]
    fix16_t* values,     // [NNZ]
    fix16_t* X,          // [NODES x F_IN]
    fix16_t* H_out,      // [NODES x F_IN]
    int      nnz
);

// ---------- Optimised SpMM (streaming dataflow, vectorised X) ----------
void design2_spmm(
    idx_t*   row_length,                  // [NODES] -- MCSR format
    idx_t*   colind,                      // [NNZ]
    fix16_t* values,                      // [NNZ]
    hls::vector<fix16_t, VSIZE>* X,       // [NODES x F_IN_VECS]
    hls::vector<fix16_t, VSIZE>* H_out,   // [NODES x F_IN_VECS]
    int      nnz_total
);

#endif
