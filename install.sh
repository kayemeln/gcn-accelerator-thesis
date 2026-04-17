#!/usr/bin/env bash
# Install Python deps for the GCN photo/cora scripts.
#
# Usage (from this directory):
#   python3.12 -m venv venv
#   source venv/bin/activate
#   ./install.sh
#
# Two-step install because dspar's setup.py imports torch at the top.
# pip's default build isolation hides the venv's torch from setup.py,
# so we install torch (via requirements.txt) first, then install dspar
# with --no-build-isolation so it can see torch.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DSPAR_SRC="${SCRIPT_DIR}/../../DSpar_tmlr/src"

pip install --upgrade pip
pip install -r "${SCRIPT_DIR}/requirements.txt"
pip install --no-build-isolation -e "${DSPAR_SRC}"

echo
echo "Install complete. dspar is editable at: ${DSPAR_SRC}"
