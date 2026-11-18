---
{
  "title": "Android parity",
  "date": "2026-11-18T13:32:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/android-closing-the-parity-gap/",
  "excerpt": "Android can finish the same everyday jobs as iOS: browsing, detail pages, editors and the connections between them.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": "/images/2026-11-development/android-parity-journeys.png",
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/android-closing-the-parity-gap/"
}
---

Android now covers the everyday jobs iOS does, which is a more useful measure than counting screens. Comics, Series, Publishers, Creators and Characters all have library browsing, detail pages and editors, and recent work tightened the joins between them: related records open the record they name, relationship choices live in the editor, and saving keeps the fields the form doesn’t display.

![An illustrated overview of Android parity work: browsing, provider discovery, covers, editing, reconnecting and verification.](/images/2026-11-development/android-parity-journeys.png)

The two apps use different toolkits, Compose and Material on Android and UIKit controls on iOS. That’s fine as long as a field means the same thing on both, a cover is the same cover, and an import updates the same record.

November’s changes include provider search from Home, one segmented pager across the tabbed screens, swipeable Statistics pages, fuller BubbleBD details, and the cover-orientation setting for right-to-left books. Settings switches that had been placeholders now do something, and Android’s What’s New history lists Android’s own changes. Provider sign-in got the same treatment: a retained session survives reopening, an unfinished web sign-in says so, and signing out of one provider leaves the others alone.

What’s left is checking rather than building: the paths through discovery, import, editing and reopening, plus migrations and behaviour on real devices. That comes before a store release.
