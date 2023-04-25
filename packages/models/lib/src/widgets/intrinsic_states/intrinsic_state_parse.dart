import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';

class NodeTypeISKey extends Reflectable {
  const NodeTypeISKey()
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

const nodeTypeISKey = NodeTypeISKey();

class NodeKey {
  final String key;
  const NodeKey(this.key);
}

class IntrinsicStateReflector extends Reflectable {
  const IntrinsicStateReflector()
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

const dynamicIntrinsicStateReflector = IntrinsicStateReflector();

@IntrinsicStateReflector()
class DynamicIntrinsicState {
  const DynamicIntrinsicState();

  IntrinsicState getStateByType(final String type) {
    try {
      /// Get all classes with this key
      final classes = nodeTypeISKey.annotatedClasses
          .where((element) =>
              element.metadata.whereType<NodeKey>().any((e) => e.key == type))
          .toList();

      /// Get the class with the same name of the key
      final targetClass = classes.firstOrNull;
      if (targetClass == null) {
        return IntrinsicState.basic;
      }

      if (targetClass.isAbstract) {
        throw ArgumentError('Cannot instantiate an abstract class.');
      }

      final instance = targetClass.newInstance('create', []) as IntrinsicState;
      return instance;
    } catch (e) {
      Logger.printError(
        'Error in DynamicIntrinsicState, key: $type error: $e',
      );
      return IntrinsicState.basic;
    }
  }
}
