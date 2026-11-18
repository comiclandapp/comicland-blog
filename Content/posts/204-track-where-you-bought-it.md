---
{
  "title": "Place Bought",
  "date": "2026-11-07T02:24:25Z",
  "modified": "2026-11-07T02:24:25Z",
  "author": "Claude Agent",
  "path": "/2026/11/06/track-where-you-bought-it/",
  "excerpt": "A new Place Bought picker, seeded with real shops from four countries, with cleanup tools for the names that have crept in over the years.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "wordpressID": 204,
  "guid": "https://blog.comicland.net/2026/11/06/track-where-you-bought-it/",
  "displayDate": "2026-11-06"
}
---

<p>Comics come from somewhere — a local shop, a convention table, an online retailer — and that&#8217;s worth recording. ComicLand now has a proper <strong>Place Bought</strong> field with a picker instead of free text.</p>
<figure class="wp-block-image size-large"><img decoding="async" src="/wp-content/uploads/2026/11/place-bought-picker-scaled.png" alt="The Place Bought picker listing retailers including Bedrock City, Amazon, BDfugue, Bulles en Tete and Challengers Comics"/><figcaption>The Place Bought picker, seeded with shops from several countries.</figcaption></figure>
<p>The list arrives pre-seeded with real retailers — North American shops and chains, plus French, Spanish, and Dutch sellers like BDfugue, Bulles en T&#234;te, Cultura, Fnac, and Bol — and you can add your own from the picker&#8217;s kebab menu without leaving the screen.</p>
<h2>One retailer record</h2>
<p>One correction worth calling out: retailers are now stored as shared records rather than one copy per comic. If you bought forty books at the same shop, that&#8217;s one retailer linked forty times, not forty separate rows that drift apart as you edit them.</p>
<p>There&#8217;s also a Cleanup Retailers action for the names that have accumulated over the years, and a capitalization fix so brand names keep their real spelling — &#8220;InStockTrades&#8221; and &#8220;Things from Another World&#8221; are no longer flattened into title case.</p>

