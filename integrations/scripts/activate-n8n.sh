#!/bin/bash
# AGI OS — n8n Activation Script
# Run this once you have your Hermes VPS n8n credentials
# Usage: ./activate-n8n.sh <N8N_API_URL> <N8N_API_KEY>

set -e

N8N_API_URL="${1:-$N8N_API_URL}"
N8N_API_KEY="${2:-$N8N_API_KEY}"

if [ -z "$N8N_API_URL" ] || [ -z "$N8N_API_KEY" ]; then
  echo "Usage: $0 <N8N_API_URL> <N8N_API_KEY>"
  echo "  or set N8N_API_URL and N8N_API_KEY as env vars"
  exit 1
fi

echo "=== AGI OS n8n Activation ==="
echo "Target: $N8N_API_URL"

# 1. Test connectivity
echo "[1/4] Testing n8n connection..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" \
  -H "X-N8N-API-KEY: $N8N_API_KEY" \
  "$N8N_API_URL/api/v1/workflows")

if [ "$STATUS" != "200" ]; then
  echo "ERROR: Could not connect to n8n (HTTP $STATUS). Check URL and API key."
  exit 1
fi
echo "      Connection OK"

# 2. Update .claude/settings.json to enable n8n MCP
echo "[2/4] Enabling n8n MCP in settings.json..."
SETTINGS_FILE="$(dirname "$0")/../../.claude/settings.json"
python3 -c "
import json, sys
with open('$SETTINGS_FILE', 'r') as f:
    cfg = json.load(f)
cfg['mcpServers']['n8n']['disabled'] = False
cfg['mcpServers']['n8n']['env']['N8N_API_URL'] = '$N8N_API_URL'
cfg['mcpServers']['n8n']['env']['N8N_API_KEY'] = '$N8N_API_KEY'
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(cfg, f, indent=2)
print('settings.json updated')
"

# 3. Import universal workflow templates
echo "[3/4] Importing workflow templates..."
TEMPLATES_DIR="$(dirname "$0")/../n8n-templates"

for template in "$TEMPLATES_DIR"/*.json; do
  name=$(python3 -c "import json; d=json.load(open('$template')); print(d.get('name','unnamed'))")
  echo "  Importing: $name"
  curl -s -X POST \
    -H "X-N8N-API-KEY: $N8N_API_KEY" \
    -H "Content-Type: application/json" \
    -d @"$template" \
    "$N8N_API_URL/api/v1/workflows" > /dev/null
done
echo "      Templates imported"

# 4. Register Voicenotes webhook
echo "[4/4] n8n activation complete."
echo ""
echo "Next steps:"
echo "  1. Open n8n UI → activate the 'AGI-OS — Voicenote → Brand Router' workflow"
echo "  2. Copy the webhook URL and register it in Voicenotes → Settings → Webhooks"
echo "     Events: recording.created, recording.updated, creation.summary"
echo "  3. Test with a voice note tagged with any brand tag"
echo ""
echo "n8n MCP is now configured. Restart Claude Code session to load the MCP server."
