---
name: Shadcn UI & Blocks
description: This skill should be used when the user asks to "build a frontend", "create a landing page", "add shadcn components", "install shadcn blocks", "set up shadcn", "add a hero section", "add pricing section", "build a UI with Tailwind", "use shadcnblocks", "add UI blocks", "add a contact form", "build a dashboard", "create an ecommerce page", "add a navbar", "add a footer", or is building any frontend that could leverage shadcn/ui components and Tailwind CSS. It provides knowledge of 1,338 premium blocks and 1,189 free components from ShadcnBlocks, enabling intelligent selection and installation of the right UI elements for any frontend task.
---

# Shadcn UI & ShadcnBlocks Integration

This skill enables building polished frontends using [shadcn/ui](https://ui.shadcn.com/) components and premium [ShadcnBlocks](https://shadcnblocks.com/) templates. Its primary capability is **knowing which block or component to use** for any given UI need, then handling setup and installation.

## When to Use

Activate this skill when:
- Creating a new frontend, landing page, marketing site, or app UI
- The project uses or should use React/Next.js with Tailwind CSS
- Pre-built UI sections (hero, pricing, features, testimonials, etc.) would accelerate development
- The user needs a specific UI element (form, chart, dialog, navigation, etc.)
- The user mentions shadcn, shadcn/ui, shadcnblocks, or Tailwind-based UI components

## Blocks vs Components

| | Blocks | Components |
|---|--------|------------|
| **What** | Full page sections | Reusable UI elements |
| **Size** | Hero, pricing, footer, etc. | Buttons, inputs, dialogs, etc. |
| **Count** | 1,338 across 71 categories | 1,189 across 60+ groups |
| **Access** | Premium (API key required) | Free |
| **Install** | `@shadcnblocks/<name><number>` | `@shadcnblocks/<type>-<style>-<number>` |

**Use blocks** to compose full page layouts from pre-built sections.
**Use components** for individual UI elements inside custom code.

## Selecting the Right Block

Consult `references/block-catalog.md` for the full catalog. Key decision guide:

### Marketing & Landing Pages
| Need | Category | Recommended |
|------|----------|-------------|
| Page hero | `hero` (175 variants) | `hero1` (classic 2-col), `hero125` (modern) |
| Feature showcase | `feature` (272 variants) | `feature1` (grid), `feature8` (alternating) |
| Pricing page | `pricing` (35 variants) | `pricing3` (cards), `pricing11` (comparison) |
| Customer proof | `testimonial` (28 variants) | `testimonial1` (quotes) |
| Call to action | `cta` (26 variants) | `cta1` (simple CTA) |
| FAQ section | `faq` (16 variants) | `faq1` (accordion) |
| Stats/metrics | `stats` (18 variants) | `stats1` |
| Partner logos | `logos` (13 variants) | `logos1` |
| Comparisons | `compare` (10 variants) | `compare1` |

### Navigation & Layout
| Need | Category | Recommended |
|------|----------|-------------|
| Site navigation | `navbar` (18 variants) | `navbar1` |
| Site footer | `footer` (25 variants) | `footer1` |
| Announcement bar | `banner` (7 variants) | `banner1` |
| Sale/promo bar | `promo-banner` (7 variants) | `promo-banner1` |

### Content & Blog
| Need | Category | Recommended |
|------|----------|-------------|
| Blog listing | `blog` (22 variants) | `blog1` |
| Blog post page | `blogpost` (7 variants) | `blogpost1` |
| Changelog | `changelog` (7 variants) | `changelog1` |
| Code snippets | `code-example` (5 variants) | `code-example1` |

### About & Team
| Need | Category | Recommended |
|------|----------|-------------|
| About section | `about` (17 variants) | `about1` |
| Team page | `team` (14 variants) | `team1` |
| Company timeline | `timeline` (15 variants) | `timeline1` |
| Job listings | `careers` (9 variants) | `careers1` |
| Contact page | `contact` (17 variants) | `contact1` |

### Ecommerce
| Need | Category | Recommended |
|------|----------|-------------|
| Product cards | `product-card` (10 variants) | `product-card1` |
| Product listing | `product-list` (10 variants) | `product-list1` |
| Product detail | `product-detail` (10 variants) | `product-detail1` |
| Shopping cart | `shopping-cart` (11 variants) | `shopping-cart1` |
| Checkout | `checkout` (6 variants) | `checkout1` |
| Order history | `order-history` (5 variants) | `order-history1` |

### App & Dashboard
| Need | Category | Recommended |
|------|----------|-------------|
| Dashboard charts | `chart-card` (27 variants) | `chart-card10` |
| Data tables | `data-table` (32 variants) | `data-table1` |
| App sidebar | `sidebar` (21 variants) | `sidebar1` |
| App shell layout | `application-shell` (14 variants) | `application-shell1` |
| User profile | `user-profile` (12 variants) | `user-profile1` |

### Portfolio
| Need | Category | Recommended |
|------|----------|-------------|
| Image gallery | `gallery` (48 variants) | `gallery1` |
| Project listing | `projects` (25 variants) | `projects1` |
| Project detail | `project` (33 variants) | `project1` |
| Case studies | `case-studies` (6 variants) | `case-studies1` |

### Visual & Decorative
| Need | Category | Recommended |
|------|----------|-------------|
| Background patterns | `background-pattern` (40 variants) | `background-pattern1` |
| Animated shaders | `shader` (10 variants) | `shader1` |
| Bento grid layout | `bento` (8 variants) | `bento1` |

## Selecting the Right Component

Consult `references/component-catalog.md` for the full catalog. Key groups:

| Need | Component Group | Example |
|------|----------------|---------|
| Form layout | Form (86) | `form-signin-1` |
| Labeled input | Field (38) | `field-standard-1` |
| Input with addon | Input Group (39) | `input-group-standard-1` |
| Searchable select | Combobox (42) | `combobox-standard-1` |
| File upload | File Upload (44) | `file-upload-standard-1` |
| Date picker | Date Picker (8) | `date-picker-standard-1` |
| Alert message | Alert (25) | `alert-error-1` |
| Confirm dialog | Alert Dialog (39) | `alert-dialog-standard-1` |
| Loading skeleton | Skeleton (30) | `skeleton-standard-1` |
| Toast notification | Sonner (24) | `sonner-standard-1` |
| Empty state | Empty (22) | `empty-standard-1` |
| Modal dialog | Dialog (17) | `dialog-standard-1` |
| Side panel | Sheet (29) / Drawer (22) | `sheet-standard-1` |
| Accordion | Accordion (21) | `accordion-standard-1` |
| Data chart | Chart (70) | `chart-standard-1` |
| Command palette | Command (21) | `command-standard-1` |
| Dropdown menu | Dropdown Menu (30) | `dropdown-menu-standard-1` |
| Keyboard shortcuts | KBD (39) | `kbd-standard-1` |

## Core Workflow

### 1. Ensure Project Foundation

Verify the project has shadcn/ui initialized. If not:

```bash
npx shadcn@latest init
```

This creates `components.json` in the project root.

### 2. Configure ShadcnBlocks Registry

Check if `components.json` already has the `@shadcnblocks` registry. If not, run:

```bash
bash "${CLAUDE_PLUGIN_ROOT}/skills/shadcn-ui/scripts/setup-shadcnblocks.sh" .
```

This adds the `@shadcnblocks` registry to `components.json` and sets `SHADCNBLOCKS_API_KEY` in `.env`.

If the script can't run (e.g., `jq` missing), configure manually:

1. Add to `.env`: `SHADCNBLOCKS_API_KEY=<key>`
2. Add registry to `components.json`:
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

### 3. Choose and Install Blocks/Components

Select from the catalogs based on the user's need, then install:

```bash
# Blocks (full page sections)
npx shadcn add @shadcnblocks/hero1
npx shadcn add @shadcnblocks/pricing3

# Components (UI elements)
npx shadcn add @shadcnblocks/accordion-standard-1
npx shadcn add @shadcnblocks/file-upload-standard-1
```

### 4. Compose the Page

Import and compose blocks in the page layout:

```tsx
import { Navbar1 } from "@/components/navbar1";
import { Hero1 } from "@/components/hero1";
import { Feature1 } from "@/components/feature1";
import { Footer1 } from "@/components/footer1";

export default function LandingPage() {
  return (
    <>
      <Navbar1 />
      <Hero1 />
      <Feature1 />
      <Footer1 />
    </>
  );
}
```

Blocks are fully editable source code, not locked dependencies. Customize props and content after installation.

## Landing Page Assembly Pattern

For a typical marketing landing page:

```bash
npx shadcn add @shadcnblocks/navbar1
npx shadcn add @shadcnblocks/hero1
npx shadcn add @shadcnblocks/logos1
npx shadcn add @shadcnblocks/feature1
npx shadcn add @shadcnblocks/stats1
npx shadcn add @shadcnblocks/testimonial1
npx shadcn add @shadcnblocks/pricing3
npx shadcn add @shadcnblocks/faq1
npx shadcn add @shadcnblocks/cta1
npx shadcn add @shadcnblocks/footer1
```

## API Key Management

The ShadcnBlocks API key can be provided in multiple ways (checked in order):

1. **Environment variable** (simplest): Set `SHADCNBLOCKS_API_KEY` in your shell or `.env` file
2. **1Password CLI**: The helper script uses `op read` to retrieve the key. Set `OP_SHADCNBLOCKS_REF` to your 1Password reference path, or it defaults to `op://Platform Infra/ShadcnBlocks API Key/credential`

Retrieve the key using the helper script:
```bash
bash "${CLAUDE_PLUGIN_ROOT}/skills/shadcn-ui/scripts/get-api-key.sh"
```

**Security:** Never hardcode the API key in source files. Always use `.env` with `SHADCNBLOCKS_API_KEY` and ensure `.env` is in `.gitignore`.

## Troubleshooting

| Issue | Resolution |
|-------|-----------|
| Auth error on install | Verify `SHADCNBLOCKS_API_KEY` is set in `.env` with a valid key |
| Registry not found | Check `registries` key exists in `components.json` |
| `components.json` missing | Run `npx shadcn@latest init` |
| 1Password access | Run `op signin`; verify vault with `op vault list` |
| Block not found | Check block name at https://shadcnblocks.com |

## Reference Files

- **`references/block-catalog.md`** — Full catalog of 1,338 blocks across 71 categories with variant numbers and install commands
- **`references/component-catalog.md`** — Full catalog of 1,189 components across 60+ groups with install syntax
- **`references/setup-guide.md`** — Detailed step-by-step setup with troubleshooting

## Scripts

- **`scripts/setup-shadcnblocks.sh`** — Automated project setup (retrieves key, configures registry)
- **`scripts/get-api-key.sh`** — Retrieve API key (env var or 1Password)
