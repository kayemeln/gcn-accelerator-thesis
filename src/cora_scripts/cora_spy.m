
figure;

N = 2708;  % Cora has 2708 nodes

subplot(1,2,1);
edges = readmatrix("unsparsified_cora_edges.csv");
src = edges(:,1) + 1;
dst = edges(:,2) + 1;
A = sparse(src, dst, 1, N, N);
spy(A, 1);
axis square;
title("Unsparsified Cora");

subplot(1,2,2);
edges = readmatrix("sparsified_cora_edges.csv");
src = edges(:,1) + 1;
dst = edges(:,2) + 1;
A = sparse(src, dst, 1, N, N);
spy(A, 1);
axis square;
title("Sparsified Cora");
