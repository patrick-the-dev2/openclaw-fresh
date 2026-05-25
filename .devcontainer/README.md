# Running OpenClaw in Codespaces

## Ports
OpenClaw gateway runs on port 8080 by default. After `npm install`:

1. Start: `node openclaw.mjs`
2. In **Ports** tab, right-click port 8080 → **Open in Browser**
3. Or visit: `https://USERNAME-openclaw-fresh-8080.githubpreview.dev`

## Required Environment Variables
Add to Codespaces **Settings → Variables**:
- `OPENCLAW_GATEWAY_TOKEN` - Generate with: `openssl rand -hex 32`

## Node Version
Requires Node.js 22.19+ (automatically provided in devcontainer).
