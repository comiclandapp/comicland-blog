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
single_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-single.XXXXXX.json")"
archive_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-archive.XXXXXX.json")"
contact_hero_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-contact-hero.XXXXXX.json")"
header_payload="$(mktemp "${TMPDIR:-/tmp}/comicland-blog-header.XXXXXX.json")"
trap 'rm -f "$css_payload" "$home_payload" "$single_payload" "$archive_payload" "$contact_hero_payload" "$header_payload"' EXIT

cd "$ROOT"

python3 - "$css_payload" "$home_payload" "$single_payload" "$archive_payload" "$contact_hero_payload" "$header_payload" <<'PY'
import json
import sys
from pathlib import Path

css_payload, home_payload, single_payload, archive_payload, contact_hero_payload, header_payload = sys.argv[1:7]
Path(css_payload).write_text(
    json.dumps({"styles": {"css": Path("styles/additional-css.css").read_text(encoding="utf-8")}}),
    encoding="utf-8",
)
Path(home_payload).write_text(
    json.dumps({"content": Path("templates/home.html").read_text(encoding="utf-8")}),
    encoding="utf-8",
)
Path(single_payload).write_text(
    json.dumps({"content": Path("templates/single.html").read_text(encoding="utf-8")}),
    encoding="utf-8",
)
Path(archive_payload).write_text(
    json.dumps({"content": Path("templates/archive.html").read_text(encoding="utf-8")}),
    encoding="utf-8",
)
Path(contact_hero_payload).write_text(
    json.dumps({"content": Path("templates/page-contact-hero.html").read_text(encoding="utf-8")}),
    encoding="utf-8",
)
Path(header_payload).write_text(
    json.dumps({"content": Path("template-parts/header.html").read_text(encoding="utf-8")}),
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

curl -fsS -X POST "$SITE/wp-json/wp/v2/templates/twentytwentyfive//single" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$single_payload" \
  >/dev/null

curl -fsS -X POST "$SITE/wp-json/wp/v2/templates/twentytwentyfive//archive" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$archive_payload" \
  >/dev/null

curl -fsS -X POST "$SITE/wp-json/wp/v2/templates/twentytwentyfive//page-contact-hero" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$contact_hero_payload" \
  >/dev/null

curl -fsS -X POST "$SITE/wp-json/wp/v2/template-parts/twentytwentyfive//header" \
  -u "$AUTH" \
  -H 'Content-Type: application/json' \
  --data-binary @"$header_payload" \
  >/dev/null

echo "Deployed CSS, home, single-post, archive, contact-hero templates, and the header template part to $SITE"
