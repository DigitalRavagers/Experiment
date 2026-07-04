# AGI OS — Session Handoff

Read this first in a new local Claude Code thread. It tells you what exists, what's
still open, and what needs your input.

## 1. Get the code

```bash
git fetch origin
git checkout main && git pull origin main        # merged baseline (PR #2)
git fetch origin claude/new-session-uxpl4b
git checkout claude/new-session-uxpl4b            # follow-up work (PR #3, open)
```

Launch Claude Code **with this repo folder as the working directory** — skills are
discovered relative to cwd via `.claude/skills/`, not globally.

## 2. What's live right now

- **93 skills installed** under `.agents/skills/`, all symlinked into `.claude/skills/`
  (this symlink step was missing for 85 of them until this session — see §4).
  Suites: Core (8, incl. the caveman token-compression suite), Marketing (45),
  Design (22), Media (17, HyperFrames + `watch` video-ingestion skill), Ops.
- **Routing system**: `CLAUDE.md` (master rules + 24-intent table), `agents/router.json`
  (machine-readable version), `agents/personas/*.md` (5 personas: orchestrator,
  marketing, design, content, ops).
- **9 brand scaffolds** under `brands/brand-{01..09}/` — `BRAND.md` files are
  **placeholders from old Voicenotes data**, explicitly flagged stale by the owner.
  Do not treat them as ground truth; replace once real brand data is provided.
- **n8n workflow templates** (universal, `brand_id`-parameterized) in
  `integrations/n8n-templates/`: `voicenote-to-brain.json`, `brand-content-sprint.json`,
  `lead-capture.json`. brand-01 additionally has dedicated (non-parameterized)
  versions under `brands/brand-01/workflows/` as a worked example.
- **Runtime stack confirmed installed**: FFmpeg 6.1.1, yt-dlp, Whisper, Node 22,
  Python 3.11, Docker.

## 3. n8n / Voicenotes — correct current understanding

Earlier in this session I assumed n8n and Voicenotes needed manual API keys
(`N8N_API_URL`, `N8N_API_KEY`, `VOICENOTES_API_KEY`) dropped into
`.claude/settings.json`. **That was wrong.** Both are wired as **account-level
Claude Code connectors**:

- n8n connects straight to Hermes (`webhook.digitalravagers.in/mcp-server/http`) as
  `mcp__n8n__*` tools — confirmed via this session's own MCP connection log.
- Voicenotes connects as `mcp__Voicenotes__*` tools the same way.

Neither needs credentials from you inside a Claude Code session — they just show up.
n8n does idle-disconnect after a few minutes unused and needs the session to
re-trigger it; that's a connector-lifecycle quirk, not a missing key.

The `mcpServers` block in `.claude/settings.json` (npx-based, needs the env vars) is
now documented as a **fallback only** — for a harness without the account connector.
Leave it `disabled: true` unless you're in that situation.

**Only real optional credential**: `GROQ_API_KEY` or `OPENAI_API_KEY` for the `watch`
skill's Whisper fallback (only used on videos without native captions).

## 4. Bug found and fixed: skills were invisible to Claude Code

`npx skills add` installs files under `.agents/skills/<name>/`, but Claude Code
discovers *invocable* skills through symlinks in `.claude/skills/`. Only 8 of 93
installed skills (`watch` + the 7 caveman skills) had that symlink — the entire
marketing/design/media suites were on disk but never showed up as slash commands.
Fixed: all 93 now symlinked, verified zero broken links.

If you ever install a new skill and it doesn't show up, check for this exact gap:
`ls .agents/skills/ | sort` vs `ls .claude/skills/ | sort` should match.

## 5. Open PRs

- **#2 — merged** into `main`. Original 92-skill install + routing + brand scaffolds.
- **#3 — open, draft**. Follow-up: universal workflow templates for brands 02–09,
  and the `.claude/skills` symlink fix. No CI configured on this repo (0 checks);
  no review comments yet.

## 6. Blocked on you

- **Fresh brand data** for all 9 brands — you said the Voicenotes-derived data was
  old and you'd provide updated context. Nothing has been filled in since; the
  `BRAND.md` files are still the old placeholders.
- **`product-marketing.md`** per brand — waiting on the same fresh data.
- **Brand 02–09 dedicated workflows** (like brand-01's non-parameterized versions) —
  only worth building once brand voice/content is final; the universal templates
  work today without it.
- **Whisper key** (`GROQ_API_KEY`/`OPENAI_API_KEY`) if you want `watch` to handle
  videos without native captions.

## 7. Key files to know

| File | What it is |
|---|---|
| `CLAUDE.md` | Master routing config — read this first, it's marked as law |
| `agents/router.json` | Machine-readable intent → skill → agent mapping |
| `agents/personas/*.md` | 5 agent personas |
| `.claude/settings.json` | Hooks + MCP fallback config + infra reference block |
| `brands/brand-XX/BRAND.md` | Per-brand context (⚠️ stale, pending refresh) |
| `integrations/n8n-templates/` | Universal, brand-agnostic n8n workflows |
| `integrations/scripts/activate-n8n.sh` | REST-API workflow import fallback (not needed if the n8n connector is active) |
| `.agents/skills/`, `.claude/skills/` | Skill files + their invocability symlinks |
| `skills-lock.json` | Source/hash record of every installed skill |
