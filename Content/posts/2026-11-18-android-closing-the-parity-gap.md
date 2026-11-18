---
{
  "title": "Android: Closing the Everyday Parity Gaps",
  "date": "2026-11-18T13:32:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/android-closing-the-parity-gap/",
  "excerpt": "The Android version is getting close to the iOS experience, with recent work focused on complete browsing, editing and provider journeys.",
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

The Android version of ComicLand is getting close to parity with iOS. The most useful progress is no longer a new screen appearing in the navigation: it is being able to finish the same everyday job on either platform.

![An illustrated overview of Android parity work: browsing, provider discovery, covers, editing, reconnecting and verification.](/images/2026-11-development/android-parity-journeys.png)

## A collection you can work with

Comics, Series, Publishers, Creators and Characters have library browsing, detail pages and editors. Recent work has tightened the connections between them: related records lead somewhere useful, relationship choices belong in the editor, and saving a record preserves the information the form does not happen to show.

The two apps do not use the same interface toolkit. Android uses Compose and Material styling; iOS uses its own controls. They should still agree about what a field means, what a cover represents and which record an import updates.

## Closing the small gaps that interrupt a session

November’s changes include provider search from Home, one segmented pager across tabbed screens, swipeable Statistics pages, richer BubbleBD details, and the cover-orientation setting for right-to-left books. Settings switches that had been placeholders now do real work, and Android’s What’s New history describes Android’s own changes.

Provider sign-in has received the same attention. A retained session should survive reopening the app, an unfinished web sign-in should say so, and signing out of one provider should not quietly disconnect another.

## “Almost” still needs checking

Parity is measured by completing the same workflows. We are checking the paths through discovery, import, editing and reopening, as well as migrations and behaviour on real devices. The next step is finishing and acceptance work before a store release.

The direction is now much clearer: whichever phone you pick up, it should feel like your ComicLand collection, with familiar capabilities and native controls.
