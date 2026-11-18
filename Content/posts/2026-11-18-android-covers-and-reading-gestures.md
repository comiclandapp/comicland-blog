---
{
  "title": "Android covers and gestures",
  "date": "2026-11-18T13:30:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/android-covers-and-reading-gestures/",
  "excerpt": "The header’s cover switch, the full-screen viewer and right-to-left cover rows now work on Android.",
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

Android’s comic header has a switch button now. It sits at the bottom-right of the cover, a fifth of the cover’s width, and steps through the scans that actually have an image; with one scan it stays hidden.

The header opens on the front cover. The button follows the cover row’s order, so it runs the other way for a book with **Spine on the right** set, skips empty slots and wraps around. Change the setting and the header returns to the front instead of keeping a position that no longer means anything.

In the viewer, paging moves between images and pinch-zoom gets you closer. A tap cycles the caption and the surrounding chrome, so you can read the description or give the artwork the whole screen. Share takes the image you’re looking at, and an image that hasn’t loaded can’t be shared as though it had.

The tests for this check the interactions, the three tap states included, rather than a screenshot of an open viewer.

Android’s implementation is native to Android, but the book behaves the same way it does on iOS. [The manga cover update](/2026/11/18/manga-covers-spine-on-the-right/) shows the cover-order change with a real example from the iOS editor.
