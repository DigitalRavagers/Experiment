# Digital Ravagers — Workflow Templates

Import these JSON files into your n8n instance (Hermes VPS).

## Available Workflows

| File | Purpose | Status |
|---|---|---|
| `content-pipeline.json` | Weekly social + email content from one brief | Template ready |
| `lead-capture.json` | Form → Supabase → email nurture sequence | Template ready |

## Activation Steps

1. Go to Hermes n8n → Import Workflow → paste JSON
2. Set credentials: OpenAI API key, Gmail OAuth, Supabase API key
3. Activate the webhook trigger
4. Test with a sample POST to the webhook URL

## Webhook Base URL

`https://<your-hermes-n8n-url>/webhook/brand-01/<workflow-name>`
