import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';

class NodeDeclaration extends Reflectable {
  const NodeDeclaration()
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

const nodeDeclaration = NodeDeclaration();

class NodeDeclarationReflector extends Reflectable {
  const NodeDeclarationReflector()
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

const nodeDeclarationReflector = NodeDeclarationReflector();

@NodeDeclarationReflector()
class DynamicNodeMapper {
  const DynamicNodeMapper();

  /// getByType for each class using Reflectable
  dynamic getByType(final String widgetType, final Map<String, dynamic> json) {
    try {
      /// Get all classes with this key
      final classes = nodeDeclaration.annotatedClasses
          .where((element) => element.metadata
              .whereType<NodeKey>()
              .any((e) => e.key == widgetType))
          .toList();

      /// Get the class with the same name of the key
      final targetClass = classes.firstOrNull;

      /// There is no class with this key
      if (targetClass == null) {
        throw Exception('No class found for key: $key');
      }

      /// Invoke the fromJson method of the class
      return targetClass.invoke('fromJson', [widgetType, json]);
    } catch (e) {
      Logger.printError(
        'Error in dynamicDefaultAttribute, key: $key error: $e',
      );
    }
  }
}
