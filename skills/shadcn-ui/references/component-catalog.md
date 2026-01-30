# ShadcnBlocks Component Catalog

> 1,189 components across 60+ groups. Browse visually at https://shadcnblocks.com/explorer/components

## Blocks vs Components

- **Blocks** are full page sections (hero, pricing, footer) — self-contained layouts you compose into pages.
- **Components** are smaller, reusable UI elements (buttons, inputs, accordions) — building blocks used inside blocks or on their own.

All components are **free** and don't require a paid plan.

## Install Syntax

Components use a `type/variant-name` path:

```bash
npx shadcn add @shadcnblocks/<variant-name>
```

Component variant names follow the pattern `<type>-<style>-<number>` (e.g., `accordion-form-1`, `alert-error-3`, `button-icon-5`).

## Archetypes

| Archetype | Count | Description |
|-----------|-------|-------------|
| UI | 1,184 | General interface components |
| Forms | 189 | Form inputs, fields, and controls |

---

## Component Groups

### Form & Input Components

#### Form (86 variants)
Form layouts, multi-step forms, and form patterns.
```bash
npx shadcn add @shadcnblocks/form-signin-1
```

#### Field (38 variants)
Labeled input fields with validation states, hints, and error messages.
```bash
npx shadcn add @shadcnblocks/field-standard-1
```

#### Input Group (39 variants)
Input fields with prefixes, suffixes, icons, and addons.
```bash
npx shadcn add @shadcnblocks/input-group-standard-1
```

#### Input (24 variants)
Standalone input elements with various styles and states.
```bash
npx shadcn add @shadcnblocks/input-standard-1
```

#### Textarea (13 variants)
Multi-line text input areas with counters and auto-resize.
```bash
npx shadcn add @shadcnblocks/textarea-standard-1
```

#### Checkbox (12 variants)
Checkbox inputs with labels, descriptions, and group layouts.
```bash
npx shadcn add @shadcnblocks/checkbox-standard-1
```

#### Radio Group (9 variants)
Radio button groups with various layout styles.
```bash
npx shadcn add @shadcnblocks/radio-group-standard-1
```

#### Switch (19 variants)
Toggle switch controls for boolean settings.
```bash
npx shadcn add @shadcnblocks/switch-standard-1
```

#### Slider (29 variants)
Range sliders for numeric value selection.
```bash
npx shadcn add @shadcnblocks/slider-standard-1
```

#### Combobox (42 variants)
Searchable select dropdowns with autocomplete.
```bash
npx shadcn add @shadcnblocks/combobox-standard-1
```

#### Date Picker (8 variants)
Date selection inputs with calendar popups.
```bash
npx shadcn add @shadcnblocks/date-picker-standard-1
```

#### Input OTP (20 variants)
One-time password and verification code inputs.
```bash
npx shadcn add @shadcnblocks/input-otp-standard-1
```

#### File Upload (44 variants)
File upload dropzones, file pickers, and progress indicators.
```bash
npx shadcn add @shadcnblocks/file-upload-standard-1
```

#### Label (8 variants)
Form labels with required indicators and helper text.
```bash
npx shadcn add @shadcnblocks/label-standard-1
```

#### Emoji Picker (6 variants)
Emoji selection popover components.
```bash
npx shadcn add @shadcnblocks/emoji-picker-standard-1
```

---

### Display & Feedback Components

#### Alert (25 variants)
Alert messages in error, info, success, and standard styles.
```bash
npx shadcn add @shadcnblocks/alert-error-1
npx shadcn add @shadcnblocks/alert-info-1
npx shadcn add @shadcnblocks/alert-success-1
npx shadcn add @shadcnblocks/alert-standard-1
```

#### Alert Dialog (39 variants)
Confirmation modals and destructive action dialogs.
```bash
npx shadcn add @shadcnblocks/alert-dialog-standard-1
```

#### Badge (20 variants)
Status badges, tags, and labels.
```bash
npx shadcn add @shadcnblocks/badge-standard-1
```

#### Skeleton (30 variants)
Loading placeholder skeletons for content.
```bash
npx shadcn add @shadcnblocks/skeleton-standard-1
```

#### Spinner (17 variants)
Loading spinners and activity indicators.
```bash
npx shadcn add @shadcnblocks/spinner-standard-1
```

#### Progress (20 variants)
Progress bars and completion indicators.
```bash
npx shadcn add @shadcnblocks/progress-standard-1
```

#### Empty (22 variants)
Empty state illustrations and messages.
```bash
npx shadcn add @shadcnblocks/empty-standard-1
```

#### Sonner (24 variants)
Toast notification components (uses Sonner library).
```bash
npx shadcn add @shadcnblocks/sonner-standard-1
```

#### Rating (2 variants)
Star rating display and input components.
```bash
npx shadcn add @shadcnblocks/rating-standard-1
```

#### Price (2 variants)
Price display with currency formatting.
```bash
npx shadcn add @shadcnblocks/price-standard-1
```

---

### Navigation Components

#### Navigation Menu (20 variants)
Top-level navigation menus with dropdowns and mega menus.
```bash
npx shadcn add @shadcnblocks/navigation-menu-standard-1
```

#### Breadcrumb (14 variants)
Breadcrumb navigation trails.
```bash
npx shadcn add @shadcnblocks/breadcrumb-standard-1
```

#### Pagination (19 variants)
Page navigation controls for lists and tables.
```bash
npx shadcn add @shadcnblocks/pagination-standard-1
```

#### Tabs (11 variants)
Tabbed content navigation.
```bash
npx shadcn add @shadcnblocks/tabs-standard-1
```

#### Menubar (10 variants)
Application menu bars with nested menus.
```bash
npx shadcn add @shadcnblocks/menubar-standard-1
```

#### Command (21 variants)
Command palette / search dialog components (Cmd+K style).
```bash
npx shadcn add @shadcnblocks/command-standard-1
```

#### Context Menu (27 variants)
Right-click context menus.
```bash
npx shadcn add @shadcnblocks/context-menu-standard-1
```

#### Dropdown Menu (30 variants)
Dropdown action menus triggered by buttons.
```bash
npx shadcn add @shadcnblocks/dropdown-menu-standard-1
```

---

### Layout & Container Components

#### Accordion (21 variants)
Collapsible content sections in form, multi-level, standard, subtitle, and tabs styles.
```bash
npx shadcn add @shadcnblocks/accordion-standard-1
npx shadcn add @shadcnblocks/accordion-form-1
npx shadcn add @shadcnblocks/accordion-multi-level-1
npx shadcn add @shadcnblocks/accordion-tabs-1
```

#### Card (4 variants)
Content card containers with header, body, and footer.
```bash
npx shadcn add @shadcnblocks/card-standard-1
```

#### Collapsible (23 variants)
Single collapsible sections.
```bash
npx shadcn add @shadcnblocks/collapsible-standard-1
```

#### Dialog (17 variants)
Modal dialog windows.
```bash
npx shadcn add @shadcnblocks/dialog-standard-1
```

#### Drawer (22 variants)
Slide-out drawer panels from edges.
```bash
npx shadcn add @shadcnblocks/drawer-standard-1
```

#### Sheet (29 variants)
Side panel overlays for forms and details.
```bash
npx shadcn add @shadcnblocks/sheet-standard-1
```

#### Popover (15 variants)
Floating content panels triggered by click.
```bash
npx shadcn add @shadcnblocks/popover-standard-1
```

#### Hover Card (20 variants)
Content cards triggered by hover.
```bash
npx shadcn add @shadcnblocks/hover-card-standard-1
```

#### Tooltip (8 variants)
Hover tooltip information displays.
```bash
npx shadcn add @shadcnblocks/tooltip-standard-1
```

#### Scroll Area (8 variants)
Custom scrollbar containers.
```bash
npx shadcn add @shadcnblocks/scroll-area-standard-1
```

#### Separator (18 variants)
Visual dividers between content sections.
```bash
npx shadcn add @shadcnblocks/separator-standard-1
```

#### Aspect Ratio (7 variants)
Containers that maintain a fixed aspect ratio.
```bash
npx shadcn add @shadcnblocks/aspect-ratio-standard-1
```

#### Carousel (4 variants)
Content carousels and sliders.
```bash
npx shadcn add @shadcnblocks/carousel-standard-1
```

---

### Button & Action Components

#### Button (35 variants)
Button styles including primary, secondary, outline, ghost, icon, and loading states.
```bash
npx shadcn add @shadcnblocks/button-standard-1
```

#### Button Group (39 variants)
Grouped button sets for related actions.
```bash
npx shadcn add @shadcnblocks/button-group-standard-1
```

#### Toggle (7 variants)
Toggle buttons for on/off states.
```bash
npx shadcn add @shadcnblocks/toggle-standard-1
```

#### Toggle Group (7 variants)
Groups of toggle buttons for multi-select.
```bash
npx shadcn add @shadcnblocks/toggle-group-standard-1
```

#### KBD (39 variants)
Keyboard shortcut display components.
```bash
npx shadcn add @shadcnblocks/kbd-standard-1
```

#### Border Button (1 variant)
Animated border button effect.
```bash
npx shadcn add @shadcnblocks/border-button-standard-1
```

---

### Data Display Components

#### Avatar (34 variants)
User avatar images with fallbacks.
```bash
npx shadcn add @shadcnblocks/avatar-standard-1
```

#### Avatar Group (9 variants)
Stacked or overlapping avatar collections.
```bash
npx shadcn add @shadcnblocks/avatar-group-standard-1
```

#### Chart (70 variants)
Data visualization charts (line, bar, area, pie, radar, etc.).
```bash
npx shadcn add @shadcnblocks/chart-standard-1
```

#### Data Table (8 variants)
Sortable, filterable data tables.
```bash
npx shadcn add @shadcnblocks/data-table-standard-1
```

#### Table (8 variants)
Simple styled tables.
```bash
npx shadcn add @shadcnblocks/table-standard-1
```

#### Calendar (16 variants)
Calendar date displays and pickers.
```bash
npx shadcn add @shadcnblocks/calendar-standard-1
```

#### Logo (3 variants)
Brand logo display components.
```bash
npx shadcn add @shadcnblocks/logo-standard-1
```

#### Item (10 variants)
Generic list item layouts.
```bash
npx shadcn add @shadcnblocks/item-standard-1
```

#### Scrollable Tabslist (1 variant)
Horizontally scrollable tab lists for many tabs.
```bash
npx shadcn add @shadcnblocks/scrollable-tabslist-standard-1
```

---

## Quick Reference: Choosing the Right Component

| Need | Component Group | Example Variant |
|------|----------------|-----------------|
| Form layout | Form | `form-signin-1` |
| Text input with label | Field | `field-standard-1` |
| Input with icon/addon | Input Group | `input-group-standard-1` |
| Searchable dropdown | Combobox | `combobox-standard-1` |
| File uploads | File Upload | `file-upload-standard-1` |
| Date selection | Date Picker | `date-picker-standard-1` |
| Error/success message | Alert | `alert-error-1`, `alert-success-1` |
| Confirmation dialog | Alert Dialog | `alert-dialog-standard-1` |
| Loading state | Skeleton / Spinner | `skeleton-standard-1` |
| Toast notification | Sonner | `sonner-standard-1` |
| Empty state | Empty | `empty-standard-1` |
| Modal window | Dialog | `dialog-standard-1` |
| Side panel | Sheet / Drawer | `sheet-standard-1` |
| Collapsible sections | Accordion | `accordion-standard-1` |
| Data visualization | Chart | `chart-standard-1` |
| Command palette | Command | `command-standard-1` |
| Right-click menu | Context Menu | `context-menu-standard-1` |
| Page navigation | Pagination | `pagination-standard-1` |
| User avatar | Avatar | `avatar-standard-1` |
| Keyboard shortcuts | KBD | `kbd-standard-1` |
