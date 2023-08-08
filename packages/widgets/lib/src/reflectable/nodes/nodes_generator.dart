// ignore_for_file: unused_import

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

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
      {required final NodeID id,
      final NodeID? parentID,
      final CNode? child,
      final List<CNode>? children,
      final String? name,
      final String? description,
      final double? childOrder,
      final Map<String, dynamic>? attributes,
      final RectProperties? rectProperties,
      final DateTime? updatedAt,
      final PageID? pageID,
      final NodeID? stabilID,
      final PageID? componentID,
      final List<CNode>? componentChildren,
      final bool? isLocked,

      })
      : super(
            id: id,
            type: NType.$type,
            name: name ?? '$displayName',
            parentID: parentID,
            intrinsicState: const DynamicIntrinsicState().getStateByType(NType.$type),
            defaultAttributes: const DefaultAttributesParse().getByType(NType.$type),
            attributes: attributes ?? {},
            rectProperties: rectProperties ?? CNode.defaultRProperties,
            adapter: const WidgetAdapterParse().getByType(NType.$type),
            description: description,
            childOrder: childOrder ?? 0,
            child: child,
            children: children,
            updatedAt: updatedAt ?? DateTime.now(),
            pageID: pageID ?? '',
            stabilID: stabilID,
            componentID: componentID,
            componentChildren:componentChildren ?? [],
            isLocked: isLocked ?? false,
          );

  @override
  CNode copyWith(
          {NodeID? id,
          NodeID? parentID,
          CNode? child,
          List<CNode>? children,
          String? name,
          String? description,
          double? childOrder,
          Map<String, dynamic>? attributes,
          RectProperties? rectProperties,
          DateTime? updatedAt,
          PageID? pageID,
          NodeID? stabilID,
          PageID? componentID,
          List<CNode>? componentChildren,
          final bool? isLocked,
        }) =>
      $generatedClassName(
          id: id ?? this.id,
          parentID: parentID ?? this.parentID,
          child: child ?? this.child,
          children: children ?? this.children,
          name: name ?? this.name,
          description: description ?? this.description,
          childOrder: childOrder ?? this.childOrder,
          attributes: attributes ?? getAttributes,
          rectProperties: rectProperties ?? getRectProperties,
          pageID: pageID ?? this.pageID,
          stabilID: stabilID ?? this.stabilID,
          componentID:componentID ?? this.componentID,
          componentChildren: componentChildren ?? this.componentChildren,
          isLocked: isLocked ?? this.isLocked,
        );

  @override
  CNode copyWithOutChild(
          {NodeID? id,
          NodeID? parentID,
          CNode? child,
          List<CNode>? children,
          String? name,
          String? description,
          double? childOrder,
          Map<String, dynamic>? attributes,
          RectProperties? rectProperties,
          DateTime? updatedAt,
          PageID? pageID,
          NodeID? stabilID,
          PageID? componentID,
          List<CNode>? componentChildren,
          bool? isLocked,
        }) =>
        $generatedClassName(
          id: id ?? this.id,
          parentID: parentID ?? this.parentID,
          child: child ,
          children: children ?? this.children,
          name: name ?? this.name,
          description: description ?? this.description,
          childOrder: childOrder ?? this.childOrder,
          attributes: attributes ?? getAttributes,
          rectProperties: rectProperties ?? getRectProperties,
          pageID: pageID ?? this.pageID,
          stabilID: stabilID ?? this.stabilID,
          componentID:componentID ?? this.componentID,
          componentChildren: componentChildren ?? this.componentChildren,
          isLocked: isLocked ??  this.isLocked,
        );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.$type) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>).entries.where((e) => e.value != null)) {
        attributes[entry.key] = const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return $generatedClassName(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
      pageID: json['page_id'],
      stabilID: json['stabil_id'],
      componentID: json['component_id'],
      isLocked: json['is_locked'],
    );
  }

  @override
  String toString() => '$generatedClassName { id: \$id, name: \$name, type: \$type }';

  String toStringExtended() => '$generatedClassName { id: \$id, name: \$name, type: \$type, parentID: \$parentID, attributes: \$getAttributes, childOrder: \$childOrder, child: \$child, children: \$children }';
}
    ''';

    return code;
  }
}
