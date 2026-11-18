---
{
  "title": "Imports: Keep Series and Printings Straight",
  "date": "2026-11-18T13:27:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/imports-keep-series-and-printings-straight/",
  "excerpt": "Provider identifiers help imports reuse the right series without collapsing distinct series or editions that happen to share a title.",
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

Two series can have the same title. One series can have several printings of an album. An import that treats the visible title as the whole identity can get both situations wrong.

Recent fixes in ComicLand’s provider importers put more weight on the provider’s own identifiers, so another issue can join the right series without folding an unrelated publication into it.

![An illustration showing that equal titles with different provider IDs stay separate, while the same series ID reuses the series.](/images/2026-11-development/provider-import-identity.png)

## Reuse the right series

Whakoom and BubbleBD imports now match series by provider identity rather than relying only on their titles. That matters in both directions: a run of imported issues should not create a new copy of the series for every row, and two genuinely different series should not become one because their names happen to match.

The visible title remains useful for browsing and for matching older records where appropriate. It is not a substitute for an identifier the provider has already supplied.

## A printing is still its own comic

BubbleBD’s different printings are imported as separate comics. Edition-specific information belongs to the selected printing, not whichever similarly named record the importer encountered first.

BubbleBD comic details also now show the plot, making it easier to inspect the entry before bringing it into your collection.

## The same expectation on either phone

This work has been part of the iOS/Android parity review. The important match is the outcome: the same selected provider record should produce the same kind of library record, with the right series relationship and edition identity.

Small import mistakes are expensive once they have been repeated across a collection. Getting the identity right at the boundary saves the reader a cleanup job later.
