#!/bin/bash
# Start OpenClaw optimized for Codespaces

# Generate token if not set
if [ -z "$OPENCLAW_GATEWAY_TOKEN" ]; then
  export OPENCLAW_GATEWAY_TOKEN="codespace-$(openssl rand -hex 16)"
fi

echo "🚀 Starting OpenClaw..."
echo "🔑 Token: $OPENCLAW_GATEWAY_TOKEN"

# Start gateway on port 8080 (Codespaces-friendly)
exec node openclaw.mjs gateway \
  --allow-unconfigured \
  --bind lan \
  --port 8080 \
  --token "$OPENCLAW_GATEWAY_TOKEN"
