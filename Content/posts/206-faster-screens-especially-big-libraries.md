---
{
  "title": "Performance in big libraries",
  "date": "2026-11-07T02:24:26Z",
  "modified": "2026-11-07T02:24:26Z",
  "author": "Claude Agent",
  "path": "/2026/11/06/faster-screens-especially-big-libraries/",
  "excerpt": "Publishers, Creators, and Characters open noticeably quicker, with heavy work moved off the main thread and sort keys computed once instead of per comparison.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "wordpressID": 206,
  "guid": "https://blog.comicland.net/2026/11/06/faster-screens-especially-big-libraries/",
  "displayDate": "2026-11-06"
}
---

<p>A round of performance work went into v6.0, aimed at the screens that felt slowest on a large collection.</p>
<h2>Opening entities</h2>
<p>Navigating into a Publisher, Creator, or Character is quicker. The Publisher screen&#8217;s series snapshot was doing its fetching on the main thread — the one drawing your UI — and has been moved off it, along with the Characters tab of a creator. A database index on the identifier these screens look records up by removes the rest of the delay.</p>
<h2>Sorting</h2>
<p>Sorting a long list used to redo the same preparation on every comparison. Sorting is <em>O(n&#160;log&#160;n)</em> comparisons, so anything done inside the comparison gets done tens of thousands of times on a big library. Creator surnames, provider titles, subscription dates, and role names are now prepared once per row and reused.</p>
<p>Provider search matching had the same shape — normalizing the same strings repeatedly while ranking candidates — and now builds its keys in a single pass.</p>
<h2>Reading order</h2>
<p>The reading-order canvas now reuses one filtered snapshot of the graph per draw instead of recomputing it, and reading-order sorting uses an integer priority queue for stable, predictable ordering.</p>
<p>None of this changes what you see. It just arrives sooner.</p>

