---
title: "Publish ComicLand through the Vapor content repo, not WordPress"
author: Antonio
date: 2026-11-18
branch: feature/vapor-blog
id: l-396cc980
scope: repo
status: active
src: agent
touches:
  - README.md
---

## Decided
Publish blog updates as Markdown articles and local images in the ComicLand Vapor blog repository. The user explicitly corrected the workflow: the blog is now a GitHub-backed Vapor app, not WordPress. Preview and production run immutable blog containers on the Synology; a Git push alone does not publish content.

## Tried and ruled out
Do not follow the older application-repo learning about WordPress users and application passwords. It predates the November 7 Vapor cutover. Do not run the retained WordPress publishing scripts, which are rollback history only.

## Watch out
New posts need stable RSS identity as well as stable dated paths. An explicit production-URL GUID keeps identity independent of the preview hostname. Keep development progress distinct from store-release announcements, particularly while Android parity is being completed.

In the code: Content/posts uses JSON front matter; Scripts/new-post.py creates drafts; Public/images holds new assets. README.md and docs/VAPOR_MIGRATION.md describe preview, production and the rebuild/restart requirement.
