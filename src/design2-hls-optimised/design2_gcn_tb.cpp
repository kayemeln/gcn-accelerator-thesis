#include "naive_gcn.h"
#include "hls_vector.h"
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <string>

// Load count float32 values from a .bin file into a flat float array.
bool load_bin_float(const char* filename, float* dst, int count) {
	std::ifstream fin(filename, std::ios::binary);
	if (!fin) {
		std::cerr << "ERROR: cannot open " << filename << std::endl;
		return false;
	}
	fin.read(reinterpret_cast<char*>(dst), count * sizeof(float));
	if (!fin) {
		std::cerr << "ERROR: failed to read " << count
		          << " floats from " << filename << std::endl;
		return false;
	}
	fin.close();
	return true;
}

// Load a float32 .bin file (row-major, rows x cols) into a zero-padded
// hls::vector<DTYPE,DSIZE> array with padded dimensions (rows_pad x cols_pad).
bool load_bin(const char* filename,
              hls::vector<DTYPE, DSIZE>* dst,
              int rows, int cols,
              int rows_pad, int cols_pad) {
	float* buf = new float[rows * cols];
	if (!load_bin_float(filename, buf, rows * cols)) {
		delete[] buf;
		return false;
	}

	// Zero-fill the destination
	int vec_size = rows_pad * cols_pad / DSIZE;
	for (int v = 0; v < vec_size; v++)
		for (int d = 0; d < DSIZE; d++)
			dst[v][d] = (DTYPE)0;

	// Scatter into the padded, vectorised layout
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			int flat = i * cols_pad + j;
			dst[flat / DSIZE][flat % DSIZE] = (DTYPE)buf[i * cols + j];
		}
	}

	delete[] buf;
	return true;
}

void gemm_ref(float* A, float* B, float* C, int rows, int shared, int cols) {
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			float sum = 0;
			for (int k = 0; k < shared; k++) {
				sum += A[i * shared + k] * B[k * cols + j];
			}
			C[i * cols + j] = sum;
		}
	}
}

int main(int argc, char* argv[]) {
	const char* data_dir = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin";

	// Float arrays (real dimensions, for reference)
	float* A_f      = new float[NODES * NODES];
	float* X_f      = new float[NODES * F_IN];
	float* W_f      = new float[F_IN * F_OUT];
	float* Ht_ref   = new float[NODES * F_IN]();
	float* Hout_ref = new float[NODES * F_OUT]();

	// Fixed-point arrays (padded dimensions, for DUT)
	DTYPE* A_d = new DTYPE[NODES_PAD * NODES_PAD]();

	const int X_vec_size     = NODES_PAD * F_IN_PAD / DSIZE;
	const int W_vec_size     = F_IN_PAD  * F_OUT_PAD / DSIZE;
	const int Ht_vec_size    = NODES_PAD * F_IN_PAD / DSIZE;
	const int Hout_vec_size  = NODES_PAD * F_OUT_PAD / DSIZE;

	hls::vector<DTYPE, DSIZE>* X_d      = new hls::vector<DTYPE, DSIZE>[X_vec_size]();
	hls::vector<DTYPE, DSIZE>* W_d      = new hls::vector<DTYPE, DSIZE>[W_vec_size]();
	hls::vector<DTYPE, DSIZE>* Ht_dut   = new hls::vector<DTYPE, DSIZE>[Ht_vec_size]();
	hls::vector<DTYPE, DSIZE>* Hout_dut = new hls::vector<DTYPE, DSIZE>[Hout_vec_size]();

	// Load data from binary files
	std::string A_path = std::string(data_dir) + "/A_dense.bin";
	std::string X_path = std::string(data_dir) + "/X.bin";
	std::string W_path = std::string(data_dir) + "/W1.bin";

	if (!load_bin_float(A_path.c_str(), A_f, NODES * NODES) ||
	    !load_bin_float(X_path.c_str(), X_f, NODES * F_IN)  ||
	    !load_bin_float(W_path.c_str(), W_f, F_IN  * F_OUT)) {
		std::cerr << "Failed to load input data" << std::endl;
		return 1;
	}

	// Convert A_f to fixed-point (dense, not vectorised)
	for (int i = 0; i < NODES; i++)
		for (int j = 0; j < NODES; j++)
			A_d[i * NODES_PAD + j] = (DTYPE)A_f[i * NODES + j];

	// Load X and W into vectorised fixed-point arrays
	if (!load_bin(X_path.c_str(), X_d, NODES, F_IN, NODES_PAD, F_IN_PAD) ||
	    !load_bin(W_path.c_str(), W_d, F_IN, F_OUT, F_IN_PAD, F_OUT_PAD)) {
		std::cerr << "Failed to load vectorised data" << std::endl;
		return 1;
	}

	// Load golden reference output
	std::string H1_path = std::string(data_dir) + "/H1.bin";
	if (!load_bin_float(H1_path.c_str(), Hout_ref, NODES * F_OUT)) {
		std::cerr << "Failed to load reference output" << std::endl;
		return 1;
	}

	// Run DUT
	std::cout << "Running naive_gcn kernel..." << std::endl;
	naive_gcn(A_d, X_d, W_d, Ht_dut, Hout_dut);

	// Compare H_out (only real, non-padded elements)
	int errors = 0;
	float max_err = 0;
	float mse = 0;
	int total = NODES * F_OUT;

	for (int i = 0; i < NODES; i++) {
		for (int j = 0; j < F_OUT; j++) {
			int flat = i * F_OUT_PAD + j;
			float dut_val = (float)Hout_dut[flat / DSIZE][flat % DSIZE];
			float ref_val = Hout_ref[i * F_OUT + j];
			float err = fabs(dut_val - ref_val);
			mse += err * err;
			if (err > max_err) max_err = err;
			if (err > 1.0) {
				if (errors < 20) {
					std::cout << "MISMATCH at (" << i << "," << j << "): "
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
	std::cout << "Naive GCN: H_out = (A * X) * W" << std::endl;
	std::cout << "A: " << NODES << "x" << NODES
	          << " (padded " << NODES_PAD << "x" << NODES_PAD << ")" << std::endl;
	std::cout << "X: " << NODES << "x" << F_IN
	          << " (padded " << NODES_PAD << "x" << F_IN_PAD << ")" << std::endl;
	std::cout << "W: " << F_IN  << "x" << F_OUT
	          << " (padded " << F_IN_PAD << "x" << F_OUT_PAD << ")" << std::endl;
	std::cout << "Block size M: " << M << std::endl;
	std::cout << "Max error: " << max_err << std::endl;
	std::cout << "Errors: " << errors << " / " << total << std::endl;
	std::cout << "MSE: " << mse << std::endl;

	if (errors == 0) {
		std::cout << "TEST PASSED" << std::endl;
	} else {
		std::cout << "TEST FAILED" << std::endl;
	}

	delete[] A_f;
	delete[] X_f;
	delete[] W_f;
	delete[] Ht_ref;
	delete[] Hout_ref;
	delete[] A_d;
	delete[] X_d;
	delete[] W_d;
	delete[] Ht_dut;
	delete[] Hout_dut;

	return (errors == 0) ? 0 : 1;
}
