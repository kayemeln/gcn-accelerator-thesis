"""
Apply BatchNorm1d + ReLU to the H_out produced by the first GCN layer,
preparing the input for the second GCN layer (A * (H_norm_relu * W2)).

Reads:
    H_out_design3.bin  -- float32[NODES x F_OUT]  (from HLS testbench)
    gcn_weights.pt     -- trained weights including norm.* parameters

Writes:
    H1_bn_relu.bin     -- float32[NODES x F_OUT]  (batch-normed + ReLU'd)
"""

import numpy as np
import torch
import os

NODES = 2708
F_OUT = 64

DATA_DIR = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
WEIGHTS_PATH = os.path.join(SCRIPT_DIR, "gcn_weights.pt")

# Load HLS output
h_out = np.fromfile(os.path.join(DATA_DIR, "H_out_design3.bin"), dtype=np.float32)
h_out = h_out.reshape(NODES, F_OUT)
print(f"Loaded H_out_design3.bin: shape={h_out.shape}, range=[{h_out.min():.4f}, {h_out.max():.4f}]")

# Load batch norm parameters
weights = torch.load(WEIGHTS_PATH, map_location="cpu", weights_only=True)
bn_mean = weights["norm.running_mean"].numpy()
bn_var  = weights["norm.running_var"].numpy()
bn_weight = weights["norm.weight"].numpy()
bn_bias   = weights["norm.bias"].numpy()
eps = 1e-5  # PyTorch BatchNorm1d default

# BatchNorm: y = weight * (x - mean) / sqrt(var + eps) + bias
h_bn = bn_weight * (h_out - bn_mean) / np.sqrt(bn_var + eps) + bn_bias
print(f"After BatchNorm: range=[{h_bn.min():.4f}, {h_bn.max():.4f}]")

# ReLU
h_relu = np.maximum(h_bn, 0.0).astype(np.float32)
print(f"After ReLU: range=[{h_relu.min():.4f}, {h_relu.max():.4f}], "
      f"zeros={np.sum(h_relu == 0)}/{h_relu.size}")

# Write output
out_path = os.path.join(DATA_DIR, "H1_bn_relu.bin")
h_relu.tofile(out_path)
print(f"Wrote {out_path} ({h_relu.size} floats, {h_relu.nbytes} bytes)")
