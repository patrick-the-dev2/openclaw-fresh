#!/bin/bash
# Post-start script to display access URL with token

TOKEN_FILE="/workspaces/openclaw-fresh/.openclaw-token"

# Get or generate token
if [ -z "$OPENCLAW_GATEWAY_TOKEN" ]; then
  export OPENCLAW_GATEWAY_TOKEN="codespace-$(openssl rand -hex 16)"
fi

echo "$OPENCLAW_GATEWAY_TOKEN" > "$TOKEN_FILE"

# Display access URL
CODESPACE_NAME=$(echo "$CODESPACE_NAME")
GITHUB_USER=$(echo "$GITHUB_REPOSITORY_OWNER")

echo ""
echo "🚀 OpenClaw Access URLs:"
echo "   With token: https://${GITHUB_USER}-${CODESPACE_NAME}-8080.githubpreview.dev/?token=${OPENCLAW_GATEWAY_TOKEN}"
echo "   Token only: ${OPENCLAW_GATEWAY_TOKEN}"
echo ""
