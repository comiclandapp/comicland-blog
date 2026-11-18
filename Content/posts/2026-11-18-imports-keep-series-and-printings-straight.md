---
{
  "title": "Import identity",
  "date": "2026-11-18T13:27:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/imports-keep-series-and-printings-straight/",
  "excerpt": "Whakoom and BubbleBD imports match series by provider ID, so equal titles stay apart and printings stay their own comics.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": "/images/2026-11-development/provider-import-identity.png",
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/imports-keep-series-and-printings-straight/"
}
---

Two series can share a title, and a series can have several printings of the same album. An importer that treats the title as the identity gets both wrong.

![An illustration showing that equal titles with different provider IDs stay separate, while the same series ID reuses the series.](/images/2026-11-development/provider-import-identity.png)

Whakoom and BubbleBD imports now match series by the provider’s own identifier. A run of imported issues joins the existing series instead of creating a new copy for every row, and two different series stay apart even when their names match. The title still does the jobs it’s good at: browsing, and matching records that predate provider IDs.

BubbleBD’s printings are imported as separate comics, with the edition-specific information attached to the printing rather than to whichever similarly named record came first. BubbleBD comic details show the plot as well now, so an entry can be checked before it is imported.
