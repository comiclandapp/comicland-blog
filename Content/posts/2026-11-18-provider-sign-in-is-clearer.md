---
{
  "title": "Provider sign-in",
  "date": "2026-11-18T13:28:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/provider-sign-in-is-clearer/",
  "excerpt": "Sign-in screens now say whether you’re signed in, an unfinished web sign-in says so, and signing out of one provider leaves the others alone.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/provider-sign-in-is-clearer/"
}
---

Provider sign-in screens now look and behave the same across the app, Comic Vine included, and a few of them had been saying the wrong thing about your state.

The account stays the provider’s. Connecting it in ComicLand doesn’t create a second account with that service, and signing out here ends the session ComicLand was using.

## Session state

For web-based sign-in the app now tracks the session it actually holds. Reopening it no longer shows a confident signed-out message before it has checked retained cookies, and showing a login page doesn’t count as having signed in. An unfinished sign-in says so instead of looking complete.

## Signing out

Signing out affects the provider you chose and leaves the others alone. GCD needed its own handling, because its API and my.comics.org are separate sign-in paths; Sign Out now ends both rather than leaving one connected. BDThèque’s introduction says what it means: ComicLand keeps the web session, but there is no private Collection or Wishlist screen behind it on that site.

An expired BDGest sign-in renews without relaunching the app. Comic Vine’s throttle response is treated as throttling, with a limited number of retries instead of an immediate failure or an endless loop.
