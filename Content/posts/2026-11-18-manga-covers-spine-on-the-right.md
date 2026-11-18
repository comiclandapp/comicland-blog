---
{
  "title": "Manga Covers: Spine on the Right",
  "date": "2026-11-18T13:33:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/manga-covers-spine-on-the-right/",
  "excerpt": "A new cover-orientation switch mirrors the row for right-to-left books while keeping the front cover exactly where it belongs.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": "/images/2026-11-development/manga-cover-editor.png",
  "featured": true,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/manga-covers-spine-on-the-right/"
}
---

A manga hardcover should not have to pretend it opens like a western comic. In the current ComicLand development build, the Comic editor has a **Spine on the right** switch for manga and other right-to-left books.

<figure><img src="/images/2026-11-development/manga-cover-editor.png" alt="ComicLand’s iOS editor showing the front flap, front cover, spine, back cover and back flap of The Dunwich Horror, with Spine on the right enabled." width="581" height="386"><figcaption>The iOS editor with “Spine on the right” enabled. The front artwork is left of the spine; the barcode remains on the back.</figcaption></figure>

## The row changes; your scans keep their meaning

With the switch off, the unfolded cover row runs **back flap → back → spine → front → front flap**. Turn it on and the row mirrors: **front flap → front → spine → back → back flap**. The editor’s strip updates immediately, and the labels follow the images.

That does **not** mean swapping which scan is called Front or Back. Front still holds the title artwork. Back still holds the back-cover artwork, including the barcode when there is one. A card still opens on the front cover.

![A labelled diagram comparing the spine-left and spine-right cover rows; only their order changes.](/images/2026-11-development/manga-cover-order.png)

## A useful correction from a real book

An early interpretation treated a right-to-left book’s back scan as its display face. The example above exposed the mistake: that put the barcode on the card instead of the cover artwork. Reading direction tells us how to arrange the cover row; it does not tell us to reclassify somebody’s scans.

The corrected rule keeps the front scan as the normal face for cards, sharing and issue-derived series covers. Existing books keep the usual spine-left setting unless you change it.

## The same book on each platform

The orientation work has landed in the iOS and Android development branches, with the Mac using the shared Swift ordering rule. Android also follows the same front-stays-front convention. The aim is straightforward: catalogue the book as it actually sits in your hands, without having to file its images under misleading names.

These changes are part of the current development build.
