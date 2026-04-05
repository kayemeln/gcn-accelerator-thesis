// design2_spmm_tb.cpp
//
// Testbench for design2_spmm_baseline and design2_spmm.
//
// Reads CSR arrays from binary files:
//   A_rowptr.bin   -- int32[NODES+1]
//   A_colind.bin   -- int32[NNZ]
//   A_values.bin   -- float32[NNZ]
//   X.bin          -- float32[NODES x F_IN]
//   H_AX.bin       -- float32[NODES x F_IN]  (golden reference: A*X)
//
#include "design2_spmm.h"
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <string>
#include <vector>

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
// Compare output against golden reference
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
    const char* data_dir = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin_sparse"; 

    // ----------------------------------------------------------
    // 1. Load CSR arrays
    // ----------------------------------------------------------
    int* rowptr_i32 = new int[NODES + 1];
    std::string rp_path = std::string(data_dir) + "/A_rowptr.bin";
    if (!load_bin(rp_path.c_str(), rowptr_i32, NODES + 1)) return 1;

    int nnz = rowptr_i32[NODES];
    std::cout << "NNZ = " << nnz << std::endl;

    int*   colind_i32 = new int[nnz];
    float* values_f32 = new float[nnz];

    std::string ci_path = std::string(data_dir) + "/A_colind.bin";
    std::string vl_path = std::string(data_dir) + "/A_values.bin";
    if (!load_bin(ci_path.c_str(), colind_i32, nnz)) return 1;
    if (!load_bin(vl_path.c_str(), values_f32, nnz)) return 1;

    // ----------------------------------------------------------
    // 2. Load X and golden reference
    // ----------------------------------------------------------
    float* X_f32   = new float[NODES * F_IN];
    float* HAX_ref = new float[NODES * F_IN];

    std::string x_path   = std::string(data_dir) + "/X.bin";
    std::string hax_path = std::string(data_dir) + "/H_AX.bin";
    if (!load_bin(x_path.c_str(), X_f32, NODES * F_IN))   return 1;
    if (!load_bin(hax_path.c_str(), HAX_ref, NODES * F_IN)) return 1;

    // ----------------------------------------------------------
    // 3. Convert to fixed-point
    // ----------------------------------------------------------

    // --- Common CSR arrays ---
    idx_t*   rowptr_d  = new idx_t[NODES + 1];
    idx_t*   colind_d  = new idx_t[nnz];
    DTYPE* values_d  = new DTYPE[nnz];

    for (int i = 0; i <= NODES; i++)
        rowptr_d[i] = (idx_t)rowptr_i32[i];
    for (int i = 0; i < nnz; i++) {
        colind_d[i] = (idx_t)colind_i32[i];
        values_d[i] = (DTYPE)values_f32[i];
    }

    // --- Baseline: scalar X and H_out ---
    DTYPE* X_scalar    = new DTYPE[NODES * F_IN];
    DTYPE* H_out_bl    = new DTYPE[NODES * F_IN]();

    for (int i = 0; i < NODES * F_IN; i++)
        X_scalar[i] = (DTYPE)X_f32[i];

    // --- Optimised: vectorised X and H_out ---
    // MCSR row_length
    idx_t* row_length = new idx_t[NODES];
    for (int i = 0; i < NODES; i++)
        row_length[i] = rowptr_i32[i + 1] - rowptr_i32[i];

    // Pack X into hls::vector layout [NODES x F_IN_VECS]
    const int X_vec_count = NODES * F_IN_VECS;
    hls::vector<DTYPE, DSIZE>* X_vec = new hls::vector<DTYPE, DSIZE>[X_vec_count]();

    for (int i = 0; i < NODES; i++) {
        for (int f = 0; f < F_IN; f++) {
            int v = f / DSIZE;
            int d = f % DSIZE;
            X_vec[i * F_IN_VECS + v][d] = (DTYPE)X_f32[i * F_IN + f];
        }
        // Padding elements (F_IN..F_IN_PAD-1) are already zero from ()
    }

    const int H_vec_count = NODES * F_IN_VECS;
    hls::vector<DTYPE, DSIZE>* H_out_vec = new hls::vector<DTYPE, DSIZE>[H_vec_count]();

    // ----------------------------------------------------------
    // 4. Run baseline SpMM
    // ----------------------------------------------------------
    std::cout << "\nRunning design2_spmm_baseline..." << std::endl;
    design2_spmm_baseline(rowptr_d, colind_d, values_d, X_scalar, H_out_bl, nnz);

    // Convert baseline output to float for comparison
    float* H_out_bl_f = new float[NODES * F_IN];
    for (int i = 0; i < NODES * F_IN; i++)
        H_out_bl_f[i] = (float)H_out_bl[i];

    int err_bl = compare("Baseline SpMM (CSR, naive)", H_out_bl_f, HAX_ref, NODES, F_IN);

    // ----------------------------------------------------------
    // 5. Run optimised SpMM
    // ----------------------------------------------------------
    std::cout << "\nRunning design2_spmm (streaming, vectorised)..." << std::endl;
    design2_spmm(row_length, colind_d, values_d, X_vec, H_out_vec, nnz);

    // Unpack vectorised output to float for comparison
    float* H_out_fs_f = new float[NODES * F_IN];
    for (int i = 0; i < NODES; i++) {
        for (int f = 0; f < F_IN; f++) {
            int v = f / DSIZE;
            int d = f % DSIZE;
            H_out_fs_f[i * F_IN + f] = (float)H_out_vec[i * F_IN_VECS + v][d];
        }
    }

    int err_fs = compare("Streaming SpMM (MCSR, vectorised)", H_out_fs_f, HAX_ref, NODES, F_IN);

    // ----------------------------------------------------------
    // Cleanup
    // ----------------------------------------------------------
    delete[] rowptr_i32;
    delete[] colind_i32;
    delete[] values_f32;
    delete[] X_f32;
    delete[] HAX_ref;
    delete[] rowptr_d;
    delete[] colind_d;
    delete[] values_d;
    delete[] X_scalar;
    delete[] H_out_bl;
    delete[] H_out_bl_f;
    delete[] row_length;
    delete[] X_vec;
    delete[] H_out_vec;
    delete[] H_out_fs_f;

    return (err_bl == 0 && err_fs == 0) ? 0 : 1;
}
