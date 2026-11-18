---
{
  "title": "Native Mac library",
  "date": "2026-11-18T13:29:44Z",
  "modified": "2026-11-18T13:33:44Z",
  "author": "ComicLand",
  "path": "/2026/11/18/native-mac-library-takes-shape/",
  "excerpt": "Cover browsing, a configurable table, Smart Lists and editors, on the same collection model as iOS.",
  "categories": [
    {
      "name": "Development",
      "slug": "development"
    }
  ],
  "image": null,
  "featured": false,
  "draft": false,
  "guid": "https://blog.comicland.net/2026/11/18/native-mac-library-takes-shape/"
}
---

The native Mac app is no longer just a window that opens a collection. The development build now handles day-to-day cataloguing: browsing, searching, filtering, editing, and the table operations you’d expect with a keyboard and a pointer.

Comics can be browsed as cover tiles, as lists, or in a configurable table. Columns can be hidden and reordered, whatever you select feeds the existing bulk actions, and filters and saved Smart Lists keep a view you use often one click away instead of a search you rebuild.

The sidebar holds Comics, Series, Publishers, Creators and Characters, with Statistics and the database tools below them. Following a publisher or creator opens that record rather than dropping you into an unfiltered list.

The editors cover the main entities and their relationships, and records can be created, duplicated, merged and deleted from the actions that already own those jobs. Series, publisher and creator rows carry their country flags and comic rows carry status and priority badges; picker menus offer the create-a-named-item commands and a clear-selection command where those make sense. Retailer suggestions come from the same built-in list iOS uses, plus whatever the library already has.

The Mac reads the shared domain and persistence rules rather than keeping its own copy of the data model. It opens a `.comiclandlibrary` package and imports supported iOS backups. Account, sync and the providers are still deferred; the focus is a local catalogue that holds up with a real collection.
