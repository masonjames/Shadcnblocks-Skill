# ShadcnBlocks Setup Guide

## Prerequisites

1. A React/Next.js project (or any framework supporting shadcn/ui)
2. Tailwind CSS configured
3. shadcn/ui initialized (`npx shadcn@latest init`)
4. 1Password CLI (`op`) installed and authenticated

## Step-by-Step Setup

### 1. Initialize shadcn/ui (if not already done)

```bash
npx shadcn@latest init
```

Follow the prompts to configure:
- TypeScript (recommended)
- Style (default or new-york)
- Base color
- CSS variables
- Tailwind configuration
- Component alias paths

This creates `components.json` in the project root.

### 2. Obtain Your ShadcnBlocks API Key

Get your API key from [shadcnblocks.com](https://shadcnblocks.com) (requires a paid plan).

**Option A — Set directly:**
```bash
export SHADCNBLOCKS_API_KEY=<your-key>
```

**Option B — Use 1Password CLI:**
If you store the key in 1Password, the scripts will retrieve it automatically. Set your reference path:
```bash
export OP_SHADCNBLOCKS_REF="op://<Your Vault>/<Your Item>/credential"
```
Or use the default path: `op://Platform Infra/ShadcnBlocks API Key/credential`

### 3. Configure Environment Variable

Add to your project's `.env`:
```
SHADCNBLOCKS_API_KEY=<your-key>
```

Ensure `.env` is in `.gitignore`.

### 4. Add Registry to components.json

Add the `@shadcnblocks` registry under the `registries` key:

```json
{
  "registries": {
    "@shadcnblocks": {
      "url": "https://shadcnblocks.com/r/{name}",
      "headers": {
        "Authorization": "Bearer ${SHADCNBLOCKS_API_KEY}"
      }
    }
  }
}
```

The `${SHADCNBLOCKS_API_KEY}` placeholder is resolved from the environment at install time.

### 5. Automated Setup Alternative

Run the setup script bundled with this skill:
```bash
bash scripts/setup-shadcnblocks.sh /path/to/project
```

This script handles steps 2-4 automatically using 1Password CLI.

## Troubleshooting

### Authentication Errors
- Check that `.env` contains `SHADCNBLOCKS_API_KEY` with a valid key
- If using 1Password: `bash scripts/get-api-key.sh` to test key retrieval
- Verify the key works by running a test install

### Registry Not Found
- Ensure `registries` key exists in `components.json`
- Verify the URL template includes `{name}` placeholder
- Check JSON syntax

### components.json Missing
- Run `npx shadcn@latest init` to create it
- Must be in the project root directory

### 1Password Access (optional)
- Sign in: `op signin`
- Verify vault access: `op vault list`
- Set custom reference: `export OP_SHADCNBLOCKS_REF="op://<Your Vault>/<Your Item>/credential"`
- Or bypass 1Password entirely: `export SHADCNBLOCKS_API_KEY=<your-key>`
