#include "design2_gemm.h"
#include "design2_spmm.h"

// Cora dataset dimensions (real)
#define NODES 2708
#define F_IN  1433
#define F_OUT 256

// Padded dimensions (next multiple of M)
#define NODES_PAD (((NODES + M - 1) / M) * M)  // 2816
#define F_IN_PAD  (((F_IN  + M - 1) / M) * M)  // 1536
#define F_OUT_PAD (((F_OUT + M - 1) / M) * M)   // 256

void design2_gcn(
	DTYPE* A,                            // Adjacency     [NODES_PAD x NODES_PAD]
	hls::vector<DTYPE, DSIZE>* X,        // Node features [NODES_PAD x F_IN_PAD]  (vectorised)
	hls::vector<DTYPE, DSIZE>* W,        // Weights       [F_IN_PAD  x F_OUT_PAD] (vectorised)
	hls::vector<DTYPE, DSIZE>* H_temp,   // Intermediate  [NODES_PAD x F_IN_PAD]  (vectorised)
	hls::vector<DTYPE, DSIZE>* H_out     // Output        [NODES_PAD x F_OUT_PAD] (vectorised)
);

