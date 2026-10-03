# ComicLand blog customizations

Version-controlled backup of the hand-authored customizations on
**https://blog.comicland.net** — a WordPress site (Twenty Twenty-Five block
theme) running in Docker on the Synology NAS, exposed via a Cloudflare
tunnel with no public ports and no filesystem/SSH access. Because of that,
this repo doesn't hold the full WordPress install (themes, plugins,
database) — it holds the things that are actually hand-edited and
worth tracking:

```
styles/additional-css.css          Site-wide custom CSS (global styles "css" field)
templates/home.html                Customized block markup for the front page
templates/single.html              Customized block markup for a single post
templates/archive.html             Customized block markup for category archives
templates/page-contact-hero.html   Customized block markup for the Contact page
template-parts/header.html         Shared header part (used by single/archive/contact, not home)
```

Everything here is pulled from / pushed to the site via the WordPress REST
API using an administrator Application Password — there's no build step,
no theme files, just the raw content of what's been customized beyond the
stock Twenty Twenty-Five theme defaults.

## Why this exists

Before this repo, site styling changes were made with one-off `curl` calls
straight to the live REST API — no diff, no history, no way to review a
change before it went live, no rollback path beyond re-deriving the CSS
from scratch. This repo exists so those changes go through a normal
edit → commit → push flow instead, with the live site as the deploy
target rather than the source of truth.

## Pulling the current live state

```bash
SITE=https://blog.comicland.net
AUTH='claude-agent:xxxx xxxx xxxx xxxx xxxx xxxx'   # WordPress admin application password

curl -s "$SITE/wp-json/wp/v2/global-styles/8" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['styles']['css'])" \
  > styles/additional-css.css

curl -s "$SITE/wp-json/wp/v2/templates/twentytwentyfive//home?context=edit" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['content']['raw'])" \
  > templates/home.html

curl -s "$SITE/wp-json/wp/v2/templates/twentytwentyfive//single?context=edit" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['content']['raw'])" \
  > templates/single.html

curl -s "$SITE/wp-json/wp/v2/templates/twentytwentyfive//archive?context=edit" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['content']['raw'])" \
  > templates/archive.html

curl -s "$SITE/wp-json/wp/v2/templates/twentytwentyfive//page-contact-hero?context=edit" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['content']['raw'])" \
  > templates/page-contact-hero.html

curl -s "$SITE/wp-json/wp/v2/template-parts/twentytwentyfive//header?context=edit" -u "$AUTH" \
  | python3 -c "import json,sys; print(json.load(sys.stdin)['content']['raw'])" \
  > template-parts/header.html
```

The global styles post ID (`8` above) is site-specific — rediscover it via
`GET /wp/v2/themes/twentytwentyfive?context=edit` and read the
`_links["wp:user-global-styles"]` href if the site is ever rebuilt.

## Pushing a local edit live

This repo includes `Scripts/deploy-wordpress.sh`, which reads `SITE` and
`AUTH` from an untracked `.env.local` file if present:

```bash
SITE='https://blog.comicland.net'
AUTH='codex-agent:xxxx xxxx xxxx xxxx xxxx xxxx'
```

Then deploy all tracked live-editable files with:

```bash
Scripts/deploy-wordpress.sh
```

## Publishing a post

Create and publish a standard WordPress post with the saved credentials:

```bash
Scripts/publish-post.sh "Post title" "<p>Post body in HTML.</p>" "Short excerpt"
```

The script prints WordPress's response, including the published post URL.

The manual API calls below are kept as a reference.

Edit the file locally, then PATCH it back — each of these merges just the
one field being changed, so fetch the other current fields first if editing
by hand rather than scripting it (an example flow is in the git history of
this repo, from when the card/excerpt/read-more styling was first added).
Note `template-parts/header.html` lives under the separate
`wp/v2/template-parts/twentytwentyfive//header` collection, not
`wp/v2/templates` — full-page templates and reusable template parts are
different REST resources in WordPress.

```bash
# CSS
python3 -c "
import json
css = open('styles/additional-css.css').read()
print(json.dumps({'styles': {'css': css}}))
" | curl -s -X POST "$SITE/wp-json/wp/v2/global-styles/8" -u "$AUTH" \
      -H 'Content-Type: application/json' --data-binary @-

# Template
python3 -c "
import json
content = open('templates/home.html').read()
print(json.dumps({'content': content}))
" | curl -s -X POST "$SITE/wp-json/wp/v2/templates/twentytwentyfive//home" -u "$AUTH" \
      -H 'Content-Type: application/json' --data-binary @-
```

Commit and push here *after* confirming the live change looks right —
this repo is a record of what's live, not a staging area WordPress reads
from automatically.

## Related

- **`comicland-site`** — the separate static marketing page at
  `app.comicland.net` (GitHub Pages, not WordPress). Unrelated platform,
  unrelated repo.
