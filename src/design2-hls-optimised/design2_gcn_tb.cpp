// design2_gcn_tb.cpp
//
// Testbench for the integrated GCN layer: H_out = ReLU((A * X) * W)
//
// Input files:
//   A_rowptr.bin   -- int32[NODES+1]
//   A_colind.bin   -- int32[NNZ]
//   A_values.bin   -- float32[NNZ]
//   X.bin          -- float32[NODES x F_IN]
//   W1.bin         -- float32[F_IN x F_OUT]
//   H1.bin         -- float32[NODES x F_OUT]  (golden: ReLU((A*X)*W))
//
#include "design2_gcn.h"
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <string>

// ----------------------------------------------------------------
// Utility: load binary file
// ----------------------------------------------------------------
template<typename T>
bool load_bin(const char* filename, T* dst, int count) {
    std::ifstream fin(filename, std::ios::binary);
    if (!fin) {
        std::cerr << "ERROR: cannot open " << filename << std::endl;
        return false;
    }
    fin.read(reinterpret_cast<char*>(dst), count * sizeof(T));
    if (!fin) {
        std::cerr << "ERROR: failed to read " << count
                  << " elements from " << filename << std::endl;
        return false;
    }
    fin.close();
    return true;
}

// ----------------------------------------------------------------
// Compare DUT output against golden reference
// ----------------------------------------------------------------
int compare(const char* label, float* dut, float* ref,
            int rows, int cols, float tol = 1.0f) {
    int errors = 0;
    float max_err = 0;
    float mse = 0;
    int total = rows * cols;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            float dut_val = dut[i * cols + j];
            float ref_val = ref[i * cols + j];
            float err = fabs(dut_val - ref_val);
            mse += err * err;
            if (err > max_err) max_err = err;
            if (err > tol) {
                if (errors < 20) {
                    std::cout << "  MISMATCH at (" << i << "," << j << "): "
                              << "DUT=" << dut_val
                              << " REF=" << ref_val
                              << " ERR=" << err << std::endl;
                }
                errors++;
            }
        }
    }
    mse /= (float)total;

    std::cout << "-----------------------------" << std::endl;
    std::cout << label << std::endl;
    std::cout << "Max error: " << max_err << std::endl;
    std::cout << "Errors (>" << tol << "): " << errors << " / " << total << std::endl;
    std::cout << "MSE: " << mse << std::endl;
    std::cout << (errors == 0 ? "TEST PASSED" : "TEST FAILED") << std::endl;
    std::cout << "-----------------------------" << std::endl;

    return errors;
}

int main(int argc, char* argv[]) {
    const char* data_dir = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin";

    // ----------------------------------------------------------
    // 1. Load CSR arrays
    // ----------------------------------------------------------
    int* rowptr_i32 = new int[NODES + 1];
    if (!load_bin((std::string(data_dir) + "/A_rowptr.bin").c_str(),
                  rowptr_i32, NODES + 1)) return 1;

    int nnz = rowptr_i32[NODES];
    std::cout << "NNZ = " << nnz << std::endl;

    int*   colind_i32 = new int[nnz];
    float* values_f32 = new float[nnz];
    if (!load_bin((std::string(data_dir) + "/A_colind.bin").c_str(),
                  colind_i32, nnz)) return 1;
    if (!load_bin((std::string(data_dir) + "/A_values.bin").c_str(),
                  values_f32, nnz)) return 1;

    // ----------------------------------------------------------
    // 2. Load X, W, and golden reference
    // ----------------------------------------------------------
    float* X_f32   = new float[NODES * F_IN];
    float* W_f32   = new float[F_IN * F_OUT];
    float* H1_ref  = new float[NODES * F_OUT];

    if (!load_bin((std::string(data_dir) + "/X.bin").c_str(),
                  X_f32, NODES * F_IN)) return 1;
    if (!load_bin((std::string(data_dir) + "/W1.bin").c_str(),
                  W_f32, F_IN * F_OUT)) return 1;
    if (!load_bin((std::string(data_dir) + "/H1.bin").c_str(),
                  H1_ref, NODES * F_OUT)) return 1;

    // ----------------------------------------------------------
    // 3. Convert to fixed-point / packed formats
    // ----------------------------------------------------------

    // CSR arrays
    idx_t* row_length = new idx_t[NODES];
    idx_t* colind_d   = new idx_t[nnz];
    DTYPE* values_d   = new DTYPE[nnz];

    for (int i = 0; i < NODES; i++)
        row_length[i] = (idx_t)(rowptr_i32[i + 1] - rowptr_i32[i]);
    for (int i = 0; i < nnz; i++) {
        colind_d[i] = (idx_t)colind_i32[i];
        values_d[i] = (DTYPE)values_f32[i];
    }

    // X: pack into hls::vector [NODES x F_IN_VECS]
    const int X_vec_count = NODES * F_IN_VECS;
    hls::vector<DTYPE, DSIZE>* X_vec = new hls::vector<DTYPE, DSIZE>[X_vec_count]();
    for (int i = 0; i < NODES; i++) {
        for (int f = 0; f < F_IN; f++) {
            int v = f / DSIZE;
            int d = f % DSIZE;
            X_vec[i * F_IN_VECS + v][d] = (DTYPE)X_f32[i * F_IN + f];
        }
    }

    // W: pack into hls::vector [F_IN_PAD_GEMM x F_OUT_PAD / DSIZE]
    const int W_vecs_per_row = F_OUT_PAD / DSIZE;  // 256/32 = 8
    const int W_vec_count = F_IN_PAD_GEMM * W_vecs_per_row;
    hls::vector<DTYPE, DSIZE>* W_vec = new hls::vector<DTYPE, DSIZE>[W_vec_count]();
    for (int i = 0; i < F_IN; i++) {
        for (int j = 0; j < F_OUT; j++) {
            int v = j / DSIZE;
            int d = j % DSIZE;
            W_vec[i * W_vecs_per_row + v][d] = (DTYPE)W_f32[i * F_OUT + j];
        }
    }
    // Rows F_IN..F_IN_PAD_GEMM-1 are zero (padding), already from ()

    // H_out: [NODES x F_OUT_PAD / DSIZE]
    const int H_vecs_per_row = F_OUT_PAD / DSIZE;  // 8
    const int H_vec_count = NODES * H_vecs_per_row;
    hls::vector<DTYPE, DSIZE>* H_out_vec = new hls::vector<DTYPE, DSIZE>[H_vec_count]();

    DTYPE* H_temp = new DTYPE[NODES * F_IN_PAD_GEMM]();

    // ----------------------------------------------------------
    // 4. Run DUT
    // ----------------------------------------------------------
    std::cout << "\nRunning design2_gcn..." << std::endl;
    std::cout << "  SpMM: A(" << NODES << "x" << NODES << ") * X("
              << NODES << "x" << F_IN << ")" << std::endl;
    std::cout << "  GEMM: H_temp(" << NODES << "x" << F_IN
              << ") * W(" << F_IN << "x" << F_OUT << ")" << std::endl;

    design2_gcn(row_length, colind_d, values_d, X_vec, nnz,
                H_temp, W_vec, H_out_vec);

    // ----------------------------------------------------------
    // 5. Unpack and compare
    // ----------------------------------------------------------
    float* H_out_f = new float[NODES * F_OUT];
    for (int i = 0; i < NODES; i++) {
        for (int j = 0; j < F_OUT; j++) {
            int v = j / DSIZE;
            int d = j % DSIZE;
            H_out_f[i * F_OUT + j] = (float)H_out_vec[i * H_vecs_per_row + v][d];
        }
    }

    int errors = compare("GCN Layer: (A*X)*W", H_out_f, H1_ref, NODES, F_OUT);

    // ----------------------------------------------------------
    // Cleanup
    // ----------------------------------------------------------
    delete[] rowptr_i32;
    delete[] colind_i32;
    delete[] values_f32;
    delete[] X_f32;
    delete[] W_f32;
    delete[] H1_ref;
    delete[] row_length;
    delete[] colind_d;
    delete[] values_d;
    delete[] X_vec;
    delete[] W_vec;
    delete[] H_temp;
    delete[] H_out_vec;
    delete[] H_out_f;

    return (errors == 0) ? 0 : 1;
}
