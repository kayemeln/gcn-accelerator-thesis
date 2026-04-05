#include "design2_gcn.h"

void design2_gcn(
	DTYPE* A,
	hls::vector<DTYPE, DSIZE>* X,
	hls::vector<DTYPE, DSIZE>* W,
	hls::vector<DTYPE, DSIZE>* H_temp,
	hls::vector<DTYPE, DSIZE>* H_out
){
#pragma HLS INTERFACE mode=m_axi bundle=gmem0 port=A
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 port=X
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 port=W
#pragma HLS INTERFACE mode=m_axi bundle=gmem3 port=H_temp
#pragma HLS INTERFACE mode=m_axi bundle=gmem4 port=H_out

	// Stage 1: H_temp = A * X
	// A is (NODES_PAD x NODES_PAD), X is (NODES_PAD x F_IN_PAD)
	// H_temp is (NODES_PAD x F_IN_PAD)
	// block_gemm_kernel(A, X, H_temp, NODES_PAD, NODES_PAD, F_IN_PAD);
	// Replace this ^^ with spmm_kernel
	spmm_kernel(A, X, H_temp);

	// Stage 2: H_out = H_temp * W
	// H_temp is (NODES_PAD x F_IN_PAD), W is (F_IN_PAD x F_OUT_PAD)
	// H_out is (NODES_PAD x F_OUT_PAD)
	// H_temp is vectorised but gemm_kernel expects DTYPE* for A —
	// reinterpret since the memory layout is identical
	block_gemm_kernel((DTYPE*)H_temp, W, H_out, NODES_PAD, F_IN_PAD, F_OUT_PAD);
}
