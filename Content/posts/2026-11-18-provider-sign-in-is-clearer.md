---
{
  "title": "Provider Sign-In: Clearer State, Fewer Surprises",
  "date": "2026-11-18T13:28:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/provider-sign-in-is-clearer/",
  "excerpt": "Provider accounts now give clearer feedback about unfinished sign-in, expired sessions and signing out, without disconnecting unrelated services.",
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

A provider screen should be clear about whether you are signed in. It should also distinguish “you have not finished signing in” from “the sign-in page could not load.” Recent ComicLand development work has been closing those gaps on iOS and Android.

## A consistent place to connect

Provider sign-in screens now follow a consistent presentation, Comic Vine included. The account remains the provider’s account: connecting it in ComicLand does not create a new account with that service.

For web-based sign-in, the app keeps track of the session it actually has. Reopening the app should not produce a confident signed-out message simply because the screen has not yet checked retained cookies. Conversely, displaying a login page is not proof that login succeeded.

## Signing out means the service you chose

Signing out of one provider should leave unrelated providers alone. GCD has an additional wrinkle: its API and my.comics.org are separate sign-in paths. Its Sign Out action now ends both, instead of leaving one half connected.

BDThèque’s introduction has also been made more precise. Keeping its web session is useful, but it is not a promise that ComicLand exposes a private Collection or Wishlist surface that does not exist there.

## Expiry is a normal event

An expired BDGest sign-in can renew instead of requiring an app relaunch. Busy services are handled more consistently too: Comic Vine’s throttle response is treated as throttling, with bounded retries rather than an immediate misleading failure or an endless loop.

This is everyday reliability work. The aim is that the account state on screen reflects the connection the app can actually use, and that recovery tells you what happened.
