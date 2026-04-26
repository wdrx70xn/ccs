#!/bin/bash
set -e

# 1. Forms
git add ui/src/components/forms/field.tsx ui/src/pages/_styleguide.tsx
git commit -m "refactor(ui/forms): extract Field component for design system compliance

Extracts the sensitive-aware Field component from _styleguide to a shared
location so that single/multi config forms can utilize it and comply with
§5 color & accent rules (lock icon + reveal toggle + accent focus ring)."

# 2. Accounts
git add ui/src/pages/accounts.tsx ui/src/components/account/accounts-action-rail.tsx
git commit -m "refactor(ui/accounts): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into AccountsActionRail.header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.accounts\" so the form<->json divider persists."

# 3. API
git add ui/src/pages/api.tsx ui/src/components/profiles/api-profile-list-pane.tsx
git commit -m "refactor(ui/api): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into ApiProfileListPane.header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.api\" so the form<->json divider persists."

# 4. Shared
git add ui/src/pages/shared.tsx ui/src/components/shared-browser/shared-item-list.tsx
git commit -m "refactor(ui/shared): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into SharedItemList.header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.shared\" so the form<->json divider persists."

# 5. CLIProxy AI Providers
git add ui/src/pages/cliproxy-ai-providers/index.tsx
git commit -m "refactor(ui/cliproxy-ai-providers): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into the left rail header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.cliproxy-ai-providers\" so the form<->json divider persists."

# 6. Codex
git add ui/src/pages/codex.tsx
git commit -m "refactor(ui/codex): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into SectionRail.header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.codex\" so the form<->json divider persists."

# 7. Droid
git add ui/src/pages/droid/index.tsx
git commit -m "refactor(ui/droid): rail-anchored layout per §0b/§4a

Removes PageHeader stacked above ConfigLayout (§4a violation), folds
identity into SectionRail.header (§1b rail-anchored pattern).
Adds storageKey=\"config-layout.droid\" so the form<->json divider persists."

# 8. Cursor
git add ui/src/pages/cursor/cursor-form.tsx ui/src/pages/cursor/sections/status-sidebar.tsx ui/src/pages/cursor/sections/status-section.tsx
git commit -m "refactor(ui/cursor): rail-anchored layout per §0b/§4a

Converts bespoke StatusSidebar into StatusSection within FormPane.
Integrates actions (Save, Refresh) and identity into SectionRail.header.
Adds storageKey=\"config-layout.cursor\" so the form<->json divider persists."

# 9. Test fixes
git add ui/tests/unit/ui/pages/dashboard-page-height-contract.test.ts ui/src/pages/updates.tsx
git commit -m "test(ui/dashboard): fix page height contract paths and violations

Updates hardcoded layout managed paths to point to correct module indexes
(cursor/index.tsx, claude-extension/index.tsx, droid/index.tsx)
and removes an offending calc(100vh-...) max height from updates.tsx
that triggered the strict dashboard route height contract test."

echo "Commits completed!"
