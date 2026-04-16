from torch_geometric.datasets import Amazon
from dspar.sparsification import maybe_sparsfication
import torch
import numpy as np
import scipy.sparse as sp
from typing import Tuple
import argparse
import os

def get_photo(enable_sparsify: bool):
    dataset = Amazon(root='Photo', name='Photo')
    data = dataset[0]
    if enable_sparsify:
        data = maybe_sparsfication(data, is_directed=False, reweighted=False, epsilon=0.35)
    return data, dataset.num_node_features, dataset.num_classes

def edge_index_to_csr(edge_index, num_nodes):
    row = edge_index[0].numpy()
    col = edge_index[1].numpy()
    data = np.ones(len(row), dtype=np.float32)
    A = sp.csr_matrix((data, (row, col)), shape=(num_nodes, num_nodes))
    return A

def gcn_norm(A, add_self_loops=False):
    if add_self_loops:
        A = A + sp.eye(A.shape[0], format='csr')
    d = np.array(A.sum(axis=1)).flatten()
    d_inv_sqrt = np.power(d, -0.5)
    d_inv_sqrt[np.isinf(d_inv_sqrt)] = 0.0

    D_inv_sqrt = sp.diags(d_inv_sqrt)
    A_norm = D_inv_sqrt @ A @ D_inv_sqrt

    return A_norm

def batch_norm(H, weight, bias, running_mean, running_var, eps=1e-5):
    H = (H - running_mean) / np.sqrt(running_var + eps)
    H = H * weight + bias
    return H


def gcn_layer(A_hat, X, W):
    H_AX = A_hat @ X
    return H_AX, H_AX @ W.T

def save_bin(filename, arr):
    arr.tofile(filename)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', '--sparsify', action='store_true')
    args = parser.parse_args()
    print(args.sparsify)
    data, _, _ = get_photo(args.sparsify)
    num_nodes = data.num_nodes
    A = edge_index_to_csr(data.edge_index, num_nodes)
    A_hat = gcn_norm(A, True)
    A_hat_csr = A_hat.tocsr()
    A_hat_csr.sort_indices()
    degrees = np.diff(A_hat_csr.indptr)
    print(f"Nodes: {num_nodes}, NNZ: {A_hat_csr.nnz}")
    print(f"Average degree: {degrees.mean():.2f}")
    print(f"Min degree: {degrees.min()}, Max degree: {degrees.max()}")

    weights_suffix = '_sparse' if args.sparsify else ''
    weights_file = f'gcn_weights{weights_suffix}.pt'
    print(f"Loading weights from {weights_file}")
    weights = torch.load(weights_file, weights_only=True)
    W1 = weights['conv1.lin.weight'].numpy()
    W2 = weights['conv2.lin.weight'].numpy()
    X = data.x.numpy()
    print(f"X shape: {X.shape}")
    print(f"W1 shape: {W1.shape}, W2 shape: {W2.shape}")
    print(f"W1 dtype: {W1.dtype}, W2 dtype: {W2.dtype}, X dtype: {X.dtype}")

    # Layer 1
    H_AX, H = gcn_layer(A_hat, X, W1)
    H1_out = H.astype(np.float32)
    print(f"H mean: {np.mean(H)}, H std: {np.std(H)}")
    H = batch_norm(H, weights['norm.weight'].numpy(), weights['norm.bias'].numpy(),
                   weights['norm.running_mean'].numpy(), weights['norm.running_var'].numpy())
    H = np.maximum(H, 0)

    # Layer 2
    _, out = gcn_layer(A_hat, H, W2)
    H2_out = out.astype(np.float32)
    pred = np.argmax(out, axis=1)
    print('Predictions:', pred)

    # Output binary files
    A_dense = A_hat.todense(order='C').astype(np.float32)
    A_hat = A_hat.tocsr()
    A_hat.sort_indices()
    rowptr = A_hat.indptr.astype(np.int32)
    colind = A_hat.indices.astype(np.int32)
    values = A_hat.data.astype(np.float32)

    # Save edge list as CSV for spy plots
    edge_csv_prefix = 'sparsified' if args.sparsify else 'unsparsified'
    edge_index_np = data.edge_index.numpy()
    np.savetxt(f'{edge_csv_prefix}_photo_edges.csv', edge_index_np.T, delimiter=',', fmt='%d')
    print(f"Saved edge list to {edge_csv_prefix}_photo_edges.csv ({edge_index_np.shape[1]} edges, {num_nodes} nodes)")

    folder_suffix = '_sparse' if args.sparsify else ''
    os.makedirs(f'photo_bin{folder_suffix}', exist_ok=True)
    save_bin(f'photo_bin{folder_suffix}/A_dense.bin', A_dense)
    save_bin(f'photo_bin{folder_suffix}/A_rowptr.bin', rowptr)
    save_bin(f'photo_bin{folder_suffix}/A_colind.bin', colind)
    save_bin(f'photo_bin{folder_suffix}/A_values.bin', values)

    X_out = X.astype(np.float32)
    W1_out = W1.T.copy().astype(np.float32)
    W2_out = W2.T.copy().astype(np.float32)
    save_bin(f'photo_bin{folder_suffix}/X.bin', X_out)
    save_bin(f'photo_bin{folder_suffix}/W1.bin', W1_out)
    save_bin(f'photo_bin{folder_suffix}/W2.bin', W2_out)
    save_bin(f'photo_bin{folder_suffix}/H_AX.bin', H_AX.astype(np.float32))
    save_bin(f'photo_bin{folder_suffix}/H1.bin', H1_out)
    save_bin(f'photo_bin{folder_suffix}/H2.bin', H2_out)

if __name__ == "__main__":
    main()
