"""
Evaluate classification accuracy of the HLS GCN output (layer 2).

Reads:
    H_out_layer2.bin   -- float32[NODES x NUM_CLASSES]  (raw logits from HLS)
    Amazon Photo dataset -- for ground-truth labels

Prints:
    Overall and test-set accuracy, matching the evaluation in gcn_photo.py.

Note: Amazon Photo has no built-in splits; we regenerate the same split
      used during training (seed=42, 20 train / 10 val per class).
"""

import numpy as np
import torch
from torch_geometric.datasets import Amazon
import os

NODES = 7650
NUM_CLASSES = 8

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
BIN_DIR = os.path.join(SCRIPT_DIR, "photo_bin")

# Load HLS output (raw logits)
h_out = np.fromfile(os.path.join(BIN_DIR, "H_out_integrated_layer2.bin"), dtype=np.float32)
h_out = h_out.reshape(NODES, NUM_CLASSES)
print(f"Loaded H_out_layer2.bin: shape={h_out.shape}, range=[{h_out.min():.4f}, {h_out.max():.4f}]")

# Load dataset for labels
dataset = Amazon(root=os.path.join(SCRIPT_DIR, "Photo"), name="Photo")
data = dataset[0]

# Regenerate the same stratified split as gcn_photo.py (seed=42)
torch.manual_seed(42)
train_mask = torch.zeros(NODES, dtype=torch.bool)
val_mask = torch.zeros(NODES, dtype=torch.bool)
test_mask = torch.zeros(NODES, dtype=torch.bool)

for c in range(NUM_CLASSES):
    idx = (data.y == c).nonzero(as_tuple=True)[0]
    perm = idx[torch.randperm(idx.size(0))]
    train_mask[perm[:20]] = True
    val_mask[perm[20:30]] = True
    test_mask[perm[30:]] = True

labels = data.y.numpy()
pred = np.argmax(h_out, axis=1)

train_mask = train_mask.numpy()
val_mask = val_mask.numpy()
test_mask = test_mask.numpy()

test_correct = np.sum(pred[test_mask] == labels[test_mask])
test_total = np.sum(test_mask)
test_acc = test_correct / test_total

train_acc = np.sum(pred[train_mask] == labels[train_mask]) / np.sum(train_mask)
val_acc = np.sum(pred[val_mask] == labels[val_mask]) / np.sum(val_mask)
overall_acc = np.sum(pred == labels) / len(labels)

print(f"-----------------------------")
print(f"HLS GCN Accuracy Evaluation (Amazon Photo)")
print(f"  Train accuracy: {train_acc:.4f} ({np.sum(pred[train_mask] == labels[train_mask])}/{np.sum(train_mask)})")
print(f"  Val   accuracy: {val_acc:.4f} ({np.sum(pred[val_mask] == labels[val_mask])}/{np.sum(val_mask)})")
print(f"  Test  accuracy: {test_acc:.4f} ({test_correct}/{test_total})")
print(f"  Overall accuracy: {overall_acc:.4f} ({np.sum(pred == labels)}/{len(labels)})")
print(f"-----------------------------")
