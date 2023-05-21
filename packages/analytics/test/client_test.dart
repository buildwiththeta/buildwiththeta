import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theta_analytics/src/analytics.dart';
import 'package:theta_analytics/src/models/exception.dart';
import 'package:theta_analytics/src/service.dart';
import 'package:theta_analytics/src/utils/info.dart';

void main() {
  group('AnalyticsClient', () {
    late AnalyticsClient client;

    test(
      'Initializing and inserting a new event',
      () async {
        client = AnalyticsClient(
          AnalyticsService(
            const DeviceInfo(
              'os_name',
              'os_version',
              'locale',
              'sdk_build_number',
              'sdk_version',
            ),
          ),
        );
        final response = client.logEvent(
            title: 'test_event', description: 'test', props: {'key': 'value'});
        if (response.isLeft) {
          debugPrint((response.left as AnalyticsException).message);
          expect(response.left, isA<AnalyticsException>());
        }
      },
    );
  });
}
