import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

# ── DATA ─────────────────────────────────────────────────────────────────────
# Fill in your measured values. epsilon values must match across both lists.

epsilon       = [0.1, 0.2, 0.35, 0.5, 0.7]

# Node classification accuracy (%) at each epsilon
accuracy      = [90.8, 88.2, 88.6, 86.8, 85.4]

latency       = [1759.4, 963.1, 442.9, 247.0, 155.2]
latency_unit  = "Latency (ms)"

# Baseline accuracy (horizontal dashed reference line)
baseline_acc  = 89.06
baseline_latency = 2216.1

# ── STYLE ─────────────────────────────────────────────────────────────────────
ACC_COLOR     = "#1b9e77"
LAT_COLOR     = "#7570b3"
BASELINE_COLOR= "#d95f02"
BASELINE_LATENCY_COLOR = "#e7298a"

plt.rcParams.update({
    "font.family":      "sans-serif",
    "font.size":        11,
    "axes.linewidth":   0.8,
    "xtick.direction":  "in",
    "ytick.direction":  "in",
})

# ── PLOT ──────────────────────────────────────────────────────────────────────
fig, ax1 = plt.subplots(figsize=(6.6, 4.4))

# --- Accuracy (left axis) ---
ax1.set_xlabel(r"Sparsification parameter $\epsilon$")
ax1.set_ylabel("Node classification accuracy (%)", color=ACC_COLOR)
ax1.tick_params(axis="y", labelcolor=ACC_COLOR)

if None not in accuracy:
    ax1.plot(epsilon, accuracy, color=ACC_COLOR, marker="o", markersize=5,
             linewidth=1.5, label="Accuracy (DSpar)", zorder=3)

if baseline_acc is not None:
    ax1.axhline(baseline_acc, color=BASELINE_COLOR, linestyle="--",
                linewidth=1.2, label=f"Baseline acc ({baseline_acc:.1f}%)")

ax1.set_xticks(epsilon)
ax1.yaxis.set_minor_locator(ticker.AutoMinorLocator())
ax1.grid(True, which="major", axis="both", alpha=0.25, linewidth=0.6)

for x, y in zip(epsilon, accuracy):
    ax1.annotate(f"{y:.1f}", xy=(x, y), xytext=(0, -11),
                 textcoords="offset points", ha="center", fontsize=6.5,
                 color=ACC_COLOR)

ax1.set_ylim(70, 100)

# --- Latency (right axis) ---
ax2 = ax1.twinx()
ax2.set_ylabel(latency_unit, color=LAT_COLOR)
ax2.tick_params(axis="y", labelcolor=LAT_COLOR)
ax2.spines["right"].set_edgecolor(LAT_COLOR)

if None not in latency:
    ax2.plot(epsilon, latency, color=LAT_COLOR, marker="s", markersize=5,
             linewidth=1.5, linestyle="-", label="Latency (DSpar)", zorder=3)

if baseline_latency is not None:
    ax2.axhline(baseline_latency, color=BASELINE_LATENCY_COLOR, linestyle="--",
                linewidth=1.2, label=f"Baseline lat ({baseline_latency:.1f} ms)")

ax2.yaxis.set_minor_locator(ticker.AutoMinorLocator())

for x, y in zip(epsilon, latency):
    ax2.annotate(f"{y:g}", xy=(x, y), xytext=(0, 7),
                 textcoords="offset points", ha="center", fontsize=6.5,
                 color=LAT_COLOR)

ax2.set_ylim(0, 2400)

# --- Legend (combined from both axes) ---
lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax1.legend(lines1 + lines2, labels1 + labels2,
           loc="lower left", framealpha=0.9, fontsize=9)

# --- Dataset annotation (optional — remove if not wanted) ---
ax1.set_title("Effect of DSpar sparsification (Amazon Photo)", fontsize=10, pad=6)

plt.tight_layout()
plt.savefig("dspar_results.pdf", dpi=300, bbox_inches="tight")
plt.savefig("dspar_results.png", dpi=300, bbox_inches="tight")
print("Saved dspar_results.pdf and dspar_results.png")
