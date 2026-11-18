---
title: Blog posts get plain changelog titles and unadorned prose
author: Antonio
date: 2026-11-18
branch: feature/vapor-blog
id: l-151b9a5b
scope: repo
status: active
src: agent
touches:
  - Content/posts/2026-11-18-android-closing-the-parity-gap.md
  - Content/posts/2026-11-18-android-covers-and-reading-gestures.md
  - Content/posts/2026-11-18-android-search-providers-from-home.md
  - Content/posts/2026-11-18-imports-keep-series-and-printings-straight.md
  - Content/posts/2026-11-18-manga-covers-spine-on-the-right.md
  - Content/posts/2026-11-18-native-mac-library-takes-shape.md
  - Content/posts/2026-11-18-provider-sign-in-is-clearer.md
  - Content/posts/2026-11-18-safer-backup-imports-on-mac.md
  - Content/posts/2026-11-18-tabs-that-behave-the-same.md
  - README.md
---

## Decided
- All 53 posts are agent-written, and the user says they read machine-generated. The fix is the register, not the content: feature announcements stay, no personal voice is wanted.
- Titles go to plain changelog: "Provider sign-in", "Cover orientation for manga", "Android parity". Short, factual, no colon-plus-hook.
- Prose drops five habits: the normative opener ("A backup should be a way back into your collection"), slogan headings ("Expiry is a normal event"), bold emphasis outside UI labels, "not X, but Y" clarifications, and the closing moral ("It is quiet work, but it is the sort of consistency…").

## Tried and ruled out
- Magazine-ish titles with an angle ("The spine goes on the right"): rejected — too close to the formula being removed.
- Full-sentence titles ("ComicLand can now put the spine on the right"): rejected; informative but still reads written-to-a-template in a feed.
- Adding personal anecdote: rejected by the user outright — the blog has nothing personal in it.

## Watch out
- Front matter `path`, `guid` and WordPress IDs must not change; only `title` and `excerpt` are safe to edit. Images, figure blocks and links stay byte-identical.
- The site's prose uses typographic apostrophes (’). Straight ' in new text is visible drift.
- What reads wrong is sentence-level rhythm, not vocabulary. Rewrite whole paragraphs; swapping individual words leaves the pattern in place.

In the code: Content/posts/*.md (title and excerpt in the JSON front matter, body after the closing ---), Content/migration.json for the published paths that must not move.
