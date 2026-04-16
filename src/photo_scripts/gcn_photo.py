# -*- coding:utf-8 -*-

import torch
from torch_geometric.datasets import Amazon
from dspar.sparsification import maybe_sparsfication
import torch.nn.functional as F
from torch_geometric.nn import GCNConv
import argparse


class GCN(torch.nn.Module):
    def __init__(self, num_node_features, num_classes):
        super(GCN, self).__init__()
        self.conv1 = GCNConv(num_node_features, 64, bias=False)
        self.conv2 = GCNConv(64, num_classes, bias=False)
        self.norm = torch.nn.BatchNorm1d(64)

    def forward(self, data):
        x, edge_index = data.x, data.edge_index
        x = self.conv1(x, edge_index)
        x = self.norm(x)
        x = F.relu(x)
        x = F.dropout(x, training=self.training)
        x = self.conv2(x, edge_index)

        return x


def generate_splits(data, num_classes, train_per_class=20, val_per_class=10):
    """Generate stratified train/val/test masks (Amazon datasets have none)."""
    torch.manual_seed(42)
    num_nodes = data.num_nodes
    train_mask = torch.zeros(num_nodes, dtype=torch.bool)
    val_mask = torch.zeros(num_nodes, dtype=torch.bool)
    test_mask = torch.zeros(num_nodes, dtype=torch.bool)

    for c in range(num_classes):
        idx = (data.y == c).nonzero(as_tuple=True)[0]
        perm = idx[torch.randperm(idx.size(0))]
        train_mask[perm[:train_per_class]] = True
        val_mask[perm[train_per_class:train_per_class + val_per_class]] = True
        test_mask[perm[train_per_class + val_per_class:]] = True

    data.train_mask = train_mask
    data.val_mask = val_mask
    data.test_mask = test_mask
    return data


def load_data(enable_sparsify=False):
    dataset = Amazon(root='./Photo/', name='Photo')
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    data = dataset[0]
    if enable_sparsify:
        data = maybe_sparsfication(data, is_directed=False, reweighted=False, epsilon=0.35)
    data = generate_splits(data, dataset.num_classes)
    data = data.to(device)
    return data, dataset.num_node_features, dataset.num_classes


def train(model, data, device):
    optimizer = torch.optim.Adam(model.parameters(), lr=0.01, weight_decay=1e-4)
    loss_function = torch.nn.CrossEntropyLoss().to(device)
    model.train()
    for epoch in range(200):
        out = model(data)
        optimizer.zero_grad()
        loss = loss_function(out[data.train_mask], data.y[data.train_mask])
        loss.backward()
        optimizer.step()

        print('Epoch {:03d} loss {:.4f}'.format(epoch, loss.item()))


def test(model, data):
    model.eval()
    _, pred = model(data).max(dim=1)
    correct = int(pred[data.test_mask].eq(data.y[data.test_mask]).sum().item())
    acc = correct / int(data.test_mask.sum())
    print('GCN Accuracy: {:.4f}'.format(acc))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', '--sparsify', action='store_true')
    args = parser.parse_args()

    print('Amazon Photo...')
    print(f'Sparsify: {args.sparsify}')
    data, num_node_features, num_classes = load_data(args.sparsify)
    print(f"Nodes: {data.num_nodes}, Features: {num_node_features}, Classes: {num_classes}")
    print(f"Edges: {data.edge_index.shape[1]}")
    print(f"Train: {data.train_mask.sum()}, Val: {data.val_mask.sum()}, Test: {data.test_mask.sum()}")
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = GCN(num_node_features, num_classes).to(device)
    train(model, data, device)
    test(model, data)

    weights = {k: v.detach().cpu() for k, v in model.state_dict().items()}
    suffix = '_sparse' if args.sparsify else ''
    out_file = f'gcn_weights{suffix}.pt'
    torch.save(weights, out_file)
    print(f'Saved weights to {out_file}')
    for name, param in weights.items():
        print(f'  {name}: {param.shape}')


if __name__ == '__main__':
    main()
