#!/usr/bin/env bash
# Install Python deps for the GCN photo/cora scripts.
#
# Usage (from this directory):
#   python3.12 -m venv venv
#   source venv/bin/activate
#   ./install.sh
#
# Expects a DSpar checkout at ./DSpar_tmlr (clone it there before running).
# The script applies patches/dspar-seed-epsilon.patch to add the seed +
# epsilon arguments this project relies on, then installs dspar in editable
# mode with --no-build-isolation so its setup.py can see torch.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DSPAR_DIR="${SCRIPT_DIR}/DSpar_tmlr"
DSPAR_SRC="${DSPAR_DIR}/src"
PATCH_FILE="${SCRIPT_DIR}/patches/dspar-seed-epsilon.patch"

if [[ ! -d "${DSPAR_SRC}" ]]; then
    echo "Cloning DSpar into ${DSPAR_DIR}"
    git clone https://github.com/zirui-ray-liu/DSpar_tmlr.git "${DSPAR_DIR}"
fi

pip install --upgrade pip
pip install -r "${SCRIPT_DIR}/requirements.txt"

# Apply the seed/epsilon patch if it hasn't been applied yet. `git apply
# --check` exits non-zero when the patch is already applied (or doesn't
# apply cleanly) — we swallow that so re-runs are idempotent.
if git -C "${DSPAR_DIR}" apply --check "${PATCH_FILE}" 2>/dev/null; then
    echo "Applying ${PATCH_FILE} to ${DSPAR_DIR}"
    git -C "${DSPAR_DIR}" apply "${PATCH_FILE}"
else
    echo "Patch already applied or does not apply cleanly — skipping."
fi

pip install --no-build-isolation -e "${DSPAR_SRC}"

echo
echo "Install complete. dspar is editable at: ${DSPAR_SRC}"
