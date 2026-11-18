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
