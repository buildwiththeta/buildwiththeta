# Example 

```dart
import 'package:theta_analytics/theta_analytics.dart';

void main() async {
  ThetaAnalytics.initialize(
    prjId: 1,
    token: 'xyz',
  );

  ThetaAnalytics.I.client.insert(
    'test',
    description: 'test',
    props: <String, dynamic>{
      'test': 'test',
    },
  );
}
```
