---
{
  "title": "Tabs That Behave the Same Across the App",
  "date": "2026-11-18T13:26:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/tabs-that-behave-the-same/",
  "excerpt": "Home, provider screens and Statistics now use a consistent tab-strip pattern, including swipeable BDThèque tabs.",
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

Tabs are a small control you use hundreds of times. They should not change their appearance or their swipe behaviour simply because you moved from your library to a provider.

Recent work has brought the iOS tab strips onto one shared control, from Home through provider screens and Statistics. Android has received the corresponding consolidation around its own segmented pager.

## Tap or swipe, with the same result

The selected label and the page beneath it need to stay in step. Tapping a tab should show that page; swiping between pages should update the selected tab. BDThèque’s tabs now swipe like the rest, and Android’s Statistics can page between Overview and Spending.

This is more than making two controls look alike. It removes separate implementations that could disagree about spacing, selection or gesture handling when one screen changed.

## Familiar without forcing the same toolkit

The two platforms still have native implementations. A shared iOS control is not being transplanted into Android, and a Compose pager is not being embedded in the iPhone app.

What is shared is the expectation: a familiar strip of destinations, predictable selection and a consistent way to move between them. That makes the app easier to learn and makes future improvements less likely to reach only half of its screens.

It is quiet work, but it is the sort of consistency that makes a large app feel like one app.
