# Block Index — Tagged Picks for Intelligent Selection

> Curated, tagged subset of blocks for the 10 highest-traffic sections. Used by the skill to narrow hundreds of options to 2-3 best-fit recommendations via 0-2 questions.

For the full untagged catalog, see `block-catalog.md`.

## How This Works

1. Claude infers constraints from the user's request (section, goal, layout hints)
2. If ambiguity remains, Claude asks 1-2 targeted questions using `selection_prompts`
3. The user's answers map to tag filters
4. Claude matches against the `blocks` entries below and returns 2-3 best picks with reasoning

---

## Tag Vocabulary

```yaml
layout:
  - centered           # Content centered, single column flow
  - split_left_media   # 2-col: media left, text right
  - split_right_media  # 2-col: text left, media right
  - grid_cards         # 3-4 column card grid
  - grid_icons         # Icon-driven grid (no large images)
  - bento              # Asymmetric/mixed-size grid
  - alternating        # Rows alternate text/media sides
  - stacked            # Vertically stacked sections
  - full_bleed         # Full-width background image/media
  - comparison_table   # Side-by-side comparison layout
  - sidebar            # Content with sidebar
  - multi_column       # 4+ columns of content
  - carousel           # Horizontally scrollable
  - timeline           # Sequential/chronological layout
  - masonry            # Pinterest-style varied heights

content_density:
  - minimal            # Few elements, lots of whitespace
  - standard           # Balanced content and space
  - rich               # Dense with many elements/details

tone:
  - minimal            # Clean, simple, lots of whitespace
  - modern             # Contemporary, sharp, current trends
  - bold               # High contrast, large type, dramatic
  - playful            # Rounded, colorful, friendly
  - enterprise         # Professional, structured, conservative
  - elegant            # Refined, subtle, sophisticated

goal:
  - awareness          # Brand/product introduction
  - explain            # Describe features/benefits
  - trust              # Social proof, credibility
  - convert            # Drive specific action (signup, purchase)
  - capture_leads      # Collect email/contact info
  - compare            # Help users evaluate options
  - navigate           # Wayfinding and site structure
  - support            # Help/FAQ/contact

cta_pattern:
  - none               # No call-to-action
  - single_primary     # One main button
  - primary_secondary  # Main + secondary button
  - form_capture       # Email/contact form
  - multi_action       # Multiple distinct actions
  - link_list          # Multiple text links

media:
  - none               # No images/media
  - screenshot         # Product/app screenshot
  - illustration       # Custom illustration or graphic
  - photo              # Photography
  - video              # Video embed or background
  - icons              # Icon-driven (no large media)
  - logos              # Brand/partner logos
  - avatars            # People photos/avatars
  - chart              # Data visualization

interaction:
  - static             # No interactive elements
  - accordion          # Expandable/collapsible sections
  - tabs               # Tabbed content switching
  - carousel           # Horizontally scrollable
  - toggle             # On/off or monthly/annual switch
  - hover              # Hover-reveal effects
  - filters            # Filterable content

items_count:
  - few                # 1-3 items
  - moderate           # 4-6 items
  - many               # 7+ items

complexity:
  - low                # Simple markup, quick to customize
  - medium             # Moderate markup, some configuration
  - high               # Complex markup, significant setup
```

---

## Selection Prompts

These are the 1-2 questions Claude asks when the user's request is ambiguous within a section. Each option maps to tag filters used to match blocks.

```yaml
selection_prompts:

  hero:
    question: "What style of hero section fits your page?"
    options:
      - label: "Centered headline with CTA buttons"
        description: "Clean, focused — great for SaaS and product launches"
        tags: { layout: [centered], cta_pattern: [single_primary, primary_secondary] }
      - label: "Split layout with product screenshot"
        description: "Show your product alongside the pitch — ideal for app landing pages"
        tags: { layout: [split_left_media, split_right_media], media: [screenshot] }
      - label: "Hero with email/lead capture form"
        description: "Convert visitors immediately — best for waitlists, newsletters, early access"
        tags: { cta_pattern: [form_capture] }
      - label: "Bold visual with background image or video"
        description: "High-impact first impression — great for creative, agency, or event sites"
        tags: { layout: [full_bleed], media: [photo, video] }

  feature:
    question: "How do you want to showcase your features?"
    options:
      - label: "Card grid (3-4 columns with icons)"
        description: "Classic feature grid — each feature gets its own card with icon and description"
        tags: { layout: [grid_cards, grid_icons], items_count: [moderate, many] }
      - label: "Alternating image + text rows"
        description: "Deep-dive into each feature with large visuals — great for product tours"
        tags: { layout: [alternating, split_left_media, split_right_media], media: [screenshot, illustration] }
      - label: "Bento / asymmetric grid"
        description: "Modern, editorial layout with mixed-size cards — visually distinctive"
        tags: { layout: [bento], tone: [modern, bold] }
      - label: "Simple icon list or checklist"
        description: "Compact, scannable — works well for benefit lists and comparisons"
        tags: { layout: [grid_icons, stacked], content_density: [minimal, standard] }

  pricing:
    question: "What pricing layout works best?"
    options:
      - label: "Pricing cards (2-4 tiers side by side)"
        description: "Standard tier cards — clear comparison with CTAs per plan"
        tags: { layout: [grid_cards], items_count: [few, moderate] }
      - label: "Comparison table with feature rows"
        description: "Detailed feature-by-feature comparison — best when tiers differ significantly"
        tags: { layout: [comparison_table] }
      - label: "Toggle between monthly/annual"
        description: "Interactive pricing with billing toggle — highlights annual savings"
        tags: { interaction: [toggle] }

  testimonial:
    question: "What type of social proof do you need?"
    options:
      - label: "Quote cards in a grid"
        description: "Multiple testimonials displayed at once — great for volume of proof"
        tags: { layout: [grid_cards], media: [avatars] }
      - label: "Featured single quote (large)"
        description: "One powerful testimonial front and center — high impact"
        tags: { layout: [centered], content_density: [minimal] }
      - label: "Scrollable carousel"
        description: "Many testimonials in compact space — swipe through quotes"
        tags: { layout: [carousel], interaction: [carousel] }
      - label: "Star ratings / review cards"
        description: "Ratings-focused — ideal for product reviews and aggregate scores"
        tags: { media: [avatars], goal: [trust] }

  cta:
    question: "What's the primary conversion goal?"
    options:
      - label: "Simple CTA with headline + button"
        description: "Clean, focused call to action — drives one clear next step"
        tags: { cta_pattern: [single_primary, primary_secondary], content_density: [minimal] }
      - label: "CTA with email capture form"
        description: "Collect leads inline — great for newsletters, waitlists"
        tags: { cta_pattern: [form_capture] }
      - label: "CTA with multiple actions"
        description: "Give visitors options — book demo, start trial, contact sales"
        tags: { cta_pattern: [multi_action] }

  faq:
    question: "How should FAQ items be displayed?"
    options:
      - label: "Accordion (expand/collapse)"
        description: "Compact, scannable — users click to reveal answers"
        tags: { interaction: [accordion], layout: [stacked] }
      - label: "Grid layout (all visible)"
        description: "All answers visible at once — good for fewer questions"
        tags: { layout: [grid_cards], interaction: [static] }
      - label: "Two-column with sidebar"
        description: "Categories on the left, questions on the right"
        tags: { layout: [sidebar] }

  navbar:
    question: "What navigation style do you need?"
    options:
      - label: "Simple navbar (logo + links + CTA)"
        description: "Clean top nav — works for most marketing sites"
        tags: { content_density: [minimal], cta_pattern: [single_primary] }
      - label: "Mega menu with dropdowns"
        description: "Rich navigation with categories — for sites with many pages"
        tags: { content_density: [rich], interaction: [hover] }
      - label: "App-style navbar with user menu"
        description: "Authenticated nav with avatar, notifications — for dashboards/apps"
        tags: { goal: [navigate], media: [avatars] }

  footer:
    question: "What footer layout do you prefer?"
    options:
      - label: "Multi-column with link groups"
        description: "Classic footer with organized link columns — Product, Company, Resources, etc."
        tags: { layout: [multi_column], content_density: [standard, rich] }
      - label: "Simple footer (logo + links + social)"
        description: "Compact single-row footer — works for smaller sites"
        tags: { layout: [centered], content_density: [minimal] }
      - label: "Footer with newsletter signup"
        description: "Includes email capture alongside links — maximize conversion"
        tags: { cta_pattern: [form_capture] }

  contact:
    question: "What contact layout do you need?"
    options:
      - label: "Contact form with info sidebar"
        description: "Form + address/phone/email displayed alongside"
        tags: { layout: [split_left_media, split_right_media], cta_pattern: [form_capture] }
      - label: "Contact form only (centered)"
        description: "Clean, focused form — no distractions"
        tags: { layout: [centered], cta_pattern: [form_capture] }
      - label: "Contact cards (email, phone, office)"
        description: "Multiple contact methods displayed as cards — no form"
        tags: { layout: [grid_cards], cta_pattern: [multi_action] }

  stats:
    question: "How should metrics be displayed?"
    options:
      - label: "Number counters in a row"
        description: "Bold numbers with labels — classic stats strip"
        tags: { layout: [grid_cards], content_density: [minimal] }
      - label: "Stats with icons and descriptions"
        description: "More context per metric — includes supporting text"
        tags: { layout: [grid_icons], content_density: [standard] }
      - label: "Stats integrated with content"
        description: "Numbers woven into a narrative section — more editorial"
        tags: { layout: [split_left_media, split_right_media], content_density: [rich] }
```

---

## Curated Block Entries

Each entry is tagged across multiple dimensions. Claude matches user constraints against these tags to find the best 2-3 recommendations.

### Hero Section Picks

```yaml
hero_blocks:
  - id: hero1
    why: "Classic 2-column hero — badge, heading, dual CTAs, and product image"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [awareness, convert]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero5
    why: "Centered hero with large heading and single CTA — minimal and focused"
    layout: [centered]
    content_density: minimal
    tone: [minimal, modern]
    goal: [awareness]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero10
    why: "Split layout with phone/device mockup — ideal for mobile app landing pages"
    layout: [split_left_media]
    content_density: standard
    tone: [modern]
    goal: [awareness, convert]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero25
    why: "Full-width background image hero with overlay text — high visual impact"
    layout: [full_bleed]
    content_density: minimal
    tone: [bold, elegant]
    goal: [awareness]
    cta_pattern: primary_secondary
    media: [photo]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero30
    why: "Centered hero with email capture form — built for lead generation"
    layout: [centered]
    content_density: standard
    tone: [modern]
    goal: [capture_leads, convert]
    cta_pattern: form_capture
    media: [none]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: hero40
    why: "Hero with partner/trust logos strip below — combines intro with social proof"
    layout: [centered]
    content_density: standard
    tone: [enterprise, modern]
    goal: [awareness, trust]
    cta_pattern: primary_secondary
    media: [logos]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero80
    why: "Split hero with video embed — show don't tell with product demo"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [awareness, explain]
    cta_pattern: primary_secondary
    media: [video]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: hero125
    why: "Modern centered hero with gradient accents — popular choice for SaaS"
    layout: [centered]
    content_density: standard
    tone: [modern, bold]
    goal: [awareness, convert]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero160
    why: "Animated/gradient background hero — eye-catching for creative brands"
    layout: [centered]
    content_density: minimal
    tone: [bold, playful]
    goal: [awareness]
    cta_pattern: single_primary
    media: [illustration]
    interaction: [hover]
    items_count: few
    complexity: medium

  - id: hero200
    why: "Multi-CTA hero with feature highlights — packed landing page opener"
    layout: [split_right_media]
    content_density: rich
    tone: [enterprise]
    goal: [awareness, convert, explain]
    cta_pattern: multi_action
    media: [screenshot]
    interaction: [static]
    items_count: moderate
    complexity: medium

  - id: hero230
    why: "Bold typographic hero — text-focused with strong visual hierarchy"
    layout: [centered]
    content_density: minimal
    tone: [bold, elegant]
    goal: [awareness]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: hero245
    why: "Dashboard preview hero — shows full app interface as the hero image"
    layout: [stacked]
    content_density: standard
    tone: [modern, enterprise]
    goal: [awareness, explain]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low
```

### Feature Section Picks

```yaml
feature_blocks:
  - id: feature1
    why: "2-column split with title, description, dual CTAs, and image"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [explain]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: feature3
    why: "3-column card grid — each card has icon, title, text, and image"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [explain]
    cta_pattern: link_list
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: feature5
    why: "Bento-style asymmetric grid with cards of varying widths"
    layout: [bento]
    content_density: standard
    tone: [modern, bold]
    goal: [explain]
    cta_pattern: none
    media: [icons, screenshot]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: feature8
    why: "Title + 2 feature showcase cards with logos and learn-more links"
    layout: [grid_cards]
    content_density: standard
    tone: [enterprise]
    goal: [explain]
    cta_pattern: link_list
    media: [logos]
    interaction: [static]
    items_count: few
    complexity: low

  - id: feature10
    why: "4-column icon grid — 'Why Us?' style with icon, title, and description per item"
    layout: [grid_icons]
    content_density: minimal
    tone: [minimal, modern]
    goal: [explain, trust]
    cta_pattern: none
    media: [icons]
    interaction: [static]
    items_count: moderate
    complexity: low

  - id: feature14
    why: "2-column alternating sections with checkmark feature lists and images"
    layout: [alternating]
    content_density: standard
    tone: [enterprise, modern]
    goal: [explain]
    cta_pattern: none
    media: [screenshot]
    interaction: [static]
    items_count: moderate
    complexity: medium

  - id: feature25
    why: "4-column layout with checkmark lists — compact benefit overview"
    layout: [multi_column]
    content_density: standard
    tone: [enterprise]
    goal: [explain]
    cta_pattern: none
    media: [none]
    interaction: [static]
    items_count: many
    complexity: low

  - id: feature42
    why: "Tabbed feature explorer — users click tabs to see different feature details"
    layout: [stacked]
    content_density: rich
    tone: [modern]
    goal: [explain]
    cta_pattern: none
    media: [screenshot]
    interaction: [tabs]
    items_count: moderate
    complexity: high

  - id: feature50
    why: "Large single-feature spotlight with image and detailed description"
    layout: [split_left_media]
    content_density: standard
    tone: [elegant]
    goal: [explain]
    cta_pattern: single_primary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: feature85
    why: "Icon grid with 6+ features — compact overview with minimal descriptions"
    layout: [grid_icons]
    content_density: minimal
    tone: [minimal]
    goal: [explain]
    cta_pattern: none
    media: [icons]
    interaction: [static]
    items_count: many
    complexity: low

  - id: feature101
    why: "Alternating rows with large screenshots — product tour style"
    layout: [alternating]
    content_density: rich
    tone: [modern]
    goal: [explain]
    cta_pattern: link_list
    media: [screenshot]
    interaction: [static]
    items_count: moderate
    complexity: medium

  - id: feature120
    why: "Stats-integrated feature section — numbers alongside feature descriptions"
    layout: [grid_cards]
    content_density: rich
    tone: [enterprise, bold]
    goal: [explain, trust]
    cta_pattern: none
    media: [icons]
    interaction: [static]
    items_count: moderate
    complexity: medium

  - id: feature140
    why: "Comparison-style features — before/after or us vs. them layout"
    layout: [comparison_table]
    content_density: standard
    tone: [enterprise]
    goal: [explain, compare]
    cta_pattern: single_primary
    media: [icons]
    interaction: [static]
    items_count: moderate
    complexity: medium

  - id: feature200
    why: "Video-integrated feature — embedded product demo with supporting text"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [explain]
    cta_pattern: single_primary
    media: [video]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: feature280
    why: "Minimal stacked features — clean vertical flow with subtle dividers"
    layout: [stacked]
    content_density: minimal
    tone: [minimal, elegant]
    goal: [explain]
    cta_pattern: none
    media: [icons]
    interaction: [static]
    items_count: moderate
    complexity: low
```

### Pricing Section Picks

```yaml
pricing_blocks:
  - id: pricing1
    why: "Simple 2-tier pricing cards with feature lists and CTAs"
    layout: [grid_cards]
    content_density: standard
    tone: [minimal, modern]
    goal: [compare, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: pricing3
    why: "3-tier pricing cards with highlighted recommended plan"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [compare, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: pricing8
    why: "Pricing with monthly/annual toggle — shows savings for annual billing"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [compare, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [toggle]
    items_count: few
    complexity: medium

  - id: pricing11
    why: "Feature comparison table — detailed row-by-row feature breakdown per tier"
    layout: [comparison_table]
    content_density: rich
    tone: [enterprise]
    goal: [compare, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: many
    complexity: medium

  - id: pricing15
    why: "Single featured plan with detailed feature list — good for single-product"
    layout: [centered]
    content_density: standard
    tone: [minimal]
    goal: [convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: pricing20
    why: "Pricing cards with expandable feature details per tier"
    layout: [grid_cards]
    content_density: rich
    tone: [modern]
    goal: [compare, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [accordion]
    items_count: few
    complexity: medium

  - id: pricing30
    why: "Enterprise pricing with custom plan CTA — includes contact sales option"
    layout: [grid_cards]
    content_density: standard
    tone: [enterprise]
    goal: [compare, convert, capture_leads]
    cta_pattern: multi_action
    media: [none]
    interaction: [static]
    items_count: moderate
    complexity: medium
```

### Testimonial Section Picks

```yaml
testimonial_blocks:
  - id: testimonial1
    why: "Grid of quote cards with avatars — shows breadth of social proof"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [trust]
    cta_pattern: none
    media: [avatars]
    interaction: [static]
    items_count: moderate
    complexity: low

  - id: testimonial3
    why: "Single large featured quote with photo — high-impact single testimonial"
    layout: [centered]
    content_density: minimal
    tone: [elegant]
    goal: [trust]
    cta_pattern: none
    media: [avatars]
    interaction: [static]
    items_count: few
    complexity: low

  - id: testimonial8
    why: "Testimonial carousel — swipe through multiple quotes in compact space"
    layout: [carousel]
    content_density: standard
    tone: [modern]
    goal: [trust]
    cta_pattern: none
    media: [avatars]
    interaction: [carousel]
    items_count: many
    complexity: medium

  - id: testimonial10
    why: "Masonry grid of testimonials — varied card heights for visual interest"
    layout: [masonry]
    content_density: standard
    tone: [modern, playful]
    goal: [trust]
    cta_pattern: none
    media: [avatars]
    interaction: [static]
    items_count: many
    complexity: medium

  - id: testimonial15
    why: "Quote with star ratings — reviews-style social proof"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [trust]
    cta_pattern: none
    media: [avatars]
    interaction: [static]
    items_count: moderate
    complexity: low

  - id: testimonial20
    why: "Video testimonials — embedded customer video reviews"
    layout: [grid_cards]
    content_density: standard
    tone: [modern, enterprise]
    goal: [trust]
    cta_pattern: none
    media: [video, avatars]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: testimonial25
    why: "Logo bar + quote — combines partner logos with featured testimonial"
    layout: [stacked]
    content_density: standard
    tone: [enterprise]
    goal: [trust]
    cta_pattern: none
    media: [logos, avatars]
    interaction: [static]
    items_count: few
    complexity: low
```

### CTA Section Picks

```yaml
cta_blocks:
  - id: cta1
    why: "Simple centered CTA — headline, subtext, and primary button"
    layout: [centered]
    content_density: minimal
    tone: [minimal, modern]
    goal: [convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: cta5
    why: "CTA with background image/gradient — visually prominent section"
    layout: [centered]
    content_density: minimal
    tone: [bold]
    goal: [convert]
    cta_pattern: primary_secondary
    media: [photo]
    interaction: [static]
    items_count: few
    complexity: low

  - id: cta10
    why: "CTA with email capture form inline — newsletter/waitlist signup"
    layout: [centered]
    content_density: standard
    tone: [modern]
    goal: [capture_leads]
    cta_pattern: form_capture
    media: [none]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: cta15
    why: "Split CTA with image — text on one side, visual on the other"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [convert]
    cta_pattern: primary_secondary
    media: [screenshot]
    interaction: [static]
    items_count: few
    complexity: low

  - id: cta20
    why: "Multi-action CTA — book demo, start trial, and contact sales options"
    layout: [grid_cards]
    content_density: standard
    tone: [enterprise]
    goal: [convert]
    cta_pattern: multi_action
    media: [icons]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: cta26
    why: "CTA with social proof — includes testimonial snippet or user count"
    layout: [centered]
    content_density: standard
    tone: [modern]
    goal: [convert, trust]
    cta_pattern: single_primary
    media: [avatars]
    interaction: [static]
    items_count: few
    complexity: low
```

### FAQ Section Picks

```yaml
faq_blocks:
  - id: faq1
    why: "Classic accordion FAQ — click to expand answers, compact layout"
    layout: [stacked]
    content_density: standard
    tone: [minimal, modern]
    goal: [support]
    cta_pattern: none
    media: [none]
    interaction: [accordion]
    items_count: moderate
    complexity: low

  - id: faq5
    why: "Two-column FAQ grid — all answers visible, no accordion needed"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [support]
    cta_pattern: none
    media: [none]
    interaction: [static]
    items_count: moderate
    complexity: low

  - id: faq10
    why: "FAQ with category sidebar — organized by topic with left navigation"
    layout: [sidebar]
    content_density: rich
    tone: [enterprise]
    goal: [support]
    cta_pattern: none
    media: [none]
    interaction: [accordion]
    items_count: many
    complexity: medium

  - id: faq14
    why: "FAQ with contact CTA — questions section plus 'still need help?' prompt"
    layout: [stacked]
    content_density: standard
    tone: [modern]
    goal: [support, convert]
    cta_pattern: single_primary
    media: [none]
    interaction: [accordion]
    items_count: moderate
    complexity: low
```

### Navbar Picks

```yaml
navbar_blocks:
  - id: navbar1
    why: "Simple navbar — logo, horizontal links, and CTA button"
    layout: [centered]
    content_density: minimal
    tone: [minimal, modern]
    goal: [navigate]
    cta_pattern: single_primary
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: navbar5
    why: "Navbar with dropdown menus — standard multi-level navigation"
    layout: [centered]
    content_density: standard
    tone: [modern]
    goal: [navigate]
    cta_pattern: single_primary
    media: [none]
    interaction: [hover]
    items_count: moderate
    complexity: medium

  - id: navbar9
    why: "Mega menu navbar — rich dropdown panels with icons and descriptions"
    layout: [centered]
    content_density: rich
    tone: [enterprise]
    goal: [navigate]
    cta_pattern: single_primary
    media: [icons]
    interaction: [hover]
    items_count: many
    complexity: high

  - id: navbar14
    why: "Centered logo navbar — logo in the middle, links on both sides"
    layout: [centered]
    content_density: minimal
    tone: [elegant]
    goal: [navigate]
    cta_pattern: none
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: navbar22
    why: "App-style navbar — includes user avatar, notifications, and search"
    layout: [centered]
    content_density: standard
    tone: [modern]
    goal: [navigate]
    cta_pattern: none
    media: [avatars]
    interaction: [hover]
    items_count: moderate
    complexity: medium
```

### Footer Picks

```yaml
footer_blocks:
  - id: footer1
    why: "Multi-column footer — logo, link groups (Product, Company, Resources), and social icons"
    layout: [multi_column]
    content_density: standard
    tone: [modern]
    goal: [navigate]
    cta_pattern: link_list
    media: [none]
    interaction: [static]
    items_count: many
    complexity: low

  - id: footer5
    why: "Simple footer — single row with logo, few links, and social icons"
    layout: [centered]
    content_density: minimal
    tone: [minimal]
    goal: [navigate]
    cta_pattern: link_list
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: footer10
    why: "Footer with newsletter signup — email capture form alongside link columns"
    layout: [multi_column]
    content_density: standard
    tone: [modern]
    goal: [navigate, capture_leads]
    cta_pattern: form_capture
    media: [none]
    interaction: [static]
    items_count: many
    complexity: medium

  - id: footer15
    why: "Large footer with CTA section — includes call-to-action banner above links"
    layout: [stacked]
    content_density: rich
    tone: [enterprise]
    goal: [navigate, convert]
    cta_pattern: primary_secondary
    media: [none]
    interaction: [static]
    items_count: many
    complexity: medium

  - id: footer25
    why: "Minimal footer — copyright, legal links, and language selector only"
    layout: [centered]
    content_density: minimal
    tone: [minimal]
    goal: [navigate]
    cta_pattern: none
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low
```

### Contact Section Picks

```yaml
contact_blocks:
  - id: contact1
    why: "Contact form with info sidebar — form on left, address/phone/email on right"
    layout: [split_right_media]
    content_density: standard
    tone: [modern]
    goal: [support, capture_leads]
    cta_pattern: form_capture
    media: [none]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: contact5
    why: "Centered contact form — clean, focused form with no sidebar"
    layout: [centered]
    content_density: minimal
    tone: [minimal, modern]
    goal: [capture_leads]
    cta_pattern: form_capture
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: contact10
    why: "Contact cards grid — email, phone, office location as separate cards"
    layout: [grid_cards]
    content_density: standard
    tone: [modern]
    goal: [support]
    cta_pattern: multi_action
    media: [icons]
    interaction: [static]
    items_count: few
    complexity: low

  - id: contact16
    why: "Contact with embedded map — form alongside an interactive map"
    layout: [split_left_media]
    content_density: standard
    tone: [enterprise]
    goal: [support, capture_leads]
    cta_pattern: form_capture
    media: [illustration]
    interaction: [static]
    items_count: few
    complexity: high
```

### Stats Section Picks

```yaml
stats_blocks:
  - id: stats1
    why: "Horizontal stats bar — bold numbers in a single row"
    layout: [grid_cards]
    content_density: minimal
    tone: [bold, modern]
    goal: [trust]
    cta_pattern: none
    media: [none]
    interaction: [static]
    items_count: few
    complexity: low

  - id: stats5
    why: "Stats with icons and supporting descriptions"
    layout: [grid_icons]
    content_density: standard
    tone: [modern]
    goal: [trust, explain]
    cta_pattern: none
    media: [icons]
    interaction: [static]
    items_count: moderate
    complexity: low

  - id: stats10
    why: "Stats integrated into a split section with image"
    layout: [split_right_media]
    content_density: standard
    tone: [enterprise]
    goal: [trust]
    cta_pattern: none
    media: [photo]
    interaction: [static]
    items_count: few
    complexity: medium

  - id: stats15
    why: "Large counters with animated number reveal"
    layout: [centered]
    content_density: minimal
    tone: [bold]
    goal: [trust]
    cta_pattern: none
    media: [none]
    interaction: [hover]
    items_count: few
    complexity: medium
```

---

## Fallback Behavior

When a section is not covered in this index (e.g., `blog`, `gallery`, `sidebar`):
1. Recommend the default picks from `block-catalog.md`
2. Ask the user about layout preference if multiple styles exist
3. Note that the full catalog has more options to browse at https://shadcnblocks.com/explorer/blocks

## Expanding This Index

To add new tagged entries:
1. Visit the block on shadcnblocks.com/block/{id}
2. Note the description, layout pattern, and interactive elements
3. Tag using the vocabulary above
4. Add to the appropriate section with a `why` that distinguishes it from others
