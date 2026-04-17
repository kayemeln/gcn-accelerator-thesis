# -*- coding:utf-8 -*-

import torch
from torch_geometric.datasets import Planetoid, NELL
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


def load_data(name, enable_sparsify=False, seed=42, epsilon=0.5):
    if name == 'NELL':
        print('./' + name + '/')
        dataset = NELL(root='./' + name + '/')
        # CUDA out of memory
        _device = torch.device('cpu')
    else:
        dataset = Planetoid(root='./' + name + '/', name=name)
        _device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    data = dataset[0]
    if enable_sparsify:
        data = maybe_sparsfication(data, is_directed=False, reweighted=False, epsilon=epsilon, seed=seed)
    data = data.to(_device)
    if name == 'NELL':
        data.x = data.x.to_dense()
        num_node_features = data.x.shape[1]
    else:
        num_node_features = dataset.num_node_features
    return data, num_node_features, dataset.num_classes


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
    parser.add_argument('--seed', type=int, default=42, help='Seed for sparsification sampling')
    parser.add_argument('--epsilon', type=float, default=0.5, help='Sparsification epsilon')
    args = parser.parse_args()

    name = 'Cora'
    print(name + '...')
    print(f'Sparsify: {args.sparsify}')
    data, num_node_features, num_classes = load_data(name, enable_sparsify=args.sparsify, seed=args.seed, epsilon=args.epsilon)
    print(data, num_node_features, num_classes)
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = GCN(num_node_features, num_classes).to(device)
    train(model, data, device)
    test(model, data)

    weights = {k: v.detach().cpu() for k, v in model.state_dict().items()}
    suffix = '_sparse' if args.sparsify else ''
    out_file = f'gcn_weights{suffix}.pt'
    torch.save(weights, out_file)
    print(f'Saved weights to {out_file}')
    for key, param in weights.items():
        print(f'  {key}: {param.shape}')


if __name__ == '__main__':
    main()
