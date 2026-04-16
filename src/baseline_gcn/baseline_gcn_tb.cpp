#include "baseline_gcn.h"
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

// Load a float32 .bin file (row-major, rows x cols) into a flat DTYPE array.
bool load_bin(const char* filename, DTYPE* dst, int rows, int cols) {
	float* buf = new float[rows * cols];
	if (!load_bin_float(filename, buf, rows * cols)) {
		delete[] buf;
		return false;
	}
	for (int i = 0; i < rows * cols; i++)
		dst[i] = (DTYPE)buf[i];
	delete[] buf;
	return true;
}

int main(int argc, char* argv[]) {
	// Change data directory between original and sparsified datasets
	const char* data_dir = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin";

	// Float arrays for reference computation
	float* A_f      = new float[NODES * NODES];
	float* X_f      = new float[NODES * F_IN];
	float* W_f      = new float[F_IN * F_OUT];
	float* Hout_ref = new float[NODES * F_OUT]();

	// Fixed-point arrays for DUT
	DTYPE* A_d      = new DTYPE[NODES * NODES]();
	DTYPE* X_d      = new DTYPE[NODES * F_IN]();
	DTYPE* W_d      = new DTYPE[F_IN * F_OUT]();
	DTYPE* H_temp   = new DTYPE[NODES * F_IN]();
	DTYPE* H_out    = new DTYPE[NODES * F_OUT]();

	// Build file paths
	// Uncomment ONE layer (must match baseline_gcn.h config)

	// --- Layer 1 ---
	// const char* X_file   = "/X.bin";
	// const char* W_file   = "/W1.bin";
	// const char* ref_file = "/H1.bin";
	// const char* out_file = "/H_out_baseline.bin";

	// --- Layer 2 ---
	const char* X_file   = "/H1_bn_relu.bin";
	const char* W_file   = "/W2.bin";
	const char* ref_file = "/H2.bin";
	const char* out_file = "/H_out_baseline_layer2.bin";

	std::string A_path  = std::string(data_dir) + "/A_dense.bin";
	std::string X_path  = std::string(data_dir) + X_file;
	std::string W_path  = std::string(data_dir) + W_file;
	std::string H1_path = std::string(data_dir) + ref_file;

	// Load float data
	if (!load_bin_float(A_path.c_str(), A_f, NODES * NODES) ||
	    !load_bin_float(X_path.c_str(), X_f, NODES * F_IN)  ||
	    !load_bin_float(W_path.c_str(), W_f, F_IN  * F_OUT)) {
		std::cerr << "Failed to load input data" << std::endl;
		return 1;
	}

	// Load fixed-point data for DUT
	if (!load_bin(A_path.c_str(), A_d, NODES, NODES) ||
	    !load_bin(X_path.c_str(), X_d, NODES, F_IN)  ||
	    !load_bin(W_path.c_str(), W_d, F_IN,  F_OUT)) {
		std::cerr << "Failed to load fixed-point data" << std::endl;
		return 1;
	}

	// Load golden reference output
	if (!load_bin_float(H1_path.c_str(), Hout_ref, NODES * F_OUT)) {
		std::cerr << "Failed to load reference output" << std::endl;
		return 1;
	}

	// Run DUT
	std::cout << "Running baseline_gcn kernel..." << std::endl;
	baseline_gcn(A_d, X_d, W_d, H_temp, H_out);

	// Convert H_out to float and write to binary file for downstream analysis
	float* H_out_f = new float[NODES * F_OUT];
	for (int i = 0; i < NODES * F_OUT; i++)
		H_out_f[i] = (float)H_out[i];

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

	// Compare H_out against golden reference
	int errors = 0;
	float max_err = 0;
	float mse = 0;
	int total = NODES * F_OUT;

	for (int i = 0; i < NODES; i++) {
		for (int j = 0; j < F_OUT; j++) {
			float dut_val = (float)H_out[i * F_OUT + j];
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
	std::cout << "Baseline GCN: H_out = (A * X) * W" << std::endl;
	std::cout << "A: " << NODES << "x" << NODES << std::endl;
	std::cout << "X: " << NODES << "x" << F_IN  << std::endl;
	std::cout << "W: " << F_IN  << "x" << F_OUT  << std::endl;
	std::cout << "Max error: " << max_err << std::endl;
	std::cout << "Errors (>1.0): " << errors << " / " << total << std::endl;
	std::cout << "MSE: " << mse << std::endl;

	if (errors == 0) {
		std::cout << "TEST PASSED" << std::endl;
	} else {
		std::cout << "TEST FAILED" << std::endl;
	}

	delete[] A_f;
	delete[] X_f;
	delete[] W_f;
	delete[] Hout_ref;
	delete[] A_d;
	delete[] X_d;
	delete[] W_d;
	delete[] H_temp;
	delete[] H_out;
	delete[] H_out_f;

	return (errors == 0) ? 0 : 1;
}
