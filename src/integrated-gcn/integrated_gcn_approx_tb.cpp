// integrated_gcn_approx_tb.cpp
//
// Testbench for the approximate-multiply GCN layer: H_out = A * (X * W)
// Uses ap_fixed<8,6> data type with gate-level approximate multipliers.
//
// Input files:
//   A_rowptr.bin   -- int32[NODES+1]
//   A_colind.bin   -- int32[NNZ]
//   A_values.bin   -- float32[NNZ]
//   X.bin          -- float32[NODES x F_IN]
//   W1.bin         -- float32[F_IN x F_OUT]
//   H1.bin         -- float32[NODES x F_OUT]  (golden reference)
//
#include "integrated_gcn_approx.h"
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
            int rows, int cols, float tol = 5.0f) {
    int errors = 0;
    float max_err = 0;
    float mse = 0;
    float frobenius_dut = 0;
    float frobenius_ref = 0;
    float frobenius_diff = 0;
    int total = rows * cols;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            float dut_val = dut[i * cols + j];
            float ref_val = ref[i * cols + j];
            float err = fabs(dut_val - ref_val);
            mse += err * err;
            frobenius_dut  += dut_val * dut_val;
            frobenius_ref  += ref_val * ref_val;
            frobenius_diff += err * err;
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
    std::cout << "Max error:       " << max_err << std::endl;
    std::cout << "MSE:             " << mse << std::endl;
    std::cout << "RMSE:            " << sqrtf(mse) << std::endl;
    std::cout << "Frobenius(diff): " << sqrtf(frobenius_diff) << std::endl;
    std::cout << "Frobenius(ref):  " << sqrtf(frobenius_ref) << std::endl;
    std::cout << "Relative Frob:   " << sqrtf(frobenius_diff) / sqrtf(frobenius_ref) << std::endl;
    std::cout << "Errors (>" << tol << "): " << errors << " / " << total << std::endl;
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

    // --- Layer 1 ---
    const char* X_file   = "/X.bin";
    const char* W_file   = "/W1.bin";
    const char* ref_file = "/H1.bin";
    const char* out_file = "/H_out_approx.bin";

    // --- Layer 2 ---
    // const char* X_file   = "/H1_bn_relu.bin";
    // const char* W_file   = "/W2.bin";
    // const char* ref_file = "/H2.bin";
    // const char* out_file = "/H_out_approx_layer2.bin";

    if (!load_bin((std::string(data_dir) + X_file).c_str(),
                  X_f32, NODES * F_IN)) return 1;
    if (!load_bin((std::string(data_dir) + W_file).c_str(),
                  W_f32, F_IN * F_OUT)) return 1;
    if (!load_bin((std::string(data_dir) + ref_file).c_str(),
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

    // X: transposed + vectorised to [F_IN_PAD_GEMM x NODES_PAD].
    const int X_vec_count = (F_IN_PAD_GEMM * NODES_PAD) / DSIZE;
    hls::vector<DTYPE, DSIZE>* X_d = new hls::vector<DTYPE, DSIZE>[X_vec_count]();
    for (int i = 0; i < NODES; i++) {
        for (int f = 0; f < F_IN; f++) {
            int lin = f * NODES_PAD + i;
            X_d[lin / DSIZE][lin % DSIZE] = (DTYPE)X_f32[i * F_IN + f];
        }
    }

    // W: pack into hls::vector [F_IN_PAD_GEMM x F_OUT_PAD / DSIZE]
    const int W_vecs_per_row = F_OUT_PAD / DSIZE;
    const int W_vec_count = F_IN_PAD_GEMM * W_vecs_per_row;
    hls::vector<DTYPE, DSIZE>* W_vec = new hls::vector<DTYPE, DSIZE>[W_vec_count]();
    for (int i = 0; i < F_IN; i++) {
        for (int j = 0; j < F_OUT; j++) {
            int v = j / DSIZE;
            int d = j % DSIZE;
            W_vec[i * W_vecs_per_row + v][d] = (DTYPE)W_f32[i * F_OUT + j];
        }
    }

    // H_temp: vectorised intermediate [NODES x F_OUT_VECS]
    const int H_temp_vec_count = NODES * F_OUT_VECS;
    hls::vector<DTYPE, DSIZE>* H_temp_vec = new hls::vector<DTYPE, DSIZE>[H_temp_vec_count]();

    // H_out: vectorised output [NODES x F_OUT_VECS]
    const int H_out_vec_count = NODES * F_OUT_VECS;
    hls::vector<DTYPE, DSIZE>* H_out_vec = new hls::vector<DTYPE, DSIZE>[H_out_vec_count]();

    // ----------------------------------------------------------
    // 4. Run DUT
    // ----------------------------------------------------------
    std::cout << "\nRunning integrated_gcn_approx (A*(X*W), 8-bit approx)..." << std::endl;
    std::cout << "  DTYPE:  ap_fixed<8,6>" << std::endl;
    std::cout << "  DSIZE:  " << DSIZE << std::endl;
    std::cout << "  GEMM:   X(" << NODES << "x" << F_IN
              << ") * W(" << F_IN << "x" << F_OUT << ")" << std::endl;
    std::cout << "  SpMM:   A(" << NODES << "x" << NODES << ") * H_temp("
              << NODES << "x" << F_OUT << ")" << std::endl;

    integrated_gcn_approx(X_d, W_vec, H_temp_vec,
                          row_length, colind_d, values_d, nnz,
                          H_out_vec);

    // ----------------------------------------------------------
    // 5. Unpack and compare
    // ----------------------------------------------------------
    float* H_out_f = new float[NODES * F_OUT];
    for (int i = 0; i < NODES; i++) {
        for (int j = 0; j < F_OUT; j++) {
            int v = j / DSIZE;
            int d = j % DSIZE;
            H_out_f[i * F_OUT + j] = (float)H_out_vec[i * F_OUT_VECS + v][d];
        }
    }

    // Write H_out to binary file for downstream comparison
    {
        std::string out_path = std::string(data_dir) + out_file;
        std::ofstream fout(out_path, std::ios::binary);
        if (!fout) {
            std::cerr << "ERROR: cannot open " << out_path << " for writing" << std::endl;
        } else {
            fout.write(reinterpret_cast<char*>(H_out_f), NODES * F_OUT * sizeof(float));
            std::cout << "Wrote H_out to " << out_path << std::endl;
        }
    }

    int errors = compare("GCN Layer (approx): A*(X*W)", H_out_f, H1_ref, NODES, F_OUT);

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
    delete[] X_d;
    delete[] W_vec;
    delete[] H_temp_vec;
    delete[] H_out_vec;
    delete[] H_out_f;

    return (errors == 0) ? 0 : 1;
}
