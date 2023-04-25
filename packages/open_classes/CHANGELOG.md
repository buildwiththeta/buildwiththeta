# 0.3.5
Breaking changes!
* You can now call the instance using the shortcut TetaCMS.I
* The client is now called db. You can call it using TetaCMS.I.db
* The TetaDatabase class has now a .from() method to select a specific collection. You can use both .from('users') or .fromId(_id)
* To select a specific document, you can now use .doc(id)
### Examples
Old api:
```dart
TetaCMS.instance.client.getCollectionByName('users');
```

New:
```dart
TetaCMS.I.db.from('users').get();
```

---

Old api:
```dart
TetaCMS.instance.realtime.streamCollectionByName('posts', ...);
```

New:
```dart
TetaCMS.I.db.from('posts').stream(...);
```

---

Old api:
```dart
TetaCMS.instance.client.updateDocument(
    collectionId,
    documentId,
    <String, dynamic>{'name': 'Alessia', 'city': 'Milano'},
);
```

New:
```dart
TetaCMS.I.db.fromId(collectionId).row(documentId).update(
    <String, dynamic>{'name': 'Alessia', 'city': 'Milano'},
);
```

---

Old api:
```dart
TetaCMS.instance.client.getCollections();
```
---
New:
```dart
TetaCMS.I.db.getCollections();
```

# 0.3.0
* Collections can now by called by names
* Documents can be retrived by collections names
* New CMS structure
* New Realtime system

# 0.2.2
* New OAuth providers
* Http request widgets

# 0.2.1

* Refactor of Analytics module

# 0.2.0

* General fixing
* Change endpoint url for analytics service

# 0.1.8

* Add Utils

# 0.1.7+6

* Update Readme

# 0.1.7+5

* Update Readme

# 0.1.7+4

* Update docs and count function

# 0.1.7+3

* Improve Pub points

# 0.1.7+3

* Improved auth.user.get. Now always returns a TetaUser, with isLogged = false in case there is no user.

# 0.1.7+2

* New Docs

# 0.1.7+1

* Improve UI/UX dashboard within Teta 0.4 
* Improve docs with official [flutter docs](https://teta.so/flutter-docs)

# 0.1.7

* Add collections policies
* Improve README with Teta Auth deeplink configuration
* Improve example/README with an advanced example and tutorials library

# 0.1.6

* Expose the StreamController to control and close it more easily
* Adapt TetaStreamBuilder to handle a StreamController, closing it at the dispose event

# 0.1.5+3

* Cms base url fixed
* RowObject now fixed
* Removed web only libraries

# 0.1.5+2

* Api docs improved
* Readme improved

# 0.1.5+1

* Fixes for the pub.dev release page

# 0.1.5 (Open alpha)

* This is the initial version of our open alpha program.
* You can start testing and using our CMS for secondary or small projects.
* You can choose to use this package using our low-code front-end builder in Teta.
* You can now use: a No-SQL database with real-time subscriptions and user authentication system.