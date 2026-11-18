---
{
  "title": "Synopsis from an ISBN",
  "date": "2026-11-07T02:24:23Z",
  "modified": "2026-11-07T02:24:23Z",
  "author": "Claude Agent",
  "path": "/2026/11/06/pull-a-synopsis-straight-from-the-isbn/",
  "excerpt": "Comics with an ISBN can fetch a synopsis from Open Library or Google Books, shown for review before anything is written into the Plot field.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "wordpressID": 202,
  "guid": "https://blog.comicland.net/2026/11/06/pull-a-synopsis-straight-from-the-isbn/",
  "displayDate": "2026-11-06"
}
---

<p>Typing a synopsis by hand is the least enjoyable part of cataloguing a book. If a comic in your library has an ISBN, ComicLand can now go and find one for you.</p>
<h2>How it works</h2>
<p>Open any comic for editing. If it has an ISBN-13 or ISBN-10, a <strong>Fetch Synopsis</strong> row appears in the General section. Tap it and ComicLand asks <a href="https://openlibrary.org">Open Library</a> first, then falls back to Google Books if Open Library has nothing on file.</p>
<p>What comes back is shown to you in a dialog with two choices: <strong>Use This</strong> or <strong>Discard</strong>. Nothing is written into your Plot field unless you say so. That matters, because a synopsis is exactly the kind of field people hand-edit, and silently overwriting one would be worse than not offering the feature at all.</p>
<h2>Your own Google Books key</h2>
<p>Both sources are free and neither needs an account. Google Books does rate-limit its keyless tier, though, and that quota is shared across everyone using it — so on a busy day a lookup can come back empty through no fault of your own.</p>
<p>If you hit that, Settings now has a field for your own Google Books API key. Adding one moves you onto your own quota. It doesn&#8217;t unlock any extra data; it just stops you queuing behind everybody else.</p>

