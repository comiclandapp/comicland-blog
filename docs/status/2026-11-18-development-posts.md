# November 18 development-post batch

Nine new Development articles cover work since the November 6 published batch:

- Manga cover orientation, with the supplied iOS screenshot and a labelled cover-order diagram.
- Android's progress toward workflow parity.
- Android provider search from Home.
- Android cover cycling and viewer gestures.
- Native Mac cataloguing progress.
- Provider sign-in and session recovery.
- Provider series and printing identity during imports.
- Consistent segmented tabs.
- Native Mac backup import and migration handling.

## Editorial sources

The live RSS feed was checked before writing; its newest articles were the November 6 batch (UTC publication timestamps November 7).

The app's current English v6.0 What's New and the implementation records were checked against iOS commit `83b6810cb` and Android commit `68ab2ee6`. Specific sources include the iOS `CoverOrientation` domain rule, the November 17 parity audit's corrected front-stays-front decision, `docs/NATIVE_MAC.md`, provider import/sign-in commits, Android's Home search-menu commits, `CoverOrientationTest` and `ImageViewerTest`.

Older Android README passages about a disabled Providers tab are stale relative to the implementation; those passages were not used as current feature claims. The Android posts describe progress toward parity, without claiming a percentage or a store launch. The Mac article retains the explicit account/sync and provider deferrals.

## Media

Four PNGs live under `Public/images/2026-11-development/`:

- `manga-cover-editor.png`: an exact rectangular crop of the screenshot supplied for this publication. Original artwork and UI text are unchanged. A generative edit was rejected because it redrew screenshot details; it is not published.
- `manga-cover-order.png`: original labelled illustration of the two five-slot row orders.
- `provider-import-identity.png`: original explanatory graphic about record identity.
- `android-parity-journeys.png`: original overview illustration, not an app screenshot or a completion score.

All new posts have fixed dated paths and explicit production-URL RSS GUIDs. No existing article paths, IDs, GUIDs or media were changed.

## Release approach

This is a content-only overlay on the deployed Vapor image `comicland-blog:production-20261107`, config ID `sha256:958ff2449c55831a7bcd7d0700cb0e3cc599efaaf99a9a982fbb0d2ce0cd858f`. It adds only the nine Markdown files and four PNGs; it does not replace the application binary, configuration, templates or old content. The existing local Vapor migration source files predate this editorial task and are kept separate from its Git commit.

Preview is recreated and checked before the same immutable candidate is selected by production. Each service retains `.env.before-posts-20261118` for rollback; prior images remain present. No credentials are included in the content archive or Git commit.

## Validation

- 8 Vapor tests passed with the new articles, including route, canonical, feed, sitemap and imported identity checks.
- 4 Python importer tests and 5 browser contact-state tests passed; no email was sent.
- The local manga article and deployed preview were inspected in Chrome.
- Preview checks passed for all 9 new articles, their RSS identities and sitemap entries, and 4 bitmap hashes.
- The preview's existing 45 imported pages and 79 media hashes also passed the read-only site check.

## Production verification

Published November 18, 2026. Source content commit: `fa26cd3`, pushed to
`origin/feature/vapor-blog`.

- Candidate selected by preview and production: `comicland-blog:posts-20261118-v2`.
- Image config ID: `sha256:d93b769cd18257be28202ed4f0ae4e0dd873407ab7b0ac08f16fe5695dcd456f`.
- Production `/health` returned `200 OK` after startup.
- Production verification passed for all 9 new articles, their RSS GUIDs and
  sitemap entries, and the 4 bitmap hashes.
- The full read-only production site check passed for 45 imported pages,
  79 migrated-media checksums, listing, health, RSS, sitemap and contact.

Only the blog services were recreated. Website/API projects, contact settings,
indexing policy, WordPress rollback services and prior release images were left
as they were.

## Tone rewrite deployment

The same day, the posts were rewritten for voice (plain changelog titles,
unadorned prose) and redeployed as a content-only overlay.

- Source content commit: `4191521`, pushed to `origin/feature/vapor-blog`.
- Candidate selected by preview and production: `comicland-blog:posts-20261118-v3`.
- Built with `docker build --platform linux/amd64 --target test`, which ran the
  Swift regression suite and the 4 Python importer tests before the runtime image.
- Preview verified first: `/health` 200, new titles on the article pages, and the
  read-only check passed for 45 imported pages, 79 media checksums, listing, RSS,
  sitemap and contact.
- Production then selected the same image. `/health` returned 200 and the
  read-only production check passed with the same results.
- Rollback: `.env.before-copy-20261118` in each directory, with
  `comicland-blog:posts-20261118-v2` still present on the NAS.
- Only the two blog services were recreated; website/API projects, contact
  settings, WordPress rollback services and earlier images were left alone.
