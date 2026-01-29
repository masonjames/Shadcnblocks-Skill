#!/usr/bin/env bash
# Retrieve the ShadcnBlocks API key.
#
# Resolution order:
#   1. SHADCNBLOCKS_API_KEY environment variable (if already set)
#   2. 1Password CLI using OP_SHADCNBLOCKS_REF (custom reference path)
#   3. 1Password CLI using the default reference path
#
# Usage: bash get-api-key.sh
#
# Environment variables:
#   SHADCNBLOCKS_API_KEY      - Set this to skip 1Password lookup entirely
#   OP_SHADCNBLOCKS_REF       - Custom 1Password reference path
#                                (default: op://Platform Infra/ShadcnBlocks API Key/credential)

set -euo pipefail

# 1. Use existing env var if set
if [ -n "${SHADCNBLOCKS_API_KEY:-}" ]; then
  echo "$SHADCNBLOCKS_API_KEY"
  exit 0
fi

# 2. Try 1Password CLI
OP_REF="${OP_SHADCNBLOCKS_REF:-op://Platform Infra/ShadcnBlocks API Key/credential}"

if ! command -v op &>/dev/null; then
  echo "ERROR: Could not retrieve ShadcnBlocks API key." >&2
  echo "Either set the SHADCNBLOCKS_API_KEY environment variable," >&2
  echo "or install the 1Password CLI (op) and sign in." >&2
  exit 1
fi

API_KEY=$(op read "$OP_REF" 2>/dev/null)

if [ -z "$API_KEY" ]; then
  echo "ERROR: Could not retrieve ShadcnBlocks API key from 1Password." >&2
  echo "Reference: $OP_REF" >&2
  echo "" >&2
  echo "Options:" >&2
  echo "  - Set SHADCNBLOCKS_API_KEY environment variable directly" >&2
  echo "  - Set OP_SHADCNBLOCKS_REF to your 1Password reference path" >&2
  echo "  - Ensure 'op' CLI is signed in: op signin" >&2
  exit 1
fi

echo "$API_KEY"
