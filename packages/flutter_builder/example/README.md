### Retrieve docs from 2 collections, filtering and sorting by `email` field and limiting to 10

```dart
import 'package:flutter/material.dart';
import 'package:teta_cms/teta_cms.dart';

Future<void> main() {
  const prjToken = '';
  const prjId = 0;

  await TetaCMS.initialize(
    token: prjToken,
    prjId: prjId,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({final Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            TetaFutureBuilder<TetaResponse<List<dynamic>?, TetaErrorResponse?>>(
          future: TetaCMS.I.db.query(
            '''
              MATCHOR name EQ Collection1 name EQ Collection2;
              IN docs;
              MATCHOR email EQ 'value' email LIKE /value2/;
              SORT email 1;
              LIMIT 10;
            ''',
          ),
          builder: (final c, final snap) {
            if (snap.connectionState == ConnectionState.done) {
              if (snap.data?.error != null) {
                return Text('${snap.data?.error?.message}');
              }
              return ListView.builder(
                itemCount: snap.data?.data?.length ?? 0,
                itemBuilder: (final c, final i) {
                  // ignore: avoid_dynamic_calls
                  return Text('${snap.data?.data?[i]['email']}');
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
```

### Documents

Insert

```dart
final res = await TetaCMS.I.db.from('contacts').insert(
  <String, dynamic>{'name': 'Giulia', 'city': 'Roma'},
);
```

Update

```dart
final res = await TetaCMS.I.db.fromId(collectionId).row(documentId).update(
  <String, dynamic>{'name': 'Alessia', 'city': 'Milano'},
);
```

Delete

```dart
final res = await TetaCMS.I.db.from('users').row(documentId).delete();
```

### Collections

Create

```dart
final res = await TetaCMS.I.db.create(collectionName);
```

Update

```dart
final res = await TetaCMS.I.db.fromId(collectionId).update(
  newName,
  <String, dynamic>{'key': 'value', 'key': 'value'},
);
```

Delete

```dart
final res = await TetaCMS.I.db.from('posts').delete();
```

### Realtime

Collection changes

```dart
TetaCMS.I.db.from('posts').on(
  // action: StreamAction.all,
  callback: (final e) {},
);
```

Document changes

```dart
TetaCMS.I.db.from('users').row(docId).on(
  callback: (final e) {},
);
```

### Tutorials
This section will be updated whenever a new tutorial is released

- [Using Teta CMS for authentication in Flutter](https://teta.so/using-teta-cms-for-authentication-in-flutter/)
- [Secure your database with Teta CMS policies](https://teta.so/policies/)

## Docs
See our Flutter docs on [teta.so/flutter-docs](https://teta.so/flutter-docs)