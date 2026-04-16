# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a graph sparsification library (`dspar`) built on PyTorch Geometric. It implements degree-based and random graph sparsification using effective resistance sampling, with a C++ extension for fast parallel edge sampling via OpenMP.

## Build & Install

The `dspar` package lives in `src/` and includes a C++ extension that must be compiled:

```bash
cd src
pip install -e .
```

This compiles `dspar/cpp_extension/edge_sample.cc` into the `dspar.cpp_extension.sampler` module. Requires PyTorch with C++ extension support and OpenMP (`-fopenmp`).

## Running

```bash
python cora.py
```

This loads the Cora dataset (downloaded into `Cora/`) and applies sparsification.

## Architecture

- **`src/dspar/sparsification.py`** — Core sparsification logic (`maybe_sparsfication`). Computes edge sampling probabilities based on endpoint degrees, samples Q edges via the C++ sampler, and reweights the sparsified graph.
- **`src/dspar/cpp_extension/edge_sample.cc`** — OpenMP-parallelized binary search sampler over cumulative probability distributions. Bound via pybind11.
- **`src/dspar/gatconv.py`** — Custom GAT convolution layers (`CustomGATConv`, `QCustomGATConv`). The quantized variant uses a separate `cpp_extension.quantization` module (not included in this repo).
- **`src/dspar/utils.py`** — GPU memory tracking, tensor byte computation, low-bit integer casting for adjacency storage.
- **`cora.py`** — Entry point for loading/sparsifying the Cora dataset.

## Key Details

- The sparsification seed is hardcoded to 42 for reproducibility.
- `epsilon` controls sparsification aggressiveness: Q = 0.16 * N * ln(N) / epsilon². Lower epsilon = more sampled edges.
- `gatconv.py` imports `dspar.cpp_extension.quantization` which is not present in this repo — the `QCustomGATConv` class and its `__init__.py` import are commented out accordingly.
