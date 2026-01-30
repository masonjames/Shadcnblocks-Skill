#!/usr/bin/env bash
# Setup script for ShadcnBlocks registry in a project.
# Retrieves the API key and configures components.json.
#
# Usage: bash setup-shadcnblocks.sh [project-dir]
#
# The API key is resolved in this order:
#   1. SHADCNBLOCKS_API_KEY environment variable
#   2. 1Password CLI (customizable via OP_SHADCNBLOCKS_REF)
#
# Prerequisites:
#   - components.json must already exist (run `npx shadcn@latest init` first)
#   - jq must be installed
#   - Either SHADCNBLOCKS_API_KEY is set, or 1Password CLI (op) is available

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="${1:-.}"
COMPONENTS_JSON="$PROJECT_DIR/components.json"

# Verify components.json exists
if [ ! -f "$COMPONENTS_JSON" ]; then
  echo "ERROR: $COMPONENTS_JSON not found."
  echo "Run 'npx shadcn@latest init' first to create it."
  exit 1
fi

# Retrieve API key using the helper script
API_KEY=$("$SCRIPT_DIR/get-api-key.sh")

# Add registry to components.json using jq
# Uses env var placeholder so the actual key is never written to components.json
if command -v jq &>/dev/null; then
  TMP=$(mktemp)
  jq '.registries["@shadcnblocks"] = {
    "url": "https://shadcnblocks.com/r/{name}",
    "headers": {
      "Authorization": "Bearer ${SHADCNBLOCKS_API_KEY}"
    }
  }' "$COMPONENTS_JSON" > "$TMP" && mv "$TMP" "$COMPONENTS_JSON"
  echo "ShadcnBlocks registry added to $COMPONENTS_JSON"
else
  echo "ERROR: jq is required to update components.json. Install with: brew install jq"
  exit 1
fi

# Add SHADCNBLOCKS_API_KEY to .env
ENV_FILE="$PROJECT_DIR/.env"
if [ -f "$ENV_FILE" ]; then
  if grep -q "SHADCNBLOCKS_API_KEY" "$ENV_FILE"; then
    echo "SHADCNBLOCKS_API_KEY already set in $ENV_FILE"
  else
    echo "" >> "$ENV_FILE"
    echo "SHADCNBLOCKS_API_KEY=$API_KEY" >> "$ENV_FILE"
    echo "Added SHADCNBLOCKS_API_KEY to $ENV_FILE"
  fi
else
  echo "SHADCNBLOCKS_API_KEY=$API_KEY" > "$ENV_FILE"
  echo "Created $ENV_FILE with SHADCNBLOCKS_API_KEY"
fi

echo ""
echo "Setup complete. Install blocks with:"
echo "  npx shadcn add @shadcnblocks/<block-name>"
