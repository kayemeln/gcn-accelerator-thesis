import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

# ── DATA ─────────────────────────────────────────────────────────────────────
# Fill in your measured values. epsilon values must match across both lists.

epsilon       = [0.1, 0.2, 0.35, 0.5, 0.7]

# Node classification accuracy (%) at each epsilon
accuracy      = [78.7, 76.7, 77.6, 71.8, 62.4]   # e.g. [77.2, 76.8, 76.1, 74.5, 71.3]

# Hardware latency (ms or cycles — pick one unit and label accordingly)
latency       = [103.2, 98.3, 73.9, 58.2, 40.3]   # e.g. [112, 98, 84, 71, 58]
latency_unit  = "Latency (ms)"                   # change unit label here if using cycles

# Baseline accuracy (horizontal dashed reference line)
baseline_acc  = 77.9    # e.g. 77.9  (trained on full unsparsified graph)
baseline_latency = 103.2

# ── STYLE ─────────────────────────────────────────────────────────────────────
ACC_COLOR     = "#1b9e77"   # blue  — accuracy
LAT_COLOR     = "#7570b3"   # red   — latency
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
    edit = -0.5 if x == 0.7 or x == 0.1 else 1
    ax1.annotate(f"{y:.1f}", xy=(x, y), xytext=(0, edit * -11),
                 textcoords="offset points", ha="center", fontsize=6.5,
                 color=ACC_COLOR)

ax1.set_ylim(58, 84)

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
    edit = -1.5 if x == 0.7 else 1
    ax2.annotate(f"{y:g}", xy=(x, y), xytext=(0, edit * 6),
                 textcoords="offset points", ha="center", fontsize=6.5,
                 color=LAT_COLOR)

ax2.set_ylim(30, 115)

# --- Legend (combined from both axes) ---
lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax1.legend(lines1 + lines2, labels1 + labels2,
           loc="lower left", framealpha=0.9, fontsize=9)

# --- Dataset annotation (optional — remove if not wanted) ---
ax1.set_title("Effect of DSpar sparsification (Cora)", fontsize=10, pad=6)

plt.tight_layout()
plt.savefig("dspar_results.pdf", dpi=300, bbox_inches="tight")
plt.savefig("dspar_results.png", dpi=300, bbox_inches="tight")
print("Saved dspar_results.pdf and dspar_results.png")
