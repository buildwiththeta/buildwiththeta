import 'package:flutter_test/flutter_test.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

Future<void> main() async {
  await ThetaOpenWidgets.initialize();
  group('Testing all widgets: ', () {
    for (final nodeType in NType.values) {
      test('Test for $nodeType', () {
        /// Get the adapter (toWidget method)
        final adapter = const WidgetAdapterParse().getByType(NType.scaffold);
        expect(adapter, isA<WidgetAdapter>());

        /// Get the default attributes
        final defaultAttributes =
            const DefaultAttributesParse().getByType(NType.scaffold);
        expect(defaultAttributes, isA<Map<String, dynamic>>());

        /// Get the intrinsic state
        final intrinsicState =
            const DynamicIntrinsicState().getStateByType(NType.scaffold);
        expect(intrinsicState, isA<IntrinsicState>());

        final node = const NodesParse().fromJson(
          nodeType,
          <String, dynamic>{
            '_id': 1442390,
            'ids': [],
            'page_id': 45448,
            'type': nodeType,
            'created_at': '2022-11-08T12:58:42.213Z',
            'updated_at': '2023-03-22T15:11:31.312Z',
            '__v': 0,
            'body': {}
          },
        );
        expect(node, isNotNull);
      });
    }
  });
}
