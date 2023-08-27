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
    final displayName = annotation.read('displayName').stringValue;
    final type = annotation.read('type').stringValue;
    final category = annotation.read('category').stringValue;
    final canHave = annotation.read('canHave').stringValue;

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
