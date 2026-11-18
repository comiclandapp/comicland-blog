---
{
  "title": "Backup import on Mac",
  "date": "2026-11-18T13:25:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/safer-backup-imports-on-mac/",
  "excerpt": "Supported iOS backups become a Mac library; the source archive is left alone and a failed import is cleaned up.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/safer-backup-imports-on-mac/"
}
---

Import Backup on the Mac builds a new `.comiclandlibrary` package from the archive you pick and leaves the archive alone. Import the same backup twice and you get two libraries with different names.

Extraction happens in a staging area, and only a finished result is presented as a library. A failed import deletes the partial package instead of leaving something that looks ready to open. Long imports can be cancelled, with progress shown while they run.

Backups written by an older version are migrated on the newly imported copy. Opening an existing older library is the case that needs a warning, because that upgrade writes to your file. A store the app doesn’t recognise is refused rather than opened and rewritten, and a refusal leaves the file untouched.

Cover art comes from the archive. A backup with images included brings them into the package; a database-only backup can’t invent files that were never in it, and Photos-backed covers depend on whether the Mac can reach the asset.

The work was checked end to end with an older archive — import, migration and opening — along with the cancel and cleanup paths.
