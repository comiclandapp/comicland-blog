#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="$ROOT/.env.local"

if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC1090
  source "$ENV_FILE"
fi

: "${SITE:?Set SITE in .env.local or the environment}"
: "${AUTH:?Set AUTH in .env.local or the environment}"

css_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-css.XXXXXX.json")"
home_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-home.XXXXXX.json")"
trap 'rm -f "$css_payload" "$home_payload"' EXIT

cd "$ROOT"

python3 - "$css_payload" "$home_payload" <<'PY'
import json
import sys
from pathlib import Path

css_payload, home_payload = sys.argv[1:3]
Path(css_payload).write_text(
    json.dumps({"styles": {"css": Path("styles/additional-css.css").read_text(encoding="utf-8")}}),
    encoding="utf-8",
)
Path(home_payload).write_text(
    json.dumps({"content": Path("templates/home.html").read_text(encoding="utf-8")}),
    encoding="utf-8",
)
PY

curl -fsS -X POST "$SITE/wp-json/wp/v2/global-styles/8" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$css_payload" \
  >/dev/null

curl -fsS -X POST "$SITE/wp-json/wp/v2/templates/twentytwentyfive//home" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$home_payload" \
  >/dev/null

echo "Deployed CSS and home template to $SITE"

