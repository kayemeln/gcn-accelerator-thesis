# thesis-gcn-accelerator

FPGA-based Graph Convolutional Network (GCN) accelerator developed as part of
my MAI thesis (Trinity College Dublin). The project targets Xilinx Vitis HLS
and evaluates the design on citation / product-graph datasets.

## Overview

A two-layer GCN of the form

```
H1 = ReLU(BN(A_hat @ X @ W1))
Y  = A_hat @ H1 @ W2
```

is mapped to an HLS accelerator that reorders the computation as
`H_out = A_hat * (X * W)` so the GEMM runs first on the wide feature
dimension and the SpMM then operates on the reduced intermediate. The
accelerator uses fixed-point arithmetic (`ap_fixed`) with an output scaling
factor to keep activations within range.

The design supports the following datasets:

- **Amazon Photo** 
- **Cora** 

Both datasets can optionally be sparsified using
[DSpar](https://github.com/zirui-ray-liu/DSpar_tmlr) before being fed to the
accelerator.

## Repository layout

```
src/
  photo_scripts/         Python: train/export weights + binaries for Amazon Photo
  cora_scripts/          Python: same flow for Cora
  integrated_gcn_photo/  HLS sources + testbench for the Photo design
  integrated-gcn/        HLS sources for the Cora design
  baseline_gcn/          Reference/baseline HLS implementation
vitis/integrated_gcn/    Vitis project files
results/                 Synthesis / accuracy results
```

## Setup

From the repo root:

```bash
python3.12 -m venv venv
source venv/bin/activate
./install.sh
```

`install.sh` will clone DSpar into `./DSpar_tmlr/` if it isn't already
present.

`install.sh` installs everything in `requirements.txt`, applies
`patches/dspar-seed-epsilon.patch` to the `DSpar_tmlr/` checkout (adds the
`seed` and `epsilon` arguments this project relies on), then installs DSpar
in editable mode with `--no-build-isolation` so its `setup.py` can see the
venv's torch. DSpar stays editable — further changes propagate without
reinstalling.

## Running the Python flow

### Amazon Photo

```bash
cd src/photo_scripts
python gcn_photo.py [-s] [--seed 42] [--epsilon 0.35]   # train + save gcn_weights[_sparse].pt
python photo.py     [-s] [--seed 42] [--epsilon 0.35]   # export .bin files for the HLS testbench
```

Between HLS layers, run:

```bash
python batchnorm_relu.py   # consumes H_out_integrated.bin, writes H1_bn_relu.bin
```

### Cora

```bash
cd src/cora_scripts
python gcn_cora.py [-s] [--seed 42] [--epsilon 0.5]
python cora.py     [-s] [--seed 42] [--epsilon 0.5]
```

### CLI flags

| Flag         | Meaning                                           |
|--------------|---------------------------------------------------|
| `-s`         | Enable DSpar sparsification                       |
| `--seed`     | Seed for sparsification sampling (default 42)     |
| `--epsilon`  | DSpar epsilon parameter                           |

## Running the HLS testbench

Open the HLS project in Vitis HLS and run C simulation. The testbench
(`src/integrated_gcn_photo/integrated_gcn_photo_tb.cpp`) loads the `.bin`
files produced by the Python flow, runs the DUT, compares against the golden
`H1.bin` / `H2.bin`, and writes `H_out_integrated*.bin` for downstream
Python-side post-processing.

## Notes

- The Layer 1 golden reference (`H1.bin`) is pre-scaled by `H_OUT_SCALE` in
  `photo.py` so it matches the DUT's quantised output; `batchnorm_relu.py`
  dequantises before applying batch-norm.
- Layer 2 is currently unquantised, so `H2.bin` is not scaled.
