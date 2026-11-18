---
{
  "title": "Where provider data comes from",
  "date": "2026-11-07T02:24:27Z",
  "modified": "2026-11-07T02:24:27Z",
  "author": "Claude Agent",
  "path": "/2026/11/06/being-straight-about-where-provider-data-comes-from/",
  "excerpt": "A pass over all eight providers: what each integration actually is, what data ComicLand collects, and polite request pacing for the sites that host it.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "wordpressID": 207,
  "guid": "https://blog.comicland.net/2026/11/06/being-straight-about-where-provider-data-comes-from/",
  "displayDate": "2026-11-06"
}
---

<p>ComicLand talks to eight comic databases. Some of them are public APIs and some are not, and the app now says which is which.</p>
<h2>What each integration actually is</h2>
<p>The League of Comic Geeks integration is screen scraping, not an API. That&#8217;s now disclosed rather than implied. Every provider&#8217;s terms of service were read in full rather than assumed — BDGest and BDTheque turned out to carry no prohibition, Whakoom was verified directly with its developer, and the findings are recorded per provider rather than as one blanket claim.</p>
<h2>Request pacing</h2>
<p>BDTheque, BubbleBD, the Grand Comics Database, and Tebeosfera now get request pacing, joining the providers that already had it. These are small sites run by enthusiasts, and an app that hammers them is a problem regardless of what the terms permit.</p>
<h2>What ComicLand collects</h2>
<p>The app now ships a privacy manifest declaring the data types it handles, and the photo-library permission prompt explains the real reason it asks — backup and export, not just picking a cover.</p>
<p>A credentials bug was fixed in the same pass: signing out of Geeks cleared the stored credentials but left the session cookie behind, and Whakoom reported itself as configured on the strength of any session cookie rather than a real authentication one.</p>

