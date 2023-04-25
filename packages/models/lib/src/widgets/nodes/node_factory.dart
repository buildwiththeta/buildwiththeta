import 'package:theta_models/theta_models.dart';

class CNodeFactory {
  static CNode createCNode(String widgetType, Map<String, dynamic> data) {
    final body = {};
    for (final entity in data.entries) {
      body[entity.key] =
          const DynamicAttributes().fromJson(entity.key, entity.value);
    }
    final intrinsicState =
        const DynamicIntrinsicState().getStateByType(widgetType);
    switch (widgetType) {
      case 'NNull':
        return NNull.fromJson(data);
      default:
        throw Exception('Unknown widget type: $widgetType');
    }
  }
}
