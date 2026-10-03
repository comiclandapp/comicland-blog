#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ -f "$ROOT/.env.local" ]]; then
  # shellcheck disable=SC1090
  source "$ROOT/.env.local"
fi

: "${SITE:?Set SITE in .env.local or the environment}"
: "${AUTH:?Set AUTH in .env.local or the environment}"

if [[ $# -lt 2 || $# -gt 3 ]]; then
  printf 'Usage: %s <title> <content-html> [excerpt]\n' "$0" >&2
  exit 2
fi

python3 - "$@" <<'PY' | curl -fsS -X POST "$SITE/wp-json/wp/v2/posts" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @-
import json
import sys

title, content, *excerpt = sys.argv[1:]
print(json.dumps({
    "title": title,
    "content": content,
    "excerpt": excerpt[0] if excerpt else "",
    "status": "publish",
}))
PY
