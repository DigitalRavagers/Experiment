# AGI OS Skill Library: Comprehensive Technical Analysis & Integration Strategy

**Date:** 2026-06-22  
**Scope:** 13 GitHub repositories analyzed for DigitalRavagers multi-agent brand fleet  
**Target Environment:** Hermes VPS · AGI OS framework · 9-brand autonomous management

---

## Executive Summary

This document provides a full technical analysis of 13 candidate skill repositories, a comparative selection matrix for overlapping capabilities, a centralized AGI OS directory architecture for a 9-brand agent fleet, and a phased deployment roadmap for the Hermes VPS. The recommended stack covers the full brand management lifecycle: **build → design → market → scale → automate → manage**.

---

## Part 1: Repository Catalogue

| # | Repository | Stars | Primary Function | Language | License |
|---|-----------|-------|-----------------|----------|---------|
| 1 | `msitarzewski/agency-agents` | ~high | 100+ specialized agency agent personas | Markdown | MIT |
| 2 | `bradautomates/claude-video` | 2.3k | Video analysis (watch/transcribe/frame-extract) | Python | MIT |
| 3 | `coreyhaines31/marketingskills` | 34.5k | 44+ marketing execution skills | Markdown | MIT |
| 4 | `mayankbohradev/voicenotes-mcp` | 3 | Unofficial Voicenotes MCP server | TypeScript | MIT |
| 5 | `multica-ai/andrej-karpathy-skills` | 180k | Agent behavior guidelines (CLAUDE.md) | Markdown | MIT |
| 6 | `nextlevelbuilder/ui-ux-pro-max-skill` | 94.9k | UI/UX design intelligence (161 rules) | Python/JS | MIT |
| 7 | `heygen-com/hyperframes` | 29.6k | HTML → MP4 video rendering for agents | TypeScript | Apache-2.0 |
| 8 | `JuliusBrussee/caveman` | 75.6k | Output token compression (65-75% reduction) | JS/Python | MIT |
| 9 | `pbakaus/impeccable` | 40.1k | Design quality enforcement (44 rules, CLI) | JavaScript | Apache-2.0 |
| 10 | `Leonxlnx/taste-skill` | 48.7k | Anti-slop frontend aesthetic framework | JavaScript | MIT |
| 11 | `Manavarya09/design-extract` | 3.3k | Live website design system extraction | JavaScript | MIT |
| 12 | `czlonkowski/n8n-mcp` | 21.9k | n8n workflow automation MCP (1,845 nodes) | TypeScript | MIT |
| 13 | `remotion-dev/remotion` | 50.8k | React → programmatic video framework | TypeScript | Special* |

> *Remotion requires a paid company license for commercial use with >0 employees. Self-hosted personal use is free.

---

## Part 2: Comparative Functional Analysis

### 2.1 Capability Clusters & Overlap Map

```
VIDEO PRODUCTION
├── INPUT ANALYSIS  → bradautomates/claude-video   [watch, transcribe, frame-extract]
└── OUTPUT RENDER
    ├── AGENT-NATIVE → heygen-com/hyperframes       [HTML→MP4, skill-driven]
    └── REACT-NATIVE → remotion-dev/remotion        [React→MP4, full framework]

UI/UX DESIGN (4-phase pipeline, no true overlap)
├── GENERATE     → nextlevelbuilder/ui-ux-pro-max-skill  [161 rules, design systems]
├── APPLY STYLE  → Leonxlnx/taste-skill                  [aesthetic dials, anti-slop]
├── ENFORCE      → pbakaus/impeccable                     [44 rules, CLI, hooks]
└── EXTRACT      → Manavarya09/design-extract            [DTCG tokens from live sites]

MARKETING
├── SKILL EXECUTION  → coreyhaines31/marketingskills  [44+ skills, CRO/SEO/copy/ads]
└── AGENT PERSONAS   → msitarzewski/agency-agents     [Marketing division + all others]

AGENT BEHAVIOR
├── COGNITION QUALITY → multica-ai/andrej-karpathy-skills  [4 principles, CLAUDE.md]
└── TOKEN EFFICIENCY  → JuliusBrussee/caveman              [65-75% output reduction]

WORKFLOW AUTOMATION
└── czlonkowski/n8n-mcp  [1,845 nodes, 20 MCP tools, 2,352 templates]

VOICE/NOTES INTEGRATION
├── OFFICIAL   → Voicenotes MCP (already in session)
└── UNOFFICIAL → mayankbohradev/voicenotes-mcp  [self-host only, reverse-engineered]
```

---

### 2.2 Head-to-Head Selection: Where Overlap Exists

#### VIDEO RENDERING: `hyperframes` vs `remotion`

| Criterion | heygen-com/hyperframes | remotion-dev/remotion |
|-----------|----------------------|----------------------|
| Agent-native | ✅ Skill + CLI built-in | ❌ Framework, agent skills added recently |
| Installation | `npx skills add heygen-com/hyperframes` | Full React project scaffold required |
| Input format | HTML + CSS + data attributes | React components + TypeScript |
| Learning curve | Low (HTML knowledge sufficient) | High (React + Remotion API) |
| Commercial license | Apache-2.0 (free) | Special license — paid for businesses |
| Commit velocity | 1,915 commits | 33,899 commits (mature framework) |
| Complexity output | Short-form brand videos, promos | Full-length, complex data visualizations |
| Brand asset pipeline | frame.md design token → video | External design system required |

**VERDICT: `hyperframes` is selected as the primary video rendering engine** for autonomous agent use. Its HTML-input model means any agent with UI/UX skills can produce video without a React build pipeline. `remotion` is retained as an **optional advanced layer** for brands requiring complex, data-driven video production with full React developer control — but NOT deployed by default due to licensing and complexity overhead.

---

#### DESIGN QUALITY: `impeccable` vs `taste-skill` vs `ui-ux-pro-max-skill`

These three are superficially similar (all improve AI-generated UI) but serve distinct phases:

| Repository | Phase | When to use |
|-----------|-------|-------------|
| `ui-ux-pro-max-skill` | **Generate** — creates design specs before coding | Starting new brand pages, landing pages, dashboards |
| `taste-skill` | **Style** — aesthetic direction during build | Ensuring output doesn't look like AI boilerplate |
| `impeccable` | **Enforce** — deterministic post-build audit | CI checks, pre-ship quality gates, PR hooks |

**VERDICT: All three are retained** as they form a sequential pipeline, not competing alternatives. If forced to choose one, `impeccable` wins for its **44-rule deterministic CLI** (usable without an LLM, CI-compatible), its Apache-2.0 license, and its 824-commit active maintenance history.

`design-extract` is categorically different (reverse-engineering competitor sites) and is always retained.

---

#### VOICENOTES: `mayankbohradev/voicenotes-mcp` vs Official MCP

| Criterion | mayankbohradev/voicenotes-mcp | Official mcp__Voicenotes__ |
|-----------|------------------------------|--------------------------|
| Stars | 3 | Official (in-session) |
| API basis | Reverse-engineered (unofficial) | Official API |
| Stability | ⚠️ Endpoints may break | ✅ Stable |
| Self-hosting | ✅ Full control | ❌ Cloud-only |
| Tool coverage | 14 tools | 4 tools (list, search, get, create) |
| Auth | OAuth 2.1 PKCE + token | Session-managed |

**VERDICT: Official `mcp__Voicenotes__` is used in production.** `mayankbohradev/voicenotes-mcp` is retained **only as a self-hosted fallback** if the official MCP becomes unavailable on the Hermes VPS environment. Its 14-tool surface (bulk tagging, tag management) exceeds the official 4 tools, making it valuable for advanced note orchestration.

---

#### MARKETING: `coreyhaines31/marketingskills` vs `msitarzewski/agency-agents`

These are complementary, not competing:

| Repository | Role |
|-----------|------|
| `coreyhaines31/marketingskills` | **Skill execution** — _how_ to do marketing tasks (44+ skills as procedural workflows) |
| `msitarzewski/agency-agents` | **Agent personas** — _who_ executes tasks (specialists with personality, expertise, and deliverables) |

**VERDICT: Both are essential.** `marketingskills` provides the procedural knowledge base; `agency-agents` provides the role-based orchestration layer. A Marketing Agent uses `agency-agents/marketing/marketing-growth-hacker.md` as its persona and `marketingskills/skills/cro` for its execution methodology.

---

### 2.3 Final Selected Stack (13 repos → 12 active)

| Repository | Status | Role in AGI OS |
|-----------|--------|---------------|
| `multica-ai/andrej-karpathy-skills` | ✅ **CORE** | Global agent behavior baseline |
| `JuliusBrussee/caveman` | ✅ **CORE** | Token efficiency across all agents |
| `msitarzewski/agency-agents` | ✅ **CORE** | Agent persona library (all divisions) |
| `coreyhaines31/marketingskills` | ✅ **CORE** | Marketing execution skills |
| `nextlevelbuilder/ui-ux-pro-max-skill` | ✅ **DESIGN** | Design system generation |
| `Leonxlnx/taste-skill` | ✅ **DESIGN** | Aesthetic anti-slop enforcement |
| `pbakaus/impeccable` | ✅ **DESIGN** | Design quality CI/CD enforcement |
| `Manavarya09/design-extract` | ✅ **DESIGN** | Competitor design extraction |
| `bradautomates/claude-video` | ✅ **MEDIA** | Video content analysis |
| `heygen-com/hyperframes` | ✅ **MEDIA** | Video production (primary) |
| `czlonkowski/n8n-mcp` | ✅ **AUTOMATION** | Workflow automation backbone |
| `mayankbohradev/voicenotes-mcp` | 🟡 **OPTIONAL** | Self-hosted notes MCP fallback |
| `remotion-dev/remotion` | 🟡 **OPTIONAL** | Advanced React video (commercial license required) |

---

## Part 3: AGI OS Integration Strategy

### 3.1 Architecture Philosophy

The AGI OS is designed around **three concentric rings**:

1. **Core Ring** — Global skills that apply to every agent in every brand context
2. **Functional Ring** — Domain-specific skills loaded per agent type
3. **Brand Ring** — Per-brand context, identity, product marketing, and operational config

Every agent operates within all three rings simultaneously. The Karpathy guidelines (Ring 1) govern *how* agents think; the agency-agent persona (Ring 2) governs *what* they know; the brand ring (Ring 3) governs *who they are working for*.

---

### 3.2 Directory Structure

```
/agi-os/
│
├── CLAUDE.md                          ← Ring 1: Karpathy guidelines (global)
│
├── core/
│   ├── karpathy-guidelines/           ← Think before coding, simplicity, surgical changes
│   ├── caveman/                       ← Token compression (optional per agent)
│   └── n8n-mcp/                       ← Workflow automation backbone
│       ├── docker-compose.yml
│       └── .env
│
├── skills/
│   ├── marketing/                     ← coreyhaines31/marketingskills (44+ skills)
│   │   ├── product-marketing.md       ← Foundation document (read by all)
│   │   ├── copywriting/
│   │   ├── cro/
│   │   ├── seo-audit/
│   │   ├── ai-seo/
│   │   ├── social/
│   │   ├── emails/
│   │   ├── ads/
│   │   ├── analytics/
│   │   └── ...                        ← All 44 skills
│   │
│   ├── design/
│   │   ├── generation/
│   │   │   └── ui-ux-pro-max/         ← nextlevelbuilder/ui-ux-pro-max-skill
│   │   │       ├── scripts/search.py
│   │   │       └── data/              ← 161 rules, 67 styles, 57 fonts
│   │   ├── aesthetic/
│   │   │   └── taste-skill/           ← Leonxlnx/taste-skill
│   │   ├── enforcement/
│   │   │   └── impeccable/            ← pbakaus/impeccable (+ CLI hook)
│   │   └── extraction/
│   │       └── design-extract/        ← Manavarya09/design-extract (designlang)
│   │
│   └── media/
│       ├── video-analysis/
│       │   └── claude-video/          ← bradautomates/claude-video (/watch)
│       └── video-render/
│           └── hyperframes/           ← heygen-com/hyperframes
│
├── agents/
│   └── agency/                        ← msitarzewski/agency-agents (all divisions)
│       ├── engineering/
│       ├── design/
│       ├── marketing/
│       ├── paid-media/
│       ├── sales/
│       ├── product/
│       ├── project-management/
│       ├── testing/
│       └── security/
│
├── integrations/
│   └── voicenotes-mcp/                ← mayankbohradev/voicenotes-mcp (self-host)
│
└── brands/
    ├── _template/                     ← Brand scaffold (copy per new brand)
    │   ├── BRAND.md                   ← Brand identity, positioning, tone of voice
    │   ├── product-marketing.md       ← marketingskills foundation doc (brand-specific)
    │   ├── design-system/
    │   │   ├── MASTER.md              ← Extracted/generated design tokens
    │   │   └── pages/                 ← Page-level overrides
    │   ├── agents/                    ← Active agent configs for this brand
    │   │   ├── marketing-agent.md
    │   │   ├── content-agent.md
    │   │   ├── design-agent.md
    │   │   └── ops-agent.md
    │   └── workflows/                 ← n8n workflow JSON exports
    │
    ├── brand-01/                      ← Brand 1 instance
    ├── brand-02/                      ← Brand 2 instance
    ├── brand-03/
    ├── brand-04/
    ├── brand-05/
    ├── brand-06/
    ├── brand-07/
    ├── brand-08/
    └── brand-09/
```

---

### 3.3 Agent Fleet Architecture

Each brand is served by a **4-agent core crew** plus **on-demand specialist agents**:

```
BRAND FLEET (per brand)
│
├── 🧠 BRAND ORCHESTRATOR
│   Persona:  agency-agents/product/product-manager.md
│   Skills:   marketing/product-marketing + marketing/marketing-ideas
│   Context:  brands/{brand}/BRAND.md + product-marketing.md
│   Role:     Owns brand strategy, prioritizes agent tasks, approves deliverables
│
├── 📣 MARKETING AGENT
│   Persona:  agency-agents/marketing/marketing-growth-hacker.md
│   Skills:   marketingskills (full suite, loads product-marketing.md first)
│   Context:  brands/{brand}/product-marketing.md
│   Role:     SEO, content, social, CRO, email, ads
│
├── 🎨 DESIGN AGENT
│   Persona:  agency-agents/design/design-ui-designer.md
│   Skills:   ui-ux-pro-max → taste-skill → impeccable (pipeline)
│             design-extract (competitor analysis)
│   Context:  brands/{brand}/design-system/MASTER.md
│   Role:     Brand consistency, UI generation, quality enforcement
│
├── 🎬 CONTENT AGENT
│   Persona:  agency-agents/marketing/marketing-content-creator.md
│   Skills:   claude-video (/watch for research), hyperframes (production)
│             marketingskills/skills/video + marketingskills/skills/social
│   Context:  brands/{brand}/BRAND.md
│   Role:     Video content analysis, production, social content
│
└── ⚙️ OPS AGENT
    Persona:  agency-agents/project-management/project-management-studio-operations.md
    Skills:   n8n-mcp (workflow automation), voicenotes-mcp (meeting capture)
    Context:  brands/{brand}/workflows/
    Role:     Automates repetitive tasks, maintains workflow health
```

**On-demand specialists** from `agency-agents` are invoked by the Orchestrator as needed:
- Engineering builds → `engineering-frontend-developer`, `engineering-backend-architect`
- Paid media → `paid-media-ppc-strategist`, `paid-media-paid-social-strategist`
- Sales → `sales-outbound-strategist`, `sales-deal-strategist`
- Testing → `testing-reality-checker`, `testing-accessibility-auditor`
- Security → `security-architect`

---

### 3.4 Cross-Brand Coordination Layer

The fleet orchestrates across 9 brands through **shared infrastructure**:

```
FLEET COORDINATOR
│
├── Shared Skills Library       → /agi-os/skills/ (single source of truth)
├── Shared Agent Personas       → /agi-os/agents/agency/ (no duplication)
├── Shared Automation           → /agi-os/core/n8n-mcp/ (one n8n instance)
├── Per-brand Context           → /agi-os/brands/{brand}/ (isolated)
└── Cross-brand Intelligence    → design-extract (monitor competitor sites)
                                   claude-video (analyze cross-brand content)
```

**Brand isolation guarantee:** Each brand's `BRAND.md` and `product-marketing.md` are loaded first in every agent session, ensuring no cross-contamination of voice, positioning, or audience targeting.

---

## Part 4: Operational Alignment

### 4.1 Skill → Workflow Mapping

The following maps each selected skill to the concrete brand management workflows it enables:

| Brand Operation | Skills Activated | Agent |
|----------------|-----------------|-------|
| Launch new brand page | `ui-ux-pro-max` → `taste-skill` → `impeccable` | Design Agent |
| Write homepage copy | `marketingskills/copywriting` + `product-marketing.md` | Marketing Agent |
| SEO audit | `marketingskills/seo-audit` + `marketingskills/ai-seo` | Marketing Agent |
| Run A/B test | `marketingskills/ab-testing` + `n8n-mcp` (workflow) | Marketing Agent + Ops |
| Analyze competitor | `design-extract` + `marketingskills/competitor-profiling` | Design Agent |
| Produce promo video | `claude-video` (research) → `hyperframes` (render) | Content Agent |
| Email campaign | `marketingskills/emails` + `n8n-mcp` (automation) | Marketing Agent + Ops |
| Paid ad creative | `marketingskills/ad-creative` + `marketingskills/ads` | Marketing Agent |
| Brand consistency audit | `impeccable` CLI (`npx impeccable detect`) | Design Agent (automated) |
| Note capture from meeting | `voicenotes-mcp` (vn_create_note) | Ops Agent |
| Churn prevention flow | `marketingskills/churn-prevention` + `n8n-mcp` | Ops Agent |
| PR / launch strategy | `marketingskills/launch` + `marketingskills/public-relations` | Marketing Agent |
| Social content | `marketingskills/social` + `hyperframes` (video) | Content Agent |
| Pricing strategy | `marketingskills/pricing` + `marketingskills/offers` | Orchestrator |
| Lead magnet creation | `marketingskills/lead-magnets` + `marketingskills/copywriting` | Marketing Agent |

---

### 4.2 Autonomous Brand Management Loop

Each brand runs a continuous **Plan → Build → Measure → Optimize** loop:

```
PLAN
  Orchestrator reads BRAND.md + product-marketing.md
  → marketingskills/marketing-plan (weekly plan)
  → Dispatches tasks to specialist agents

BUILD  
  Design Agent: ui-ux-pro-max generates spec → taste-skill applies aesthetic
                → impeccable enforces quality → design-extract monitors competitors
  Content Agent: claude-video analyzes viral content → hyperframes produces brand video
  Marketing Agent: copywriting → emails → social content → ad-creative

AUTOMATE
  Ops Agent: n8n-mcp builds workflows for:
    - Email sequence automation
    - Social publishing schedules
    - Analytics data pulls
    - Churn alerts
    - Lead routing

MEASURE
  Marketing Agent: marketingskills/analytics (GA4/tracking setup)
  Ops Agent: n8n-mcp workflow monitors KPIs, triggers alerts

OPTIMIZE
  Marketing Agent: marketingskills/ab-testing → marketingskills/cro
  Design Agent: impeccable audit on changed pages
  Orchestrator: marketingskills/marketing-psychology for persuasion layer
```

---

### 4.3 Token Efficiency Protocol

Given that this fleet runs 4+ agents per brand × 9 brands = 36+ concurrent contexts, token cost is a primary operational concern. The following efficiency stack is applied:

| Layer | Mechanism | Token Impact |
|-------|-----------|-------------|
| Output compression | `caveman` skill (lite mode for brand comms) | -65% output tokens |
| Input compression | `caveman-compress` on CLAUDE.md files | -46% input tokens |
| Skill loading | Load only relevant skills per task (not all 44) | Context size controlled |
| Design system | Per-brand MASTER.md + page overrides (hierarchical) | Avoids full re-extraction |
| Video analysis | `claude-video --start/--end` for focused clips | Avoids sparse 100-frame scans |

---

## Part 5: Deployment Roadmap (Hermes VPS)

### 5.1 Infrastructure Prerequisites

```
HERMES VPS REQUIREMENTS
├── OS: Ubuntu 22.04 LTS (recommended) or Debian 12
├── RAM: 8GB minimum (16GB recommended for n8n + multiple agent contexts)
├── Storage: 50GB SSD (design-extract outputs + video frames + n8n data)
├── Runtime Stack:
│   ├── Node.js 22+    (hyperframes, design-extract, n8n-mcp, impeccable CLI)
│   ├── Python 3.10+   (ui-ux-pro-max-skill search engine)
│   ├── FFmpeg         (claude-video frame extraction)
│   ├── yt-dlp         (claude-video download)
│   ├── Docker 24+     (n8n-mcp, optional Chromium for design-extract)
│   └── Git            (submodule management)
│
└── External Services:
    ├── Groq API key       (claude-video Whisper transcription — preferred)
    ├── OpenAI API key     (claude-video fallback transcription)
    ├── n8n instance       (czlonkowski/n8n-mcp requires N8N_API_URL + key)
    └── Claude API key     (agent runtime)
```

---

### 5.2 Phase 1: Foundation (Day 1–3)

**Objective:** Core infrastructure + global agent behavior baseline

```bash
# 1. Create AGI OS directory
mkdir -p /opt/agi-os
cd /opt/agi-os

# 2. Install Karpathy guidelines (global CLAUDE.md)
curl -o CLAUDE.md https://raw.githubusercontent.com/multica-ai/andrej-karpathy-skills/main/CLAUDE.md

# 3. Install agency-agents library
git clone https://github.com/msitarzewski/agency-agents.git agents/agency

# 4. Install caveman (global token compression)
npm install -g @juliusbrussee/caveman-code
# Add to Claude Code globally:
/plugin marketplace add JuliusBrussee/caveman
/plugin install caveman@caveman

# 5. Install Node.js 22+ via nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 22 && nvm use 22

# 6. Install Python 3
sudo apt update && sudo apt install -y python3 python3-pip
```

**Verification:** Run `claude --version` and confirm CLAUDE.md loads globally.

---

### 5.3 Phase 2: Design Stack (Day 4–7)

**Objective:** Full design pipeline operational

```bash
# 1. UI/UX Pro Max (requires Python 3)
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
# OR via CLI:
npm install -g uipro-cli
uipro init --ai claude --global

# 2. Taste Skill
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"

# 3. Impeccable (includes CLI)
npx impeccable install              # installs to ~/.claude/skills/
npm install -g impeccable           # CLI for CI/hooks

# 4. Design Extract (designlang)
npm install -g designlang
# Install as Claude Code plugin:
/plugin marketplace add Manavarya09/design-extract
/plugin install designlang@designlang

# 5. Verify design pipeline
npx impeccable detect --help        # should print CLI options
python3 --version                   # must be 3.x for ui-ux-pro-max
```

**Verification:** Run `/impeccable init` in a test project. Confirm design system generates.

---

### 5.4 Phase 3: Media Stack (Day 8–10)

**Objective:** Video analysis and production capabilities

```bash
# 1. Install FFmpeg and yt-dlp (required for claude-video)
sudo apt install -y ffmpeg
pip3 install yt-dlp

# 2. claude-video (/watch skill)
/plugin marketplace add bradautomates/claude-video
/plugin install watch@claude-video

# 3. Configure Whisper API key (for claude-video transcription)
mkdir -p ~/.config/watch
cat > ~/.config/watch/.env << 'EOF'
# GROQ_API_KEY=your_groq_key_here    # Preferred: cheaper + faster
# OPENAI_API_KEY=your_openai_key     # Fallback
EOF
chmod 600 ~/.config/watch/.env

# 4. HyperFrames (HTML→video rendering)
npx skills add heygen-com/hyperframes
# Verify:
npx hyperframes --version

# 5. First run test
# In Claude: /watch https://www.youtube.com/watch?v=<video-id> summarize this
```

**Verification:** Run `/watch` with a short YouTube URL. Confirm frames extract and transcript generates.

---

### 5.5 Phase 4: Marketing Skills (Day 11–13)

**Objective:** Full 44-skill marketing execution stack

```bash
# Install all marketingskills (option 1: CLI — recommended)
npx skills add coreyhaines31/marketingskills

# OR option 2: clone directly
git clone https://github.com/coreyhaines31/marketingskills.git skills/marketing-external
cp -r skills/marketing-external/skills/* skills/marketing/

# Verify skill availability
ls skills/marketing/ | wc -l     # should show 44+ skill directories

# Initialize product-marketing foundation for each brand
for i in $(seq -w 1 9); do
  mkdir -p brands/brand-${i}
  cp skills/marketing/product-marketing/SKILL.md brands/brand-${i}/product-marketing.md
  echo "# Brand ${i} — TODO: Fill in product context" > brands/brand-${i}/BRAND.md
done
```

**Verification:** In Claude: `/cro` — agent should invoke CRO skill and ask for target URL.

---

### 5.6 Phase 5: Automation Backbone (Day 14–17)

**Objective:** n8n-mcp live for workflow automation

```bash
# 1. Deploy n8n with n8n-mcp via Docker
cd /opt/agi-os/core/n8n-mcp
git clone https://github.com/czlonkowski/n8n-mcp.git .
cp .env.example .env
# Edit .env: set N8N_API_URL, N8N_API_KEY

# 2. Launch n8n (required before n8n-mcp)
docker compose -f docker-compose.n8n.yml up -d

# 3. Configure n8n-mcp for Claude Code
# Add to ~/.claude/settings.json mcpServers:
cat >> ~/.claude/settings.json << 'EOF'
{
  "mcpServers": {
    "n8n-mcp": {
      "command": "npx",
      "args": ["-y", "n8n-mcp"],
      "env": {
        "N8N_API_URL": "http://localhost:5678",
        "N8N_API_KEY": "<your-n8n-api-key>"
      }
    }
  }
}
EOF

# 4. Verify
# In Claude: ask Claude to list n8n workflows — should return from n8n instance
```

**Verification:** Ask Claude: "List my n8n workflows using the n8n-mcp tools." Should return workflow list.

---

### 5.7 Phase 6: Voice/Notes Integration (Day 18–19)

**Objective:** Voice capture pipeline for brand meeting notes

```bash
# Option A: Use official Voicenotes MCP (already in session — no install needed)
# The mcp__Voicenotes__* tools are available in Claude Code sessions natively.

# Option B: Self-hosted extended tools (14 tools vs 4)
cd /opt/agi-os/integrations/voicenotes-mcp
git clone https://github.com/mayankbohradev/voicenotes-mcp.git .
npm install && npm run build
bash register.sh                 # prompts for VN_API_TOKEN

# Add to Claude Code settings (for self-hosted):
# Add "voicenotes-custom" to mcpServers in settings.json
```

---

### 5.8 Phase 7: Brand Fleet Initialization (Day 20–25)

**Objective:** All 9 brands fully configured with dedicated agent contexts

```bash
# Generate per-brand design systems from existing brand websites
for BRAND_URL in "brand1.com" "brand2.com" "brand3.com" \
                 "brand4.com" "brand5.com" "brand6.com" \
                 "brand7.com" "brand8.com" "brand9.com"; do
  
  BRAND_NAME=$(echo $BRAND_URL | sed 's/\.com//')
  mkdir -p brands/${BRAND_NAME}/design-system/pages
  
  # Extract existing design system
  npx designlang ${BRAND_URL} \
    --out brands/${BRAND_NAME}/design-system/ \
    --name "${BRAND_NAME}"
  
  # Save as MASTER.md for hierarchical retrieval
  echo "# ${BRAND_NAME} Design System" > brands/${BRAND_NAME}/design-system/MASTER.md
  echo "Generated: $(date)" >> brands/${BRAND_NAME}/design-system/MASTER.md
  
  echo "✅ ${BRAND_NAME} design system extracted"
done

# Initialize n8n workflows for each brand (via n8n-mcp)
# In Claude: "Using n8n-mcp, search templates for email automation and 
#             deploy to n8n for brand-01. Configure for our list at list@brand-01.com"
```

---

### 5.9 Deployment Timeline Summary

| Phase | Days | Components | Deliverable |
|-------|------|-----------|-------------|
| 1: Foundation | 1–3 | Karpathy + agency-agents + caveman | Global agent behavior baseline |
| 2: Design Stack | 4–7 | ui-ux-pro-max + taste-skill + impeccable + design-extract | Full design pipeline |
| 3: Media Stack | 8–10 | claude-video + hyperframes | Video analysis + production |
| 4: Marketing | 11–13 | marketingskills (44 skills) | Marketing execution skills |
| 5: Automation | 14–17 | n8n-mcp + Docker | Workflow automation backbone |
| 6: Voice/Notes | 18–19 | voicenotes-mcp | Meeting capture |
| 7: Brand Fleet | 20–25 | Per-brand context + design systems | 9 brands live |

**Total estimated setup time: 25 days** with one developer following this roadmap.

---

### 5.10 Operational Maintenance

```bash
# Weekly skill updates (run as cron job)
npx skills add coreyhaines31/marketingskills   # auto-updates
npx impeccable update
uipro update

# Monthly design system refresh per brand
npx designlang drift https://brand-N.com --tokens brands/brand-N/design-system/design-tokens.json

# n8n-mcp update
cd /opt/agi-os/core/n8n-mcp
git pull origin main
npm ci && docker compose restart

# Monitor token spend
# In Claude: /caveman-stats --share   → prints lifetime savings to share
```

---

## Part 6: Risk Register

| Risk | Severity | Mitigation |
|------|---------|-----------|
| Voicenotes API breaks (unofficial MCP) | Medium | Use official MCP; unofficial as backup only |
| Remotion commercial license (if added) | High | Use hyperframes as primary; Remotion opt-in only |
| n8n self-hosted maintenance overhead | Medium | Pin to tested version; enable auto-backup workflows |
| design-extract Playwright/Chromium footprint | Low | Use `--system-chrome` flag to skip 150MB download |
| caveman over-compression in brand voice | Low | Use `lite` mode for client-facing outputs; `full` for internal |
| Token costs at scale (36+ agent contexts) | Medium | Hierarchical skill loading; caveman-compress CLAUDE.md files |
| n8n workflow touching production data | High | Per n8n-mcp safety warning: always copy workflows; test first |

---

## Appendix A: Quick Reference — Install Commands

```bash
# All installs from Claude Code (after auth):

# CORE
/plugin marketplace add multica-ai/andrej-karpathy-skills
/plugin install andrej-karpathy-skills@karpathy-skills
/plugin marketplace add JuliusBrussee/caveman && /plugin install caveman@caveman

# DESIGN
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
npx impeccable install
/plugin marketplace add Manavarya09/design-extract
/plugin install designlang@designlang

# MEDIA
/plugin marketplace add bradautomates/claude-video
/plugin install watch@claude-video
npx skills add heygen-com/hyperframes

# MARKETING
npx skills add coreyhaines31/marketingskills

# AUTOMATION (requires n8n running)
# Configure mcpServers in settings.json manually (see Phase 5)
```

---

## Appendix B: Skill Trigger Reference

| Invoke | Skill | Expected Behavior |
|--------|-------|-----------------|
| `/watch <url>` | claude-video | Downloads, frames, transcribes video |
| `/hyperframes` | hyperframes | Begins HTML→video production loop |
| `/cro` | marketingskills | CRO audit + recommendations |
| `/seo-audit` | marketingskills | Full SEO site audit |
| `/copywriting` | marketingskills | Reads product-marketing.md, writes copy |
| `/ui-ux-pro-max` | ui-ux-pro-max-skill | Generates design system for product type |
| `/impeccable audit` | impeccable | Scans current project for design issues |
| `/impeccable init` | impeccable | One-time design context setup |
| `/extract <url>` | design-extract | Pulls DTCG tokens, Tailwind, Figma vars |
| `/caveman` | caveman | Activates 65% token compression mode |
| `karpathy-guidelines` | andrej-karpathy-skills | Auto-loaded via CLAUDE.md globally |

---

*This analysis was prepared for DigitalRavagers' AGI OS fleet targeting 9-brand autonomous management. All selected repositories are MIT or Apache-2.0 licensed except Remotion (special commercial license) which is flagged as optional. The n8n-mcp production safety warning is critical: never modify live production n8n workflows directly from AI — always work on copies.*
