#include "design2_gemm.h"
#include "hls_vector.h"

// #define rows 2816    // rows of A (2708)
// #define shared 1536         // shared dimension (1433)
// #define cols 256     // cols of B (256)

void block_gemm_kernel(
    DTYPE* A,
    hls::vector<DTYPE, DSIZE> *B,
    hls::vector<DTYPE, DSIZE> *AB,
    int rows,   // padded, multiple of M
    int shared,        // padded, multiple of M
    int cols    // padded, multiple of M
){
#pragma HLS INTERFACE mode=m_axi bundle=m0 port=A
#pragma HLS INTERFACE mode=m_axi bundle=m1 port=B // might not need to be stored in external memory
#pragma HLS INTERFACE mode=m_axi bundle=m2 port=AB

    DTYPE AB_block[M][M];
    DTYPE B_line[M];
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=AB_block
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B_line

    int ib_count = rows / M;
    int kb_count = shared / M;
    int jb_count = cols / M;

	ib_loop:
    for (int ib = 0; ib < ib_count; ib++) {
		jb_loop:
        for (int jb = 0; jb < jb_count; jb++) {
            // Init block
			init_block:
            for (int i = 0; i < M; i++)
                for (int j = 0; j < M; j++)
                    AB_block[i][j] = 0;
			kb_loop:
            for (int kb = 0; kb < kb_count; kb++) {
				k_loop:
                for (int k = 0; k < M; k++) {
                    // Load B tile row
                    load_b_line:
                    for (int jj = 0; jj < M/DSIZE; jj++){
#pragma HLS PIPELINE II=1
                        hls::vector<DTYPE, DSIZE> B_temp
                                                = B[((kb*M + k) * cols + jb*M)/DSIZE + jj];
                        for (int j = 0; j < DSIZE; j++){
#pragma HLS UNROLL
                            B_line[jj*DSIZE + j] = B_temp[j];
                        }
                    }
					// load_b_line:
                    // for (int j = 0; j < M; j++) {
                    //     B_line[j] = B[(kb*M + k) * cols + jb*M + j];
                    // }
                    // Multiply-accumulate
					i_loop:
                    for (int i = 0; i < M; i++) {
#pragma HLS PIPELINE II=1
                        DTYPE A_temp = A[(ib*M + i) * shared + kb*M + k];  
						j_loop:
                        for (int j = 0; j < M; j++) {
#pragma HLS UNROLL
                            AB_block[i][j] += A_temp * B_line[j];
                        }
                    }
                }
            }

            // Write result tile
            write_ab:
            for (int i = 0; i < M; i++) {
                for (int jj = 0; jj < M/DSIZE; jj++) {
#pragma HLS PIPELINE II=1
                    hls::vector<DTYPE, DSIZE> AB_temp;
                    for (int j = 0; j < DSIZE; j++){
#pragma HLS UNROLL
                        AB_temp[j] = AB_block[i][jj*DSIZE + j];
                    }
                    AB[((ib*M + i) * cols + jb*M)/DSIZE + jj] = AB_temp;
                }
            }
			// write_ab:
            // for (int i = 0; i < M; i++) {
            //     for (int j = 0; j < M; j++) {
            //         AB[(ib*M + i) * cols + jb*M + j] = AB_block[i][j];
            //     }
            // }
        }
    }
}
