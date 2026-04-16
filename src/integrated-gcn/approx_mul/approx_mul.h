// approx_mul.h
// Approximate 8-bit signed multiplier wrappers for Vitis HLS.
// Uses gate-level multipliers from EvoApproxLib (ehw.fit.vutbr.cz/approxlib).
//
// Select a multiplier variant by defining APPROX_MUL_VARIANT before including:
//   0 = mul8s_1KV8  (MAE% = 0.0018, most accurate,  0.422 mW, 711.0 um2)
//   1 = mul8s_1L2J  (MAE% = 0.081,  mid-range,      0.301 mW, 558.9 um2)
//   2 = mul8s_1L2N  (MAE% = 0.52,   lowest pwr/area, 0.126 mW, 284.9 um2)
//
// NOTE: The .c files are #included directly so HLS can inline the gate-level
// logic into the datapath. This header must only be included from a single
// translation unit to avoid multiple-definition errors at link time.

#ifndef APPROX_MUL_H
#define APPROX_MUL_H

#include "ap_fixed.h"
#include "ap_int.h"

#ifndef APPROX_MUL_VARIANT
#define APPROX_MUL_VARIANT 0
#endif

// ---------- Gate-level multiplier implementations ----------
// Included as source so HLS can elaborate the combinational logic.
#include "mul8s_1KV8.c"
#include "mul8s_1L2J.c"
#include "mul8s_1L2N.c"

// ---------- Fixed-point types for the multiply interface ----------
// ap_fixed<8,6>  input:  6 integer bits, 2 fractional  (range [-32, 31.75])
// ap_fixed<16,12> output: product of two <8,6> values has 4 fractional bits
typedef ap_fixed<8, 3, AP_RND, AP_SAT>   approx_operand_t;
typedef ap_fixed<16, 6> approx_product_t;

// ---------- Individual multiplier wrappers ----------

// mul8s_1KV8: signed interface (int8_t -> int16_t), MAE% = 0.0018
static approx_product_t approx_mul_1KV8(approx_operand_t a, approx_operand_t b) {
#pragma HLS INLINE
    ap_int<8> bits_a, bits_b;
    bits_a.range(7, 0) = a.range(7, 0);
    bits_b.range(7, 0) = b.range(7, 0);
    int16_t rp = mul8s_1KV8((int8_t)bits_a.to_int(), (int8_t)bits_b.to_int());
    approx_product_t result;
    result.range(15, 0) = rp;
    return result;
}

// mul8s_1L2J: unsigned interface (uint8_t -> uint16_t), signed multiply, MAE% = 0.081
static approx_product_t approx_mul_1L2J(approx_operand_t a, approx_operand_t b) {
#pragma HLS INLINE
    ap_uint<8> bits_a, bits_b;
    bits_a.range(7, 0) = a.range(7, 0);
    bits_b.range(7, 0) = b.range(7, 0);
    uint16_t rp = mul8s_1L2J((uint8_t)bits_a.to_uint(), (uint8_t)bits_b.to_uint());
    approx_product_t result;
    result.range(15, 0) = (int16_t)rp;
    return result;
}

// mul8s_1L2N: unsigned interface (uint8_t -> uint16_t), signed multiply, MAE% = 0.52
static approx_product_t approx_mul_1L2N(approx_operand_t a, approx_operand_t b) {
#pragma HLS INLINE
    ap_uint<8> bits_a, bits_b;
    bits_a.range(7, 0) = a.range(7, 0);
    bits_b.range(7, 0) = b.range(7, 0);
    uint16_t rp = mul8s_1L2N((uint8_t)bits_a.to_uint(), (uint8_t)bits_b.to_uint());
    approx_product_t result;
    result.range(15, 0) = (int16_t)rp;
    return result;
}

// ---------- Generic dispatch based on APPROX_MUL_VARIANT ----------

static approx_product_t approx_mul(approx_operand_t a, approx_operand_t b) {
#pragma HLS INLINE
#if APPROX_MUL_VARIANT == 0
    return approx_mul_1KV8(a, b);
#elif APPROX_MUL_VARIANT == 1
    return approx_mul_1L2J(a, b);
#elif APPROX_MUL_VARIANT == 2
    return approx_mul_1L2N(a, b);
#else
#error "APPROX_MUL_VARIANT must be 0, 1, or 2"
#endif
}

#endif // APPROX_MUL_H
