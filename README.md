# Shadcn UI & Blocks — Claude Code Skill

A [Claude Code](https://docs.anthropic.com/en/docs/claude-code) skill that gives Claude deep knowledge of **1,338 blocks** and **1,189 components** from [ShadcnBlocks](https://shadcnblocks.com/), built on [shadcn/ui](https://ui.shadcn.com/) and Tailwind CSS.

When activated, Claude can intelligently select the right pre-built UI block or component for any frontend task — from landing page hero sections to dashboard data tables to ecommerce checkout flows — then handle setup and installation automatically.

## What is a Claude Code Skill?

Skills are reusable instructions that extend Claude Code's capabilities. They activate automatically based on what you're doing (e.g., building a frontend) and give Claude domain-specific knowledge and workflows. Learn more in the [Claude Code documentation](https://docs.anthropic.com/en/docs/claude-code).

## Installation

Install as a Claude Code plugin from GitHub:

```bash
claude plugin marketplace add masonjames/Shadcnblocks-Skill
claude plugin install shadcnblocks
```

### Plugin Structure

```
.claude-plugin/
  plugin.json
skills/
  shadcn-ui/
    SKILL.md
    references/
      block-catalog.md
      component-catalog.md
      setup-guide.md
    scripts/
      get-api-key.sh
      setup-shadcnblocks.sh
```

## Prerequisites

- A React/Next.js project (or any framework supporting shadcn/ui)
- Tailwind CSS configured
- shadcn/ui initialized (`npx shadcn@latest init`)
- A [ShadcnBlocks](https://shadcnblocks.com/) API key (requires a paid plan)
- `jq` installed (for automated setup: `brew install jq`)
- *(Optional)* [1Password CLI](https://developer.1password.com/docs/cli/) for secure key management

## API Key Setup

Provide your ShadcnBlocks API key in one of two ways:

**Option A — Environment variable (simplest):**
```bash
export SHADCNBLOCKS_API_KEY=<your-key>
```

**Option B — 1Password CLI:**
```bash
# Use the default reference path, or set your own:
export OP_SHADCNBLOCKS_REF="op://<Your Vault>/<Your Item>/credential"
```

The scripts check for the environment variable first, then fall back to 1Password.

## Quick Start

1. Initialize shadcn/ui in your project (if not done):
   ```bash
   npx shadcn@latest init
   ```

2. Run the setup script to configure the ShadcnBlocks registry:
   ```bash
   bash scripts/setup-shadcnblocks.sh /path/to/your/project
   ```

3. Install blocks:
   ```bash
   npx shadcn add @shadcnblocks/hero125
   npx shadcn add @shadcnblocks/pricing3
   ```

4. Import and compose in your page — blocks are standard React components.

## What's Included

The skill's primary value is its **comprehensive catalog knowledge** — Claude knows every available block and component category, what each is for, and which to recommend for a given need.

### Block Categories (71 categories, 1,338 blocks)

Blocks are full page sections: hero, feature, pricing, testimonial, FAQ, navbar, footer, blog, contact, team, about, gallery, ecommerce (product cards, carts, checkout), app/dashboard (charts, data tables, sidebars), and more.

### Component Groups (60+ groups, 1,189 components)

Components are reusable UI elements: forms, inputs, buttons, dialogs, sheets, accordions, charts, file uploads, comboboxes, alerts, toasts, and more. All components are free.

## Repository Structure

```
.claude-plugin/
  plugin.json                # Plugin manifest
skills/
  shadcn-ui/
    SKILL.md                 # Skill definition with selection guides
    references/
      block-catalog.md       # Full block catalog (71 categories)
      component-catalog.md   # Full component catalog (60+ groups)
      setup-guide.md         # Step-by-step setup instructions
    scripts/
      get-api-key.sh         # Retrieves API key (env var or 1Password)
      setup-shadcnblocks.sh  # Automated project setup
```

## Security

- API keys are **never** written to tracked source files. The setup script writes an environment variable placeholder (`${SHADCNBLOCKS_API_KEY}`) to `components.json`, not the actual key.
- The actual key is stored only in `.env`, which is gitignored.
- Scripts support both direct environment variables and 1Password CLI for secure credential management.

## License

MIT
