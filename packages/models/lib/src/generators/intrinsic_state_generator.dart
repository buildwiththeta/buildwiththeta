import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:theta_models/src/widgets/intrinsic_states/annotation.dart';

class IntrinsicStateGenerator
    extends GeneratorForAnnotation<IntrinsicStateInfo> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, dynamic buildStep) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
          'IntrinsicStateInfo can only be applied to classes.',
          element: element);
    }

    final className = element.name;
    final generatedClassName = '${className}Generated';
    final nodeIcon = annotation.read('nodeIcon').stringValue;
    final synonymous = annotation
        .read('synonymous')
        .listValue
        .map((e) => e.toStringValue())
        .toList();
    final gestures = annotation
        .read('gestures')
        .listValue
        .map((e) => e.toStringValue())
        .toList();
    final permissions = annotation
        .read('permissions')
        .listValue
        .map((e) => e.toStringValue())
        .toList();
    final packages = annotation
        .read('packages')
        .listValue
        .map((e) => e.toStringValue())
        .toList();
    final blockedTypes = annotation
        .read('blockedTypes')
        .listValue
        .map((e) => e.toStringValue())
        .toList();
    final displayName = annotation.read('displayName').stringValue;
    final type = annotation.read('type').stringValue;
    final category = annotation.read('category').stringValue;
    final canHave = annotation.read('canHave').stringValue;
    final maxChildren = annotation.read('maxChildren').stringValue;

    return '''
@nodeTypeISKey
@NodeKey('$type')
class $generatedClassName extends IntrinsicState {
  $generatedClassName() : super(
    nodeIcon: '$nodeIcon',
    displayName: '$displayName',
    type: '$type',
    category: '$category',
    canHave: '$canHave',
  );
}

String _listToString(List<String> list) {
  return '[\${list.map((e) => '\$e').toList()}]';
}
''';
  }
}
