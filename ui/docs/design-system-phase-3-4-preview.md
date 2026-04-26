# Phase 3 + Phase 4 Preview Reports — superseded by v1.5

The 12 base64-embedded HTML preview reports that previously lived here:

```
design-system-phase3-{updates,codex,copilot,accounts,logs,api,shared,analytics}-preview.html
design-system-phase4-{droid,claude-extension,cursor,cliproxy-ai-providers}-preview.html
```

were generated against the **Phase 3 + Phase 4 migration shape** (`PageHeader` stacked above `ConfigLayout`) which v1.5 of the design system explicitly disallows (see `design-system.md` §0b / §4a).

Showing those reports to PR reviewers would mislead them into thinking the broken design is the canonical "after". They have been removed in `9d8bfa08`.

## Where to verify the v1.5 design now

1. **Live styleguide** — `cd ui && bun run dev` then open http://localhost:5173/_styleguide. §1b, §2a, §2b are the canonical rail-anchored examples, and the Intro callout summarizes §0 invariants.
2. **Spec** — `ui/docs/design-system.md` (current: v1.5).
3. **Decisions log** — `ui/docs/design-decisions.md` (v1.3 = rail-anchored default, v1.4 = resize split, v1.5 = color treatment).
4. **Canonical Config reference** — `ui/src/pages/cliproxy.tsx`. Visit `/cliproxy` in the running dashboard for the live page.

## Phase 2 report retained

`design-system-phase2-preview.html` is still present — it documents the Phase 2 (foundations + references) state which v1.5 builds on rather than replaces.

## Regenerating "after" snapshots

If reviewers want side-by-side before/after PNGs of every refactored page against the v1.5 design, the regeneration workflow is:

1. Boot the dashboard (`cd ui && bun run dev`)
2. Use Playwright (already in deps) to navigate each refactored route in Privacy mode
3. Take 1280×800 screenshots before / after / per-pane state
4. Embed as base64 in fresh per-page HTML reports

Tracked as a follow-up in `plans/reports/handoff-260426-1105-GH-3-phase-3-4-rail-anchored-rework.md` §10.
