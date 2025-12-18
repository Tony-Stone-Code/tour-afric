# TOUR-AFRIC Context Engineering Guide (Ghana Focus)

**Purpose:** Provide a clear, actionable context blueprint for building the next version of the TOUR-AFRIC site with five key pages. Emphasizes uniform colors reflecting Ghana’s tourism culture, consistent structure, and implementation notes developers can follow.

**Primary Palette (Ghana-inspired):**
- Deep Forest Green: #0B3B24 (lush reserves)
- Kente Gold: #D99A00 (heritage and warmth)
- Cocoa Brown: #6B3E1D (earthy authenticity)
- Atlantic Blue: #145C9E (coastal and marine)
- Warm Sand: #F5E8D0 (background / negative space)
- Text: #1A1A1A on light backgrounds; #FDF6EC on dark blocks

**Typography:**
- Headings: Playfair Display, serif (already in use)
- Body: Poppins, sans-serif (already in use)
- Base sizes: 16px body, 28-40px hero titles, 20-24px section headings

**Shared Components:**
- Header: Brand block (logo + wordmark), primary nav, CTA button
- Footer: Quick links, social, contact snippet, impact statement
- Buttons: Primary (Gold), Secondary (Outline Green), Tertiary (Text Link)
- Cards: Image top, title, tags, short copy, CTA
- Icons: Font Awesome (with `aria-label`/`title` for accessibility)
- Spacing scale: 8/12/16/24/32/48px
- Shadows: Soft `0 10px 25px rgba(0,0,0,0.12)`

**Accessibility Targets (WCAG 2.1 AA):**
- Contrast: 4.5:1 minimum
- Focus states visible; keyboard nav everywhere
- Alt text for all images; `aria-label` on icon-only links
- No nested interactive elements; lists contain only `li`

---
## Page 1: Home (Gateway)
**Goal:** Inspire and route users quickly to Adventures, Coastal/Islands, or Impact.
- Hero: Full-bleed Ghana landscape (savannah + coast blend), overlay gradient from #0B3B24 to transparent.
- CTA: "Explore Adventures" (Primary Gold) and "View Coastal Escapes" (Secondary Outline Green).
- Trip Split: Two cards (Adventure / Coastal) with hover lift.
- Impact Teaser: Three pillars (Low Impact, Community First, Wildlife Protection) with concise copy and icon labels.
- Social Proof: Logo bar of partners or quotes (static for now).
- Footer: Consistent site-wide footer with contact snippet.

**Key Content Blocks:**
- Hero title: "Uncover Africa’s Wild Heart"
- Subhead: "Ethical adventures & pristine escapes across Ghana and beyond."
- Impact teaser links to Impact page.

---
## Page 2: Adventures (Interior Category)
**Goal:** Let users scan adventure types and dive into detail pages.
- Intro: Short paragraph on ethical, locally guided adventures.
- Filters (static for now): Difficulty, Duration, Region (North, Volta, Ashanti, Coast), Interest (Wildlife, Hiking, Culture).
- Grid of Cards: 6-9 experiences with Ghana focus first (Mole National Park, Kakum canopy walk, Volta hikes, Shai Hills, Tafi Atome, Lake Bosomtwe), then broader Africa.
- Card Fields: Image, title, region tag, short 2-line copy, "View Details" (Secondary Outline).
- SEO Block: FAQ accordion (What to pack, Best season, Safety, Sustainability).

**CTA:** Primary Gold "Plan My Adventure" leading to Contact/Booking flow.

---
## Page 3: Coastal & Islands
**Goal:** Showcase Ghana’s coast and nearby island escapes with conservation emphasis.
- Hero: Atlantic/lagoon imagery with blue/green overlay.
- Highlight Cards: Cape Coast & Elmina heritage + beaches, Ada Foah (Volta estuary), Busua/Ahanta surf, Nzulezu stilt village, and regional islands (e.g., São Tomé extension).
- Marine Ethics: Compact block on turtle nesting protection, responsible diving, beach clean-ups.
- CTA: "See Coastal Itineraries" (Primary Gold) and "Talk to a Planner" (Secondary).

---
## Page 4: Impact (Conservation & Community)
**Goal:** Build trust through transparency and Ghana-first storytelling.
- Metrics Row: CO2 offset, local guides employed, communities supported, funds to conservation. Use accessible icon+number blocks.
- Project Stories: 3 cards—example: Mole anti-poaching patrols, Kakum community guides, Ada mangrove restoration.
- How We Operate: Revenue split explainer (guides, conservation, operations) with simple chart.
- Testimonials: Short quotes from guides/communities; add photos with alt text.
- CTA: "Read the Impact Report" (Secondary) and "Book an Ethical Trip" (Primary).

---
## Page 5: Contact / Plan Your Trip
**Goal:** Capture qualified leads and inquiries with clarity.
- Form Fields: Name, Email, Phone (optional), Trip Type (select), Dates, Group size, Budget range, Interests (checkboxes), Message.
- Service Promises: Response within 24h; locally guided; carbon-offset options.
- Contact Info Block: Email, phone, WhatsApp; office address (Accra HQ placeholder).
- Map Embed Placeholder: Ghana HQ marker.
- FAQ Snippet: Visas, payments, cancellations.
- CTA: "Send Inquiry" (Primary Gold), "Schedule a Call" (Secondary Outline).

---
## Visual & UX Consistency
- Background: Warm Sand #F5E8D0; use white panels for cards/sections.
- Section Dividers: 64px vertical rhythm; alternating soft tints (very light gold/blue) to separate sections.
- Buttons:
  - Primary: Gold #D99A00 text on white? No—use Gold fill, text #1A1A1A; hover: darken to #B87D00.
  - Secondary: Outline Forest Green (#0B3B24 border/text); hover: fill green, text sand.
  - Tertiary: Text link in Atlantic Blue #145C9E.
- Links: Underline on hover; ensure `aria-label` on icon links.
- Cards: Rounded 10px, shadow, 16px padding; image aspect 4:3 with `object-fit: cover`.

---
## Content & CMS Notes
- Centralize navigation/footer in includes/partials to avoid duplication.
- Use a color tokens file (CSS variables) for palette consistency.
- Store destination data in JSON/DB for rendering cards and filters.
- Keep Ghana-first destinations at top of any listings; add regional tags.

---
## Performance & SEO
- Image strategy: Responsive srcset, lazy loading, WebP if possible; hero images <400KB.
- Metadata: Unique title/description per page; Open Graph and Twitter cards.
- Structured data: BreadcrumbList, Organization, Product/Offer for trips (future-ready).
- Performance budget: <2s LCP on 4G; <3MB total payload per page.

---
## Accessibility & QA Checklist
- No nested interactive controls (fix current button-in-anchor issues).
- Provide `title`/`aria-label` for social icon links.
- Ensure list semantics: `ul/ol` contain only `li`.
- Keyboard trap audit; focus states visible.
- Color contrast: Verify Gold on Sand; adjust if <4.5:1.

---
## Implementation Priorities (Next Sprint-ready)
1) Extract shared header/footer into partials and apply Ghana palette tokens.  
2) Build 5 pages with uniform layout scaffolding (hero, cards, CTA rows).  
3) Fix current accessibility errors (icon labels, button nesting).  
4) Add Ghana-first content blocks (Mole, Kakum, Ada, Cape Coast/Elmina, Busua/Ahanta).  
5) Optimize hero and card images; enable lazy loading and proper alt text.

---
## Fast References for Devs
- Palette tokens: `--ghana-forest: #0B3B24; --ghana-gold: #D99A00; --ghana-brown: #6B3E1D; --ghana-blue: #145C9E; --ghana-sand: #F5E8D0; --text-dark: #1A1A1A; --text-light: #FDF6EC;`
- Button classes: `.btn-primary` (gold), `.btn-secondary` (outline green), `.btn-tertiary` (link blue)
- Card class: `.card` with 4:3 image wrapper `.card-media`, `.card-body`
- Section padding: `padding: 64px 0;`
- Grid: `repeat(auto-fit, minmax(280px, 1fr))` for cards

**Must be responsive to all screen sizes**

---
**File created for the team:** `Context_Engineering_Guide_TOUR-AFRIC.md`
