"""
Compute the relative Frobenius norm error between HLS outputs and golden
references produced by cora.py.

    relative error = ||HLS - ref||_F / ||ref||_F

Comparisons:
    Layer 1: H_out_design3.bin  vs  H1.bin   (2708 x 64)
    Layer 2: H_out_layer2.bin   vs  H2.bin   (2708 x 7)
"""

import numpy as np
import os

NODES = 2708

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REF_DIR = os.path.join(SCRIPT_DIR, "cora_bin")
HLS_DIR = "/home/nat/dev/trinners/mai_proj/hls/gcn_hls/cora_bin"

COMPARISONS = [
    {
        "label": "Layer 1",
        "hls_file": os.path.join(HLS_DIR, "H_out_design3.bin"),
        "ref_file": os.path.join(REF_DIR, "H1.bin"),
        "shape": (NODES, 64),
    },
    {
        "label": "Layer 2",
        "hls_file": os.path.join(HLS_DIR, "H_out_layer2.bin"),
        "ref_file": os.path.join(REF_DIR, "H2.bin"),
        "shape": (NODES, 7),
    },
]


def relative_frobenius_error(hls: np.ndarray, ref: np.ndarray) -> float:
    return float(np.linalg.norm(hls - ref) / np.linalg.norm(ref))


def main():
    for comp in COMPARISONS:
        label = comp["label"]
        shape = comp["shape"]

        if not os.path.isfile(comp["hls_file"]):
            print(f"[{label}] SKIP — {comp['hls_file']} not found")
            continue
        if not os.path.isfile(comp["ref_file"]):
            print(f"[{label}] SKIP — {comp['ref_file']} not found")
            continue

        hls = np.fromfile(comp["hls_file"], dtype=np.float32).reshape(shape)
        ref = np.fromfile(comp["ref_file"], dtype=np.float32).reshape(shape)

        err = relative_frobenius_error(hls, ref)
        print(f"[{label}] ||HLS - ref||_F / ||ref||_F = {err:.6e}")
        print(f"         HLS range  [{hls.min():.4f}, {hls.max():.4f}]")
        print(f"         ref range  [{ref.min():.4f}, {ref.max():.4f}]")
        print(f"         max |diff| = {np.max(np.abs(hls - ref)):.6f}")


if __name__ == "__main__":
    main()
