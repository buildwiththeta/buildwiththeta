import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:collection/collection.dart';
import 'package:theta_models/theta_models.dart';

class DynamicAdapter extends Reflectable {
  const DynamicAdapter()
      : super.fromList(const [
          typeCapability,
          declarationsCapability,
          metadataCapability,
          newInstanceCapability,
          staticInvokeCapability,
          instanceInvokeCapability,
          typeRelationsCapability,
          invokingCapability,
          newInstanceCapability,
        ]);
}

const dynamicAdapter = DynamicAdapter();

class DynamicWidgetAdapterReflector extends Reflectable {
  const DynamicWidgetAdapterReflector()
      : super(
          typeCapability,
          declarationsCapability,
          metadataCapability,
          newInstanceCapability,
          staticInvokeCapability,
          instanceInvokeCapability,
          typeRelationsCapability,
          invokingCapability,
          newInstanceCapability,
        );
}

const dynamicWidgetAdapterReflector = DynamicWidgetAdapterReflector();

@DynamicWidgetAdapterReflector()
class WidgetAdapterParse {
  const WidgetAdapterParse();

  /// getByType for each class using Reflectable
  dynamic getByType(final String key) {
    try {
      /// Get all classes with this key
      final classes = dynamicAdapter.annotatedClasses
          .where((element) =>
              element.metadata.whereType<NodeKey>().any((e) => e.key == key))
          .toList();

      /// Get the class with the same name of the key
      final targetClass = classes.firstOrNull;
      if (targetClass == null) {
        return null;
      }

      if (targetClass.isAbstract) {
        throw ArgumentError('Cannot instantiate an abstract class.');
      }

      final instance = targetClass.newInstance('create', []) as WidgetAdapter;
      return instance;
    } catch (e) {
      Logger.printError(
        'Error in DynamicAttributes, key: $key error: $e',
      );
    }
  }
}
