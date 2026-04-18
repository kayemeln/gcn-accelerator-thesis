"""
Evaluate classification accuracy of the HLS GCN output (layer 2).

Reads:
    H_out_layer2.bin  -- float32[NODES x NUM_CLASSES]  (raw logits from HLS)
    Cora dataset      -- for ground-truth labels and test mask

Prints:
    Overall and test-set accuracy, matching the evaluation in gcn_cora.py.
"""

import numpy as np
import torch
from torch_geometric.datasets import Planetoid
import os

NODES = 2708
NUM_CLASSES = 7

DATA_DIR = "/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/src/cora_scripts/cora_bin_sparse"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

# Load HLS output (raw logits)
h_out = np.fromfile(os.path.join(DATA_DIR, "H_out_integrated_layer2.bin"), dtype=np.float32)
h_out = h_out.reshape(NODES, NUM_CLASSES)
print(f"Loaded H_out_layer2.bin: shape={h_out.shape}, range=[{h_out.min():.4f}, {h_out.max():.4f}]")

# Load Cora dataset for labels and masks
dataset = Planetoid(root=os.path.join(SCRIPT_DIR, "Cora"), name="Cora")
data = dataset[0]

labels = data.y.numpy()
pred = np.argmax(h_out, axis=1)

# Test-set accuracy (same as gcn_cora.py)
test_mask = data.test_mask.numpy()
test_correct = np.sum(pred[test_mask] == labels[test_mask])
test_total = np.sum(test_mask)
test_acc = test_correct / test_total

# Train and val for completeness
train_mask = data.train_mask.numpy()
val_mask = data.val_mask.numpy()
train_acc = np.sum(pred[train_mask] == labels[train_mask]) / np.sum(train_mask)
val_acc = np.sum(pred[val_mask] == labels[val_mask]) / np.sum(val_mask)

overall_acc = np.sum(pred == labels) / len(labels)

print(f"-----------------------------")
print(f"HLS GCN Accuracy Evaluation")
print(f"  Train accuracy: {train_acc:.4f} ({np.sum(pred[train_mask] == labels[train_mask])}/{np.sum(train_mask)})")
print(f"  Val   accuracy: {val_acc:.4f} ({np.sum(pred[val_mask] == labels[val_mask])}/{np.sum(val_mask)})")
print(f"  Test  accuracy: {test_acc:.4f} ({test_correct}/{test_total})")
print(f"  Overall accuracy: {overall_acc:.4f} ({np.sum(pred == labels)}/{len(labels)})")
print(f"-----------------------------")
