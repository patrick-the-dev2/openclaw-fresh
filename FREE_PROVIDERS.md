# Free OpenClaw Providers

## Quick Start (Codespaces)

1. **Launch Codespace**: https://github.com/patrick-the-dev2/openclaw-fresh
2. **Set Secrets** (Codespaces Settings → Secrets):
   - `OPENROUTER_API_KEY` - Free tier available
   - `NVIDIA_NIM_API_KEY` - Free at https://build.nvidia.com
   - `OPENCLAW_GATEWAY_TOKEN` - Generate: `openssl rand -hex 32`

## Free Provider Options

### 1. OpenRouter (Recommended - Easy Setup)
- Free models: `google/gemini-flash-1.5`, `anthropic/claude-3-haiku`, `meta-llama/llama-3.1-70b`
- Get key: https://openrouter.ai/keys
- No credit card required

### 2. NVIDIA NIM
- Free tier: 100 requests/day
- Models: `stepfun-ai/step-3.5-flash`, `moonshotai/kimi-k2.5`
- Get key: https://build.nvidia.com/settings/api-keys
- Requires NVIDIA account

### 3. OpenAI (Free Credits)
- New accounts get $5 free credit
- Set `OPENAI_API_KEY`

## Access URLs

After starting OpenClaw:
- **Gateway UI**: `https://USERNAME-openclaw-fresh-8080.githubpreview.dev`
- **API**: `https://USERNAME-openclaw-fresh-18789.githubpreview.dev`

Token login: `?token=YOUR_OPENCLAW_GATEWAY_TOKEN`
