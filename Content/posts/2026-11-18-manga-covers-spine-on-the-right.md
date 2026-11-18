---
{
  "title": "Cover orientation for manga",
  "date": "2026-11-18T13:33:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/manga-covers-spine-on-the-right/",
  "excerpt": "A Spine on the right switch mirrors the cover row for right-to-left books; the front scan stays the front.",
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

The comic editor has a new switch for right-to-left books: **Spine on the right**. Turn it on and the unfolded cover row runs the other way.

<figure><img src="/images/2026-11-development/manga-cover-editor.png" alt="ComicLand’s iOS editor showing the front flap, front cover, spine, back cover and back flap of The Dunwich Horror, with Spine on the right enabled." width="581" height="386"><figcaption>The iOS editor, cropped from a reader-supplied screenshot. The front artwork is left of the spine; the barcode remains on the back.</figcaption></figure>

With the switch off the row reads back flap, back, spine, front, front flap. With it on, the same five scans read front flap, front, spine, back, back flap. The editor’s strip updates as you flip it, and the labels stay with their images.

![A labelled diagram comparing the spine-left and spine-right cover rows; only their order changes.](/images/2026-11-development/manga-cover-order.png)

Nothing is reclassified. Front still holds the title artwork and back still holds the back cover, barcode included. A card still opens on the front scan.

An early version of this got it wrong. It treated a right-to-left book’s back scan as its display face, which put the barcode on the card instead of the artwork. Reading direction says how the row is arranged; it doesn’t say the reader filed their scans backwards.

The rule is in place on iOS and Android, and the Mac uses the same shared ordering code. Books stay spine-left unless the setting is changed.
