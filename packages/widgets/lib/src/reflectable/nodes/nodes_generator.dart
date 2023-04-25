// ignore_for_file: unused_import

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';
import 'node_annotation_model.dart';

class NodeGenerator extends GeneratorForAnnotation<NodeInfo> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, dynamic buildStep) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        'NodeInfo can only be applied to classes.',
        element: element,
      );
    }

    final className = element.name;
    final generatedClassName = '${className}OpenNode'.replaceAll('_', '');
    final displayName = annotation.read('optionalDisplayName').stringValue;
    final type = annotation.read('type').stringValue;

    final code = '''
/// $type
@nodeDeclaration
@NodeKey(NType.$type)
class $generatedClassName extends CNode {
  $generatedClassName(
      {required final int id,
      final int? parent,
      final CNode? child,
      final List<CNode>? children,
      final String? name,
      final String? description,
      final FChildrenIds? childrenIds,
      final int? index,
      final Map<String, dynamic>? attributes,
      })
      : super(
            id: id,
            type: NType.$type,
            name: name ?? '$displayName',
            childrenIds: childrenIds ?? const FChildrenIds(ids: []),
            intrinsicState: const DynamicIntrinsicState().getStateByType(NType.$type),
            defaultAttributes: const DefaultAttributesParse().getByType(NType.$type),
            attributes: attributes ?? {},
            adapter: const WidgetAdapterParse().getByType(NType.$type),
            parent: parent,
            description: description,
            index: index ?? 0,
            child: child,
            children: children,
          );

  @override
  CNode copyWith(
          {int? id,
          int? parent,
          CNode? child,
          List<CNode>? children,
          String? name,
          String? description,
          FChildrenIds? childrenIds,
          int? index,
          Map<String, dynamic>? attributes,
        }) =>
      $generatedClassName(
          id: id ?? this.id,
          parent: parent ?? this.parent,
          child: child ?? this.child,
          children: children ?? this.children,
          name: name ?? this.name,
          description: description ?? this.description,
          childrenIds: childrenIds ?? this.childrenIds,
          index: index ?? this.index,
          attributes: attributes ?? getAttributes,
          );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.$type) {
      throw Exception('Invalid widget type');
    }
    try {
      final id = json['_id'] as int;
      final ids = FChildrenIds.fromJson(json[DBKeys.childrenIds]);
      final name = json['name'] as String?;
      final description = json['description'] as String?;
      final attributes = <String, dynamic>{};

      if (json['body'] != null) {
        for (final entry in (json['body'] as Map<String, dynamic>).entries) {
          attributes[entry.key] = const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return $generatedClassName(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of $generatedClassName, error: \$e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() => '$generatedClassName { id: \$id, name: \$name, type: \$type, childrenIds: \$childrenIds, attributes: \$getAttributes, parent: \$parent, index: \$index, child: \$child, children: \$children }';
}
    ''';

    print('Generated code for $className:');
    //print(code);
    return code;
  }
}
