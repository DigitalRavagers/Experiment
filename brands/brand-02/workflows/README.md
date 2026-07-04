# Brand Workflows

This brand doesn't have brand-specific n8n workflows yet — use the universal
templates in `integrations/n8n-templates/` instead, passing this brand's ID
(`BRAND_ID` = this folder's name) as a parameter:

| Template | Purpose |
|---|---|
| `../../../integrations/n8n-templates/voicenote-to-brain.json` | Voicenotes webhook → brand classifier → Supabase + Drive |
| `../../../integrations/n8n-templates/brand-content-sprint.json` | Week of social + email content from a theme |
| `../../../integrations/n8n-templates/lead-capture.json` | Form submission → Supabase → segmented welcome email |

## Activation Steps

1. Import the template JSON into your n8n instance (Hermes VPS)
2. Set credentials: OpenAI API key, Gmail OAuth, Supabase API key
3. Pass `brand_id` in the webhook POST body to scope it to this brand
4. Activate the webhook trigger and test with a sample POST

See `brands/brand-01/workflows/` for a worked example of brand-specific
(non-parameterized) versions of these same workflows, once this brand's
BRAND.md context is finalized and a dedicated version is worth building.
