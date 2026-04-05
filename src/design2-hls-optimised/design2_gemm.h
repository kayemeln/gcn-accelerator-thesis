#ifndef DENSE_MM_H
#define DENSE_MM_H

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_vector.h"

static const int M = 256;
typedef ap_fixed<16, 2> DTYPE;
const int DSIZE = 64/sizeof(DTYPE);

void block_gemm_kernel(
	DTYPE* A,
	hls::vector<DTYPE, DSIZE> *B,
	hls::vector<DTYPE, DSIZE> *AB,
	int rows,
	int shared,
	int columns
);
#endif
