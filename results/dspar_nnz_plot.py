import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

# ── DATA ─────────────────────────────────────────────────────────────────────
# Fill in NNZ (number of non-zeros in the sparsified adjacency matrix)
# at each epsilon, plus the unsparsified count.

epsilon = [0.1, 0.2, 0.35, 0.5, 0.7]

# Cora
cora_nnz_original = 13264                 # e.g. 13264
cora_nnz          = [13262, 13153, 11829, 9725, 7434]

# Amazon Photo
photo_nnz_original = 245812                # e.g. 238162
photo_nnz          = [225458, 143982, 73302, 44434, 27914]

# ── STYLE ─────────────────────────────────────────────────────────────────────
BAR_COLOR       = "#1b9e77"
BASELINE_COLOR  = "#d95f02"

plt.rcParams.update({
    "font.family":      "sans-serif",
    "font.size":        11,
    "axes.linewidth":   0.8,
    "xtick.direction":  "in",
    "ytick.direction":  "in",
})

# ── PLOT ──────────────────────────────────────────────────────────────────────
fig, axes = plt.subplots(1, 2, figsize=(10.0, 4.2), sharey=False)

def plot_dataset(ax, title, nnz_orig, nnz_eps):
    categories = ["Orig."] + [f"{e:g}" for e in epsilon]
    values     = [nnz_orig] + list(nnz_eps)
    colors     = [BASELINE_COLOR] + [BAR_COLOR] * len(epsilon)

    x = np.arange(len(categories))
    bars = ax.bar(x, values, color=colors, edgecolor="black", linewidth=0.5,
                  width=0.7, zorder=3)

    ax.set_xticks(x)
    ax.set_xticklabels(categories)
    ax.set_xlabel(r"Sparsification parameter $\epsilon$")
    ax.set_ylabel("Non-zeros in $A$")
    ax.set_title(title, fontsize=10, pad=6)
    ax.grid(True, axis="y", alpha=0.25, linewidth=0.6, zorder=0)
    ax.yaxis.set_major_formatter(ticker.FuncFormatter(
        lambda v, _: f"{int(v):,}"))

    if nnz_orig is not None:
        ax.axhline(nnz_orig, color=BASELINE_COLOR, linestyle="--",
                   linewidth=1.0, alpha=0.6, zorder=2)

    for rect, v in zip(bars, values):
        if v is None:
            continue
        ax.annotate(f"{int(v):,}",
                    xy=(rect.get_x() + rect.get_width() / 2, v),
                    xytext=(0, 3), textcoords="offset points",
                    ha="center", fontsize=7)

plot_dataset(axes[0], "Cora",         cora_nnz_original,  cora_nnz)
plot_dataset(axes[1], "Amazon Photo", photo_nnz_original, photo_nnz)

plt.tight_layout()
plt.savefig("dspar_nnz.pdf", dpi=300, bbox_inches="tight")
plt.savefig("dspar_nnz.png", dpi=300, bbox_inches="tight")
print("Saved dspar_nnz.pdf and dspar_nnz.png")
