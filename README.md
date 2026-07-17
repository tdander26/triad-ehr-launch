# Triad EHR — Founding Cohort launch site

Promotional landing page for **Triad EHR**, the cash-only electronic health record built for Applied Kinesiology practices.

It's a single static HTML page, no build step, hosted on GitHub Pages.

## What it is

- Cockpit-first design: the real product is the hero — a full-width stitched screenshot of the single-screen cockpit, an annotated six-point tour, and real app crops in every feature section
- Narrated 22-second demo video built from real cockpit screens (`demo.mp4`)
- One-screen "cockpit" charting and cash-only pricing as the lead message
- Stat tracking as the marquee differentiator: per-symptom treatment response and the common denominators between symptoms, tied to the cockpit's real `Progress` button
- Founding Cohort design-partner call to action
- Built and maintained by Momentum Health & Wellness

All product screenshots show the real Triad application with a **synthetic demo patient** — no real patient data appears anywhere on this page.

## Structure

```
index.html        the whole site (markup, styles, and a small script inline)
assets/           real app screenshots
  cockpit-full.png    full cockpit, stitched from two app captures (hero + tour)
  crop-*.png          focused crops: muscles grid, symptoms, findings, supplements, subjective
demo.mp4          narrated demo teaser (real cockpit screens, synthetic patient)
demo-poster.jpg   video poster frame / social-share image
```

## Run locally

Open `index.html` directly in a browser, or serve it:

```bash
python3 -m http.server 8080
# then visit http://localhost:8080
```

## Stack

Plain HTML and CSS with a small vanilla-JS script (form validation → `mailto:`, scroll reveals, cockpit-tour pin highlighting). Fonts: Archivo, Spline Sans, Space Mono via Google Fonts. No dependencies, no build.

---

© Momentum Health & Wellness. The cash-only EHR for Applied Kinesiology.
