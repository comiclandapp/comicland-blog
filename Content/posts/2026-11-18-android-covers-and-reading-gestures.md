---
{
  "title": "Android: Covers and Reading Gestures Catch Up",
  "date": "2026-11-18T13:30:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/android-covers-and-reading-gestures/",
  "excerpt": "Cover cycling, full-screen viewing and right-to-left cover rows now follow the same book conventions as iOS.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/android-covers-and-reading-gestures/"
}
---

Covers are where small differences between the apps become very noticeable. A tap that opens a book’s details on one screen and unexpectedly does something else on another makes browsing feel less predictable.

Recent Android work has focused on making the cover journey consistent: the header’s cover switch cycles through available images, a cover tap opens the image being shown, and the full-screen viewer supports paging, zooming and sharing.

## Front first, with the other scans close by

A comic header starts on the front cover. When the book has other cover scans, its switch button cycles through the available faces in the cover row’s order, skipping empty slots and wrapping around.

That order also respects the new **Spine on the right** setting. A manga’s cover row can run in the opposite direction, while the front scan remains the front. Changing orientation brings the header back to the front rather than leaving it on a now-confusing position.

## More room for the image

In the viewer, paging moves between images and zooming lets you inspect the artwork. A tap steps through the caption and chrome states, so you can read the description or give the cover the screen. Sharing follows the selected image; a missing or unavailable image cannot be shared as though it had loaded.

These are being checked as interactions, including the three tap states, rather than only as screenshots of a viewer that happens to be open.

Android’s implementation is native to Android, but the book should behave according to the same conventions. [The manga cover update](/2026/11/18/manga-covers-spine-on-the-right/) shows the cover-order change with a real example from the iOS editor.
