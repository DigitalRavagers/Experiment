# Universal n8n Workflow Templates

Brand-agnostic automations parameterized by `brand_id`. Use these for any of
the 9 brands unless a brand has its own dedicated version under
`brands/brand-XX/workflows/` (currently only brand-01 does).

| File | Purpose |
|---|---|
| `voicenote-to-brain.json` | Voicenotes webhook → brand tag classifier → Supabase `voicenotes_corpus` upsert + Google Drive save |
| `brand-content-sprint.json` | POST `{ brand_id, week_theme, platforms, num_posts }` → fetch that brand's `BRAND.md` → generate a week of content → save to Drive |
| `lead-capture.json` | Form submission → Supabase `leads` insert → pain-point segmentation → brand-voiced welcome email |

## Activation

Import via n8n's REST API (`integrations/scripts/activate-n8n.sh`) or, if
working inside a Claude Code session with the n8n connector active, via the
connector's `create_workflow_from_code` tool. See that script's header
comment for which path applies.
