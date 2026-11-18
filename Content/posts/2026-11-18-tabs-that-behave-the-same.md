---
{
  "title": "Tabs on iOS and Android",
  "date": "2026-11-18T13:26:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/tabs-that-behave-the-same/",
  "excerpt": "Home, provider screens and Statistics share one iOS tab control; Android did the same around its segmented pager.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/tabs-that-behave-the-same/"
}
---

iOS tab strips now come from one shared control — Home, the provider screens and Statistics all use it — and Android did the equivalent consolidation around its own segmented pager.

The visible effect is that the selected label and the page under it stay in step. Tapping a tab shows that page, and swiping between pages moves the selection. BDThèque’s tabs swipe like the rest now, and Android’s Statistics pages between Overview and Spending.

Both platforms keep their own toolkit. The Android pager isn’t embedded in the iPhone app, and the shared iOS control isn’t a Compose component. On iOS, one control replaces the copies that could drift apart on spacing or selection whenever a screen changed; Android’s pager came together the same way.
