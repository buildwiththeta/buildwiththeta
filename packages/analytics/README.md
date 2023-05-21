<img src="https://ymvwltogicatbkjlaswo.supabase.co/storage/v1/object/public/assets/branding/theta_analytics.svg" width="200"/>

# Theta Analytics

A light-weight analytics service for your web, desktop and mobile apps.


## Super-easy to use

### Initialize
To get the credentials, go to [Teta](https://teta.so?utm_source=pub.dev&utm_medium=ClickToWebsite) > project dashboard > Getting Started

Since you call the .initialize method, you are able to use **ThetaAnalytics.instance** or **ThetaAnalytics.I** anywhere in your application
```dart
import 'package:theta_analytics/theta_analytics.dart';

Future<void> main() {
  await ThetaAnalytics.initialize();
  
  runApp(
    // Your app...
  );
}
```

---

## Insert events
```dart
/// Your button
onTap: () {
  final info = await ThetaAnalytics.instance.client.logEvent(
    title: 'test',
    description: 'test',
    props: <String, dynamic>{
      'test': 'test',
    },
  );
}
```