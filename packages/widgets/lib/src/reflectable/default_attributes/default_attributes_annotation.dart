import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';
import 'index.dart';

class DynamicDefaultAttributeAdapter extends Reflectable {
  const DynamicDefaultAttributeAdapter()
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

const dynamicDefaultAttribute = DynamicDefaultAttributeAdapter();

class DynamicDefaultAttributesReflector extends Reflectable {
  const DynamicDefaultAttributesReflector()
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

const dynamicDefaultAttributesReflector = DynamicDefaultAttributesReflector();

@DynamicDefaultAttributesReflector()
class DefaultAttributesParse {
  const DefaultAttributesParse();

  /// getByType for each class using Reflectable
  dynamic getByType(final String key) {
    try {
      /// Get all classes with this key
      final classes = dynamicDefaultAttribute.annotatedClasses
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

      final instance =
          targetClass.newInstance('create', []) as DefaultAttributesAdapter;
      return instance.get;
    } catch (e) {
      Logger.printError(
        'Error in dynamicDefaultAttribute, key: $key error: $e',
      );
    }
  }
}
