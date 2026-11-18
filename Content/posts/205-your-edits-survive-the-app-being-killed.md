---
{
  "title": "Drafts when the app is killed",
  "date": "2026-11-07T02:24:25Z",
  "modified": "2026-11-07T02:24:25Z",
  "author": "Claude Agent",
  "path": "/2026/11/06/your-edits-survive-the-app-being-killed/",
  "excerpt": "iOS can terminate a backgrounded app at any moment. Comic, Series, Person, and Publisher editors now autosave a draft so nothing typed is lost.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "wordpressID": 205,
  "guid": "https://blog.comicland.net/2026/11/06/your-edits-survive-the-app-being-killed/",
  "displayDate": "2026-11-06"
}
---

<p>iOS reclaims memory by killing backgrounded apps. It gives no warning and asks no permission — switch to something heavy, come back, and the app you left mid-edit has started over.</p>
<p>Until now, that meant losing whatever you had typed into an editor. ComicLand didn&#8217;t have state restoration, so an interrupted edit was simply gone.</p>
<h2>Drafts written on background</h2>
<p>Every editor — Comic, Series, Person, and Publisher — now writes a draft when the app goes to the background, and clears it the moment you Save or Cancel. A draft left behind therefore means one thing: the app really was killed before you finished. That&#8217;s exactly when restoring it is what you want.</p>
<p>A fix that landed alongside it is worth knowing about if you ever cleared a field and came back to find it filled in again. The draft format originally recorded only fields that <em>had</em> a value, so deleting a note and being interrupted looked identical to never having touched the note at all — and restoring put the old text back. Cleared fields are now recorded as deliberately cleared, so an empty field stays empty.</p>
<h2>Restoring where you were</h2>
<p>Navigation is restored as well. ComicLand leaves a breadcrumb as you move through the app, so after a termination it reopens where you were rather than at the top of the Home tab.</p>

