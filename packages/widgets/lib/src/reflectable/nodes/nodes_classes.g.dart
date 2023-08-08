// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodes_classes.dart';

// **************************************************************************
// NodeGenerator
// **************************************************************************

/// align
@nodeDeclaration
@NodeKey(NType.align)
class AlignOpenNode extends CNode {
  AlignOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.align,
          name: name ?? 'Align',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.align),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.align),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.align),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      AlignOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      AlignOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.align) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return AlignOpenNode(
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
  String toString() => 'AlignOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'AlignOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// button
@nodeDeclaration
@NodeKey(NType.button)
class ButtonOpenNode extends CNode {
  ButtonOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.button,
          name: name ?? 'Button',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.button),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.button),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.button),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ButtonOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ButtonOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.button) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ButtonOpenNode(
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
  String toString() => 'ButtonOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ButtonOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// column
@nodeDeclaration
@NodeKey(NType.column)
class ColumnOpenNode extends CNode {
  ColumnOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.column,
          name: name ?? 'Column',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.column),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.column),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.column),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ColumnOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ColumnOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.column) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ColumnOpenNode(
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
  String toString() => 'ColumnOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ColumnOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// component
@nodeDeclaration
@NodeKey(NType.component)
class ComponentOpenNode extends CNode {
  ComponentOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.component,
          name: name ?? 'Component',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.component),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.component),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.component),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ComponentOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ComponentOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.component) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ComponentOpenNode(
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
  String toString() =>
      'ComponentOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ComponentOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// teamComponent
@nodeDeclaration
@NodeKey(NType.teamComponent)
class TeamComponentOpenNode extends CNode {
  TeamComponentOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.teamComponent,
          name: name ?? 'Team Component',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.teamComponent),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.teamComponent),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.teamComponent),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      TeamComponentOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      TeamComponentOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.teamComponent) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return TeamComponentOpenNode(
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
  String toString() =>
      'TeamComponentOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'TeamComponentOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// row
@nodeDeclaration
@NodeKey(NType.row)
class RowOpenNode extends CNode {
  RowOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.row,
          name: name ?? 'Row',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.row),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.row),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.row),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      RowOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      RowOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.row) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return RowOpenNode(
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
  String toString() => 'RowOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'RowOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// container
@nodeDeclaration
@NodeKey(NType.container)
class ContainerOpenNode extends CNode {
  ContainerOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.container,
          name: name ?? 'Container',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.container),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.container),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.container),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ContainerOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ContainerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.container) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ContainerOpenNode(
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
  String toString() =>
      'ContainerOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ContainerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// image
@nodeDeclaration
@NodeKey(NType.image)
class ImageOpenNode extends CNode {
  ImageOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.image,
          name: name ?? 'Image',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.image),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.image),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.image),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ImageOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ImageOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.image) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ImageOpenNode(
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
  String toString() => 'ImageOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ImageOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// icon
@nodeDeclaration
@NodeKey(NType.icon)
class IconOpenNode extends CNode {
  IconOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.icon,
          name: name ?? 'Icon',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.icon),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.icon),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.icon),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      IconOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      IconOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.icon) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return IconOpenNode(
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
  String toString() => 'IconOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'IconOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// listView
@nodeDeclaration
@NodeKey(NType.listView)
class ListViewOpenNode extends CNode {
  ListViewOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.listView,
          name: name ?? 'List View',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.listView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listView),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.listView),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ListViewOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ListViewOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.listView) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ListViewOpenNode(
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
  String toString() => 'ListViewOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ListViewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// lottie
@nodeDeclaration
@NodeKey(NType.lottie)
class LottieOpenNode extends CNode {
  LottieOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.lottie,
          name: name ?? 'Lottie',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.lottie),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.lottie),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.lottie),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      LottieOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      LottieOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.lottie) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return LottieOpenNode(
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
  String toString() => 'LottieOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'LottieOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// scaffold
@nodeDeclaration
@NodeKey(NType.scaffold)
class ScaffoldOpenNode extends CNode {
  ScaffoldOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.scaffold,
          name: name ?? 'Scaffold',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.scaffold),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.scaffold),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.scaffold),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      ScaffoldOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      ScaffoldOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.scaffold) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return ScaffoldOpenNode(
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
  String toString() => 'ScaffoldOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'ScaffoldOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// stack
@nodeDeclaration
@NodeKey(NType.stack)
class StackOpenNode extends CNode {
  StackOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.stack,
          name: name ?? 'Stack',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.stack),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.stack),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.stack),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      StackOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      StackOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.stack) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return StackOpenNode(
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
  String toString() => 'StackOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'StackOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// text
@nodeDeclaration
@NodeKey(NType.text)
class TextOpenNode extends CNode {
  TextOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.text,
          name: name ?? 'Text',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.text),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.text),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.text),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      TextOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      TextOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.text) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return TextOpenNode(
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
  String toString() => 'TextOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'TextOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// textField
@nodeDeclaration
@NodeKey(NType.textField)
class TextFieldOpenNode extends CNode {
  TextFieldOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.textField,
          name: name ?? 'TextField',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.textField),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.textField),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.textField),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      TextFieldOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      TextFieldOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.textField) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return TextFieldOpenNode(
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
  String toString() =>
      'TextFieldOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'TextFieldOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// video
@nodeDeclaration
@NodeKey(NType.video)
class VideoOpenNode extends CNode {
  VideoOpenNode({
    required final NodeID id,
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
  }) : super(
          id: id,
          type: NType.video,
          name: name ?? 'Video',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.video),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.video),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.video),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
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
      VideoOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
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
      VideoOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.video) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return VideoOpenNode(
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
  String toString() => 'VideoOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'VideoOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// spacer
@nodeDeclaration
@NodeKey(NType.spacer)
class SpacerOpenNode extends CNode {
  SpacerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final RectProperties? rectProperties,
    final DateTime? updatedAt,
    final PageID? pageID,
    final NodeID? stabilID,
    final PageID? componentID,
    final List<CNode>? componentChildren,
    final bool? isLocked,
  }) : super(
          id: id,
          type: NType.spacer,
          name: name ?? 'Spacer',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.spacer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.spacer),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? CNode.defaultRProperties,
          adapter: const WidgetAdapterParse().getByType(NType.spacer),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
          pageID: pageID ?? '',
          stabilID: stabilID,
          componentID: componentID,
          componentChildren: componentChildren ?? [],
          isLocked: isLocked ?? false,
        );

  @override
  CNode copyWith({
    NodeID? id,
    NodeID? parentID,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    int? childOrder,
    Map<String, dynamic>? attributes,
    RectProperties? rectProperties,
    DateTime? updatedAt,
    PageID? pageID,
    NodeID? stabilID,
    PageID? componentID,
    List<CNode>? componentChildren,
    final bool? isLocked,
  }) =>
      SpacerOpenNode(
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
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  @override
  CNode copyWithOutChild({
    NodeID? id,
    NodeID? parentID,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    int? childOrder,
    Map<String, dynamic>? attributes,
    RectProperties? rectProperties,
    DateTime? updatedAt,
    PageID? pageID,
    NodeID? stabilID,
    PageID? componentID,
    List<CNode>? componentChildren,
    bool? isLocked,
  }) =>
      SpacerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
        pageID: pageID ?? this.pageID,
        stabilID: stabilID ?? this.stabilID,
        componentID: componentID ?? this.componentID,
        componentChildren: componentChildren ?? this.componentChildren,
        isLocked: isLocked ?? this.isLocked,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.spacer) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry in (json['properties'] as Map<String, dynamic>)
          .entries
          .where((e) => e.value != null)) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties = RectProperties.fromJson(json['rect_properties']);

    return SpacerOpenNode(
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
  String toString() => 'SpacerOpenNode { id: $id, name: $name, type: $type }';

  String toStringExtended() =>
      'SpacerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}
