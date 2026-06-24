---
name: claude-video
description: Analyze, transcribe, and extract insights from any video URL. Downloads via yt-dlp, extracts audio with FFmpeg, transcribes with OpenAI Whisper, then produces structured analysis. Use when asked to "analyze this video", "transcribe this YouTube video", "summarize a video", "get the transcript of", or "what does this video say". Requires FFmpeg and yt-dlp installed.
version: 1.0.0
tools: Bash
---

# Claude Video Analysis Skill

## What This Skill Does

Downloads any video URL (YouTube, Vimeo, direct MP4, etc.), extracts audio, transcribes with Whisper, and produces a structured analysis. All processing is local — no external API calls for transcription.

## Pipeline

```
URL → yt-dlp download → ffmpeg audio extract → whisper transcribe → structured output
```

## Usage

When asked to analyze, transcribe, or summarize a video:

### Step 1 — Download

```bash
yt-dlp -x --audio-format mp3 -o "/tmp/video-analysis/%(title)s.%(ext)s" "<URL>"
```

### Step 2 — Transcribe

```bash
whisper "/tmp/video-analysis/<filename>.mp3" --model base --output_dir /tmp/video-analysis/ --output_format json
```

### Step 3 — Analyze

Read the JSON transcript and produce:

```markdown
## Video Analysis

**Title**: [video title]
**Duration**: [X min]
**URL**: [original URL]

### Summary
[2-3 sentence overview of what the video covers]

### Key Points
1. [Point 1 with timestamp if available]
2. [Point 2]
3. [Point 3]

### Quotes / Notable Lines
> "[exact quote]" — [timestamp]

### Actionable Insights
- [What can be done with this information]

### Full Transcript
[Complete transcript text]
```

## Requirements

- `yt-dlp` — installed ✅
- `ffmpeg` — installed ✅  
- `openai-whisper` (Python) — installed ✅
- Disk space: ~50MB per 10min video in /tmp

## Model Selection

| Use Case | Whisper Model | Speed |
|---|---|---|
| Quick summary | `tiny` | ~30s |
| Standard analysis | `base` | ~60s |
| High accuracy | `small` | ~3min |
| Long-form / complex | `medium` | ~8min |

Default: `base`. Override with `--model <size>` if user specifies accuracy requirements.

## Cleanup

```bash
rm -rf /tmp/video-analysis/
```

Always clean up after analysis unless user requests to keep files.
