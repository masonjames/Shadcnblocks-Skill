# ShadcnBlocks Block Catalog

> 1,338 blocks across 71 categories. Browse visually at https://shadcnblocks.com/explorer/blocks

## Install Syntax

```bash
npx shadcn add @shadcnblocks/<block-name>
```

Block names use the pattern `<category><number>` (e.g., `hero1`, `pricing3`, `feature85`).

## Archetypes

Blocks are tagged by use-case archetype:

| Archetype | Count | Description |
|-----------|-------|-------------|
| Marketing | 865 | Landing pages, promotional sites, brand pages |
| App | 190 | Application UI, dashboards, admin panels, settings |
| Ecommerce | 122 | Product pages, carts, checkout, order management |
| Portfolio | 111 | Project showcases, galleries, case studies |
| Background | 50 | Decorative patterns and shader backgrounds |

---

## Block Categories

### Marketing & Landing Page Blocks

#### Hero Sections — `hero` (175 blocks)
Full-width landing page hero sections with headings, CTAs, imagery, and badges.
**Variants:** 1-16, 18, 20, 21, 24-40, 45, 47, 49-51, 53, 55, 57-60, 64, 67, 68, 70, 71, 74-76, 78-80, 82-87, 89-91, 99-101, 103, 104, 107, 108, 111, 112, 115, 116, 123, 125, 127, 129, 134-136, 141, 143-146, 149, 151, 152, 157-160, 162-168, 170-175, 177-180, 183, 185-187, 187a, 187b, 190, 192, 194-197, 200-206, 210-216, 218-234, 234a, 234b, 236-248, 256, 258, 259
```bash
npx shadcn add @shadcnblocks/hero1       # 2-column with badge, heading, CTA buttons, and image
npx shadcn add @shadcnblocks/hero125     # Popular variant
npx shadcn add @shadcnblocks/hero200     # Recent addition
```

#### Feature Sections — `feature` (272 blocks)
Feature grids, showcases, comparison sections, and benefit highlights.
**Variants:** 1-44, 50-83, 85-99, 101-207, 209-225, 227-257, 261, 266-272, 274-289, 292-295, 297, 299, 312-314, 322, 323
```bash
npx shadcn add @shadcnblocks/feature1
npx shadcn add @shadcnblocks/feature8
```

#### CTA (Call to Action) — `cta` (26 blocks)
Conversion-focused sections with buttons, forms, and urgency elements.
**Variants:** 1, 3-7, 10-23, 26-28, 30-32
```bash
npx shadcn add @shadcnblocks/cta1
```

#### Pricing — `pricing` (35 blocks)
Pricing tables, cards, tier comparisons, and toggle monthly/annual layouts.
**Variants:** 1-16, 20-24, 26-38, 40
```bash
npx shadcn add @shadcnblocks/pricing3
```

#### Testimonial — `testimonial` (28 blocks)
Customer quotes, review carousels, social proof, and rating displays.
**Variants:** 1-4, 6-21, 23-30
```bash
npx shadcn add @shadcnblocks/testimonial1
```

#### FAQ — `faq` (16 blocks)
Frequently asked questions with accordion, list, or grid layouts.
**Variants:** 1-12, 14-17
```bash
npx shadcn add @shadcnblocks/faq1
```

#### Stats — `stats` (18 blocks)
Metrics, counters, KPIs, and data visualization sections.
**Variants:** 1, 2, 4-19
```bash
npx shadcn add @shadcnblocks/stats1
```

#### Logos — `logos` (13 blocks)
Partner, client, or technology logo showcase strips and clouds.
**Variants:** 1-5, 7-13
```bash
npx shadcn add @shadcnblocks/logos1
```

#### Trust Strip — `trust-strip` (4 blocks)
Compact trust indicator bars (certifications, partner logos, security badges).
**Variants:** 1-4
```bash
npx shadcn add @shadcnblocks/trust-strip1
```

#### Compare — `compare` (10 blocks)
Side-by-side product or feature comparison layouts.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/compare1
```

#### Compare Products — `compare-products` (3 blocks)
Detailed product-vs-product comparison tables.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/compare-products1
```

#### Integration — `integration` (16 blocks)
Integration partner grids, API showcases, and connected services displays.
**Variants:** 1-13
```bash
npx shadcn add @shadcnblocks/integration1
```

#### Community — `community` (7 blocks)
Community sections with member counts, forums, or open-source contributor displays.
**Variants:** 1-7
```bash
npx shadcn add @shadcnblocks/community1
```

#### Awards — `awards` (5 blocks)
Award badges, recognition sections, and achievement displays.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/awards1
```

#### Incentives — `incentives` (4 blocks)
Value proposition strips (free shipping, money-back guarantee, etc.).
**Variants:** 1, 2, 6, 7
```bash
npx shadcn add @shadcnblocks/incentives1
```

#### Industries — `industries` (4 blocks)
Industry-specific landing sections or vertical market showcases.
**Variants:** 1-4
```bash
npx shadcn add @shadcnblocks/industries1
```

---

### Navigation & Layout Blocks

#### Navbar — `navbar` (18 blocks)
Navigation bars, site headers, and mega menus.
**Variants:** 1-11, 14, 17, 18, 21, 22, 24, 29
```bash
npx shadcn add @shadcnblocks/navbar1
```

#### Footer — `footer` (25 blocks)
Page footers with links, social icons, newsletter signup, and legal links.
**Variants:** 1-18, 23-25, 27, 30-32
```bash
npx shadcn add @shadcnblocks/footer1
```

#### Banner — `banner` (7 blocks)
Top-of-page announcement banners and notification bars.
**Variants:** 1-7
```bash
npx shadcn add @shadcnblocks/banner1
```

#### Promo Banner — `promo-banner` (7 blocks)
Promotional banners for sales, events, or product launches.
**Variants:** 1-7
```bash
npx shadcn add @shadcnblocks/promo-banner1
```

---

### Content & Blog Blocks

#### Blog — `blog` (22 blocks)
Blog listing pages, post grids, featured article layouts.
**Variants:** 1, 4-8, 11-14, 16, 17, 19, 21-24, 26-30
```bash
npx shadcn add @shadcnblocks/blog1
```

#### Blog Post — `blogpost` (7 blocks)
Individual blog post page layouts with content, author, and metadata.
**Variants:** 1-7
```bash
npx shadcn add @shadcnblocks/blogpost1
```

#### Content — `content` (4 blocks)
Generic content sections with rich text and media.
**Variants:** 1-4
```bash
npx shadcn add @shadcnblocks/content1
```

#### Changelog — `changelog` (7 blocks)
Product changelog and release notes displays.
**Variants:** 1-6, 8
```bash
npx shadcn add @shadcnblocks/changelog1
```

#### Code Example — `code-example` (5 blocks)
Code snippet displays with syntax highlighting and copy buttons.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/code-example1
```

#### Resources — `resources` (5 blocks)
Resource library, downloadable content, or documentation link grids.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/resources1
```

#### Resource — `resource` (3 blocks)
Single resource detail or download page layout.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/resource1
```

---

### About & Team Blocks

#### About — `about` (17 blocks)
Company about sections, mission statements, and origin stories.
**Variants:** 1-10, 13-19
```bash
npx shadcn add @shadcnblocks/about1
```

#### Team — `team` (14 blocks)
Team member grids, profile cards, and org charts.
**Variants:** 1-13, 15
```bash
npx shadcn add @shadcnblocks/team1
```

#### Timeline — `timeline` (15 blocks)
Company history, roadmap, or milestone timeline displays.
**Variants:** 1-14
```bash
npx shadcn add @shadcnblocks/timeline1
```

#### Experience — `experience` (4 blocks)
Work experience, resume, or professional background sections.
**Variants:** 1-3, 5
```bash
npx shadcn add @shadcnblocks/experience1
```

#### Skills — `skills` (2 blocks)
Skill bars, competency charts, or expertise displays.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/skills1
```

#### Careers — `careers` (9 blocks)
Job listing pages, open positions, and career sections.
**Variants:** 1-9
```bash
npx shadcn add @shadcnblocks/careers1
```

---

### Contact & Forms Blocks

#### Contact — `contact` (17 blocks)
Contact forms, maps, and company contact information sections.
**Variants:** 1-11, 14, 16-20
```bash
npx shadcn add @shadcnblocks/contact1
```

#### Signup — `signup` (10 blocks)
Account registration forms and onboarding flows.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/signup1
```

#### Login — `login` (8 blocks)
Login forms with email/password, social login, and SSO options.
**Variants:** 1-7, 9
```bash
npx shadcn add @shadcnblocks/login1
```

#### Book a Demo — `book-a-demo` (3 blocks)
Demo scheduling sections with calendar or form integration.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/book-a-demo1
```

#### Waitlist — `waitlist` (4 blocks)
Pre-launch waitlist signup forms.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/waitlist1
```

#### Download — `download` (13 blocks)
App download sections, file download pages, and store links.
**Variants:** 1-11, 13
```bash
npx shadcn add @shadcnblocks/download1
```

#### Compliance — `compliance` (4 blocks)
GDPR, privacy policy, and compliance information sections.
**Variants:** 1, 5-7
```bash
npx shadcn add @shadcnblocks/compliance1
```

---

### Portfolio & Projects Blocks

#### Gallery — `gallery` (48 blocks)
Image galleries, masonry layouts, and portfolio grids.
**Variants:** 1-35
```bash
npx shadcn add @shadcnblocks/gallery1
```

#### Projects — `projects` (25 blocks)
Project listing pages with cards, filters, and detail links.
**Variants:** 1-18, 15a-15e, 17a, 17b
```bash
npx shadcn add @shadcnblocks/projects1
```

#### Project — `project` (33 blocks)
Individual project detail pages with images, descriptions, and tech stacks.
**Variants:** 1, 2, 2a-2d, 4, 4a-4c, 5, 5a-5g, 6, 6a, 7, 8, 8a-8e, 9, 10, 12, 13, 13a, 14
```bash
npx shadcn add @shadcnblocks/project1
```

#### Case Studies — `case-studies` (6 blocks)
Case study listing pages and client success story grids.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/case-studies1
```

#### Case Study — `case-study` (3 blocks)
Individual case study detail layouts.
**Variants:** 1, 3, 8
```bash
npx shadcn add @shadcnblocks/case-study1
```

#### Reviews — `reviews` (10 blocks)
Customer review sections, star ratings, and feedback displays.
**Variants:** 1-6, 8, 9, 18, 23
```bash
npx shadcn add @shadcnblocks/reviews1
```

---

### Ecommerce Blocks

#### Product Card — `product-card` (10 blocks)
Product cards for grids and listings with image, price, and actions.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/product-card1
```

#### Product List — `product-list` (10 blocks)
Product listing pages with filters, sorting, and grid/list toggle.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/product-list1
```

#### Product Detail — `product-detail` (10 blocks)
Full product detail pages with gallery, specs, and add-to-cart.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/product-detail1
```

#### Product Categories — `product-categories` (5 blocks)
Category browsing grids and navigation sections.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/product-categories1
```

#### Product Gallery — `product-gallery` (5 blocks)
Product image galleries with zoom and thumbnails.
**Variants:** 1-4, 7
```bash
npx shadcn add @shadcnblocks/product-gallery1
```

#### Product Quick View — `product-quick-view` (4 blocks)
Modal/overlay product previews for quick browsing.
**Variants:** 4-7
```bash
npx shadcn add @shadcnblocks/product-quick-view4
```

#### Product Specs — `product-specs` (2 blocks)
Technical specification tables and comparison charts.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/product-specs1
```

#### Shopping Cart — `shopping-cart` (11 blocks)
Cart pages, mini-carts, and cart drawers.
**Variants:** 1-3, 7, 14-20
```bash
npx shadcn add @shadcnblocks/shopping-cart1
```

#### Checkout — `checkout` (6 blocks)
Checkout flows, payment forms, and order review pages.
**Variants:** 1-5, 8
```bash
npx shadcn add @shadcnblocks/checkout1
```

#### Order Summary — `order-summary` (6 blocks)
Order confirmation and summary sections.
**Variants:** 1-6
```bash
npx shadcn add @shadcnblocks/order-summary1
```

#### Order History — `order-history` (5 blocks)
Past orders listing and order tracking pages.
**Variants:** 1-5
```bash
npx shadcn add @shadcnblocks/order-history1
```

#### Payment Methods — `payment-methods` (4 blocks)
Saved payment method management sections.
**Variants:** 1-4
```bash
npx shadcn add @shadcnblocks/payment-methods1
```

#### Ecommerce Footer — `ecommerce-footer` (4 blocks)
Footers tailored for ecommerce with shop links, policies, and payment icons.
**Variants:** 1, 2, 19, 20
```bash
npx shadcn add @shadcnblocks/ecommerce-footer1
```

#### Live Purchase — `live-purchase` (3 blocks)
Real-time purchase notification popups and social proof.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/live-purchase1
```

#### Offer Modal — `offer-modal` (3 blocks)
Promotional modals for discounts, exit-intent, and special offers.
**Variants:** 1, 4, 5
```bash
npx shadcn add @shadcnblocks/offer-modal1
```

#### Wishlist — `wishlist` (2 blocks)
Wishlist/favorites pages and saved item displays.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/wishlist1
```

---

### Services Blocks

#### Services — `services` (19 blocks)
Services listing pages and offering overviews.
**Variants:** 1, 3-16, 18-21
```bash
npx shadcn add @shadcnblocks/services1
```

#### Service — `service` (7 blocks)
Individual service detail pages.
**Variants:** 1-7
```bash
npx shadcn add @shadcnblocks/service1
```

#### Process — `process` (4 blocks)
Step-by-step process or workflow visualizations.
**Variants:** 1-4
```bash
npx shadcn add @shadcnblocks/process1
```

#### Rate Card — `rate-card` (2 blocks)
Pricing rate cards for services or consulting.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/rate-card1
```

---

### App & Dashboard Blocks

#### Chart Card — `chart-card` (27 blocks)
Dashboard chart cards with line, bar, area, and pie charts.
**Variants:** 10-27 (newest first in explorer)
```bash
npx shadcn add @shadcnblocks/chart-card10
```

#### Data Table — `data-table` (32 blocks)
Data tables with sorting, filtering, pagination, and row actions.
```bash
npx shadcn add @shadcnblocks/data-table1
```

#### Sidebar — `sidebar` (21 blocks)
Application sidebar navigation layouts.
```bash
npx shadcn add @shadcnblocks/sidebar1
```

#### Application Shell — `application-shell` (14 blocks)
Full app layout shells with sidebar, header, and content area.
```bash
npx shadcn add @shadcnblocks/application-shell1
```

#### User Profile — `user-profile` (12 blocks)
User profile pages with avatar, info, and activity.
```bash
npx shadcn add @shadcnblocks/user-profile1
```

---

### Misc Blocks

#### Background Pattern — `background-pattern` (40 blocks)
Decorative SVG/CSS background patterns.
**Variants:** 1-40
```bash
npx shadcn add @shadcnblocks/background-pattern1
```

#### Shader — `shader` (10 blocks)
WebGL/Canvas animated shader backgrounds.
**Variants:** 1-10
```bash
npx shadcn add @shadcnblocks/shader1
```

#### Bento — `bento` (8 blocks)
Bento grid layouts for feature or content showcases.
```bash
npx shadcn add @shadcnblocks/bento1
```

#### Address Book — `address-book` (2 blocks)
Address management and contact list components.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/address-book1
```

#### Help — `help` (2 blocks)
Help center or support page layouts.
**Variants:** 1, 2
```bash
npx shadcn add @shadcnblocks/help1
```

#### List — `list` (3 blocks)
Generic list layouts with various item styles.
**Variants:** 1-3
```bash
npx shadcn add @shadcnblocks/list1
```

---

## Quick Reference: Choosing the Right Block

| Need | Recommended Category | Start With |
|------|---------------------|------------|
| Landing page hero | `hero` | `hero1` (classic), `hero125` (modern) |
| Show features/benefits | `feature` | `feature1` (grid), `feature8` (alternating) |
| Pricing page | `pricing` | `pricing3` (cards), `pricing11` (comparison) |
| Customer proof | `testimonial` | `testimonial1` (quotes), `reviews1` (stars) |
| Drive signups | `cta` | `cta1` (simple), `signup1` (full form) |
| Q&A section | `faq` | `faq1` (accordion) |
| Site navigation | `navbar` | `navbar1` (standard), `navbar9` (mega menu) |
| Site footer | `footer` | `footer1` (multi-column) |
| Blog listing | `blog` | `blog1` (grid cards) |
| Product catalog | `product-list` | `product-list1` |
| Shopping cart | `shopping-cart` | `shopping-cart1` |
| Dashboard charts | `chart-card` | `chart-card10` |
| Data management | `data-table` | `data-table1` |
| About company | `about` | `about1` |
| Team page | `team` | `team1` (grid) |
| Contact page | `contact` | `contact1` (form + info) |
| Portfolio | `projects` / `gallery` | `projects1`, `gallery1` |
| Background decoration | `background-pattern` | `background-pattern1` |
