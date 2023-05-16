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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.align),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.align) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AlignOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AlignOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// aspectRatio
@nodeDeclaration
@NodeKey(NType.aspectRatio)
class AspectRatioOpenNode extends CNode {
  AspectRatioOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.aspectRatio,
          name: name ?? 'AspectRatio',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.aspectRatio),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.aspectRatio),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.aspectRatio),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AspectRatioOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.aspectRatio) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AspectRatioOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AspectRatioOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// audioPlayer
@nodeDeclaration
@NodeKey(NType.audioPlayer)
class AudioPlayerOpenNode extends CNode {
  AudioPlayerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.audioPlayer,
          name: name ?? 'Audio Player',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.audioPlayer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.audioPlayer),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.audioPlayer),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AudioPlayerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.audioPlayer) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AudioPlayerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AudioPlayerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// audioPlayerProgressIndicator
@nodeDeclaration
@NodeKey(NType.audioPlayerProgressIndicator)
class AudioPlayerProgressIndicatorOpenNode extends CNode {
  AudioPlayerProgressIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.audioPlayerProgressIndicator,
          name: name ?? 'Audio Player Progress Indicator',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.audioPlayerProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.audioPlayerProgressIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.audioPlayerProgressIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AudioPlayerProgressIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.audioPlayerProgressIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AudioPlayerProgressIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AudioPlayerProgressIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// audioPlayerVolumeIndicator
@nodeDeclaration
@NodeKey(NType.audioPlayerVolumeIndicator)
class AudioPlayerVolumeIndicatorOpenNode extends CNode {
  AudioPlayerVolumeIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.audioPlayerVolumeIndicator,
          name: name ?? 'Audio Player Volume Indicator',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.audioPlayerVolumeIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.audioPlayerVolumeIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.audioPlayerVolumeIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AudioPlayerVolumeIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.audioPlayerVolumeIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AudioPlayerVolumeIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AudioPlayerVolumeIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// badge
@nodeDeclaration
@NodeKey(NType.badge)
class BadgeOpenNode extends CNode {
  BadgeOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.badge,
          name: name ?? 'Badge',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.badge),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.badge),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.badge),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      BadgeOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.badge) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return BadgeOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'BadgeOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// barcode
@nodeDeclaration
@NodeKey(NType.barcode)
class BarcodeOpenNode extends CNode {
  BarcodeOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.barcode,
          name: name ?? 'Barcode',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.barcode),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.barcode),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.barcode),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      BarcodeOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.barcode) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return BarcodeOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'BarcodeOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// bottombaritem
@nodeDeclaration
@NodeKey(NType.bottombaritem)
class BottomBarItemOpenNode extends CNode {
  BottomBarItemOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.bottombaritem,
          name: name ?? 'BottomBar Item',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.bottombaritem),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bottombaritem),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bottombaritem),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      BottomBarItemOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.bottombaritem) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return BottomBarItemOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'BottomBarItemOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// bouncingWidget
@nodeDeclaration
@NodeKey(NType.bouncingWidget)
class BouncingWidgetOpenNode extends CNode {
  BouncingWidgetOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.bouncingWidget,
          name: name ?? 'Bouncing Widget',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.bouncingWidget),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bouncingWidget),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bouncingWidget),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      BouncingWidgetOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.bouncingWidget) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return BouncingWidgetOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'BouncingWidgetOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.button),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.button) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ButtonOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ButtonOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// calendar
@nodeDeclaration
@NodeKey(NType.calendar)
class CalendarOpenNode extends CNode {
  CalendarOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.calendar,
          name: name ?? 'Calendar',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.calendar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.calendar),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.calendar),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CalendarOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.calendar) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CalendarOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CalendarOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// calendarV2
@nodeDeclaration
@NodeKey(NType.calendarV2)
class CalendarV2OpenNode extends CNode {
  CalendarV2OpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.calendarV2,
          name: name ?? 'Calendar V2',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.calendarV2),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.calendarV2),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.calendarV2),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CalendarV2OpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.calendarV2) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CalendarV2OpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CalendarV2OpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// card
@nodeDeclaration
@NodeKey(NType.card)
class CardOpenNode extends CNode {
  CardOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.card,
          name: name ?? 'Card',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.card),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.card),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.card),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CardOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.card) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CardOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CardOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// center
@nodeDeclaration
@NodeKey(NType.center)
class CenterOpenNode extends CNode {
  CenterOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.center,
          name: name ?? 'Center',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.center),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.center),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.center),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CenterOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.center) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CenterOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CenterOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// checkbox
@nodeDeclaration
@NodeKey(NType.checkbox)
class CheckboxOpenNode extends CNode {
  CheckboxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.checkbox,
          name: name ?? 'Checkbox',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.checkbox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.checkbox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.checkbox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CheckboxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.checkbox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CheckboxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CheckboxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// circularProgressIndicator
@nodeDeclaration
@NodeKey(NType.circularProgressIndicator)
class CircularProgressIndicatorOpenNode extends CNode {
  CircularProgressIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.circularProgressIndicator,
          name: name ?? 'Circular Progress Indicator',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.circularProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.circularProgressIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.circularProgressIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CircularProgressIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.circularProgressIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CircularProgressIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CircularProgressIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// clipOval
@nodeDeclaration
@NodeKey(NType.clipOval)
class ClipOvalOpenNode extends CNode {
  ClipOvalOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.clipOval,
          name: name ?? 'Clip Oval',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.clipOval),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipOval),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipOval),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ClipOvalOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.clipOval) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ClipOvalOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ClipOvalOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// clipRect
@nodeDeclaration
@NodeKey(NType.clipRect)
class ClipRectOpenNode extends CNode {
  ClipRectOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.clipRect,
          name: name ?? 'Clip Rect',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.clipRect),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipRect),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipRect),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ClipRectOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.clipRect) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ClipRectOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ClipRectOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// clipRoundedRect
@nodeDeclaration
@NodeKey(NType.clipRoundedRect)
class ClipRRectOpenNode extends CNode {
  ClipRRectOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.clipRoundedRect,
          name: name ?? 'Clip RRect',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.clipRoundedRect),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipRoundedRect),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipRoundedRect),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ClipRRectOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.clipRoundedRect) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ClipRRectOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ClipRRectOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.column),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.column) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ColumnOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.component),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.component) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ComponentOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ComponentOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.row),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.row) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RowOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RowOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// concentricPageView
@nodeDeclaration
@NodeKey(NType.concentricPageView)
class ConcentricPageViewOpenNode extends CNode {
  ConcentricPageViewOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.concentricPageView,
          name: name ?? 'Concentric Page View',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.concentricPageView),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.concentricPageView),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.concentricPageView),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ConcentricPageViewOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.concentricPageView) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ConcentricPageViewOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ConcentricPageViewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// condition
@nodeDeclaration
@NodeKey(NType.condition)
class ConditionOpenNode extends CNode {
  ConditionOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.condition,
          name: name ?? 'Condition',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.condition),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.condition),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.condition),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ConditionOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.condition) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ConditionOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ConditionOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.container),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.container) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ContainerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ContainerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// constrainedBox
@nodeDeclaration
@NodeKey(NType.constrainedBox)
class ConstrainedBoxOpenNode extends CNode {
  ConstrainedBoxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.constrainedBox,
          name: name ?? 'Constrained Box',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.constrainedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.constrainedBox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.constrainedBox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ConstrainedBoxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.constrainedBox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ConstrainedBoxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ConstrainedBoxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// limitedBox
@nodeDeclaration
@NodeKey(NType.limitedBox)
class LimitedBoxOpenNode extends CNode {
  LimitedBoxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.limitedBox,
          name: name ?? 'Limited Box',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.limitedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.limitedBox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.limitedBox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LimitedBoxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.limitedBox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LimitedBoxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LimitedBoxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// sizedBox
@nodeDeclaration
@NodeKey(NType.sizedBox)
class SizedBoxOpenNode extends CNode {
  SizedBoxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.sizedBox,
          name: name ?? 'Sized Box',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.sizedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.sizedBox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.sizedBox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SizedBoxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.sizedBox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SizedBoxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SizedBoxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// decoratedBox
@nodeDeclaration
@NodeKey(NType.decoratedBox)
class DecoratedBoxOpenNode extends CNode {
  DecoratedBoxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.decoratedBox,
          name: name ?? 'Decorated Box',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.decoratedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.decoratedBox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.decoratedBox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      DecoratedBoxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.decoratedBox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return DecoratedBoxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'DecoratedBoxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.image),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.image) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ImageOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ImageOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cupertinoPicker
@nodeDeclaration
@NodeKey(NType.cupertinoPicker)
class CupertinoPickerOpenNode extends CNode {
  CupertinoPickerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cupertinoPicker,
          name: name ?? 'Cupertino Picker',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoPicker),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cupertinoPicker),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cupertinoPicker),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CupertinoPickerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cupertinoPicker) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CupertinoPickerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CupertinoPickerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cupertinoSegmentedControl
@nodeDeclaration
@NodeKey(NType.cupertinoSegmentedControl)
class CupertinoSegmentedControlOpenNode extends CNode {
  CupertinoSegmentedControlOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cupertinoSegmentedControl,
          name: name ?? 'Cupertino Segmented Control',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoSegmentedControl),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.cupertinoSegmentedControl),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.cupertinoSegmentedControl),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CupertinoSegmentedControlOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cupertinoSegmentedControl) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CupertinoSegmentedControlOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CupertinoSegmentedControlOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cupertinoSwitch
@nodeDeclaration
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchOpenNode extends CNode {
  CupertinoSwitchOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cupertinoSwitch,
          name: name ?? 'Cupertino Switch',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoSwitch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cupertinoSwitch),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cupertinoSwitch),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CupertinoSwitchOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cupertinoSwitch) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CupertinoSwitchOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CupertinoSwitchOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// divider
@nodeDeclaration
@NodeKey(NType.divider)
class DividerOpenNode extends CNode {
  DividerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.divider,
          name: name ?? 'Divider',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.divider),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.divider),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.divider),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      DividerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.divider) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return DividerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'DividerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// dotsIndicator
@nodeDeclaration
@NodeKey(NType.dotsIndicator)
class DotsIndicatorOpenNode extends CNode {
  DotsIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.dotsIndicator,
          name: name ?? 'Dots Indicator',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.dotsIndicator),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.dotsIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.dotsIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      DotsIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.dotsIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return DotsIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'DotsIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// expanded
@nodeDeclaration
@NodeKey(NType.expanded)
class ExpandedOpenNode extends CNode {
  ExpandedOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.expanded,
          name: name ?? 'Expanded',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.expanded),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.expanded),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.expanded),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ExpandedOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.expanded) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ExpandedOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ExpandedOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// adMobBanner
@nodeDeclaration
@NodeKey(NType.adMobBanner)
class AdMobBannerOpenNode extends CNode {
  AdMobBannerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.adMobBanner,
          name: name ?? 'AdMob Banner',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.adMobBanner),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.adMobBanner),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.adMobBanner),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AdMobBannerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.adMobBanner) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AdMobBannerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AdMobBannerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// googleMaps
@nodeDeclaration
@NodeKey(NType.googleMaps)
class GoogleMapsOpenNode extends CNode {
  GoogleMapsOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.googleMaps,
          name: name ?? 'Google Maps',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.googleMaps),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.googleMaps),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.googleMaps),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      GoogleMapsOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.googleMaps) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return GoogleMapsOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'GoogleMapsOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// gridView
@nodeDeclaration
@NodeKey(NType.gridView)
class GridViewOpenNode extends CNode {
  GridViewOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.gridView,
          name: name ?? 'Grid View',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.gridView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.gridView),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.gridView),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      GridViewOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.gridView) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return GridViewOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'GridViewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// gridViewBuilder
@nodeDeclaration
@NodeKey(NType.gridViewBuilder)
class GridViewBuilderOpenNode extends CNode {
  GridViewBuilderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.gridViewBuilder,
          name: name ?? 'Grid View Builder',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.gridViewBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.gridViewBuilder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.gridViewBuilder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      GridViewBuilderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.gridViewBuilder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return GridViewBuilderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'GridViewBuilderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// hero
@nodeDeclaration
@NodeKey(NType.hero)
class HeroOpenNode extends CNode {
  HeroOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.hero,
          name: name ?? 'Hero',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.hero),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.hero),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.hero),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      HeroOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.hero) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return HeroOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'HeroOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.icon),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.icon) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return IconOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'IconOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// ignorePointer
@nodeDeclaration
@NodeKey(NType.ignorePointer)
class IgnorePointerOpenNode extends CNode {
  IgnorePointerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.ignorePointer,
          name: name ?? 'Ignore Pointer',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.ignorePointer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.ignorePointer),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.ignorePointer),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      IgnorePointerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.ignorePointer) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return IgnorePointerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'IgnorePointerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// indexedStack
@nodeDeclaration
@NodeKey(NType.indexedStack)
class IndexedStackOpenNode extends CNode {
  IndexedStackOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.indexedStack,
          name: name ?? 'Indexed Stack',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.indexedStack),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.indexedStack),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.indexedStack),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      IndexedStackOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.indexedStack) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return IndexedStackOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'IndexedStackOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// linearProgressIndicator
@nodeDeclaration
@NodeKey(NType.linearProgressIndicator)
class LinearProgressIndicatorOpenNode extends CNode {
  LinearProgressIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.linearProgressIndicator,
          name: name ?? 'Linear Progress Indicator',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.linearProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.linearProgressIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.linearProgressIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LinearProgressIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.linearProgressIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LinearProgressIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LinearProgressIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// liquidSwipe
@nodeDeclaration
@NodeKey(NType.liquidSwipe)
class LiquidSwipeOpenNode extends CNode {
  LiquidSwipeOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.liquidSwipe,
          name: name ?? 'Liquid Swipe',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.liquidSwipe),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.liquidSwipe),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.liquidSwipe),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LiquidSwipeOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.liquidSwipe) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LiquidSwipeOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LiquidSwipeOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// listTile
@nodeDeclaration
@NodeKey(NType.listTile)
class ListTileOpenNode extends CNode {
  ListTileOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.listTile,
          name: name ?? 'List Tile',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.listTile),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listTile),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listTile),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ListTileOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.listTile) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ListTileOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ListTileOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listView),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.listView) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ListViewOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ListViewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// listViewBuilder
@nodeDeclaration
@NodeKey(NType.listViewBuilder)
class ListViewBuilderOpenNode extends CNode {
  ListViewBuilderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.listViewBuilder,
          name: name ?? 'List View Builder',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.listViewBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listViewBuilder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listViewBuilder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ListViewBuilderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.listViewBuilder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ListViewBuilderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ListViewBuilderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.lottie),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.lottie) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LottieOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LottieOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// map
@nodeDeclaration
@NodeKey(NType.map)
class MapOpenNode extends CNode {
  MapOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.map,
          name: name ?? 'Map',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.map),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.map),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.map),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      MapOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.map) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return MapOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'MapOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// marker
@nodeDeclaration
@NodeKey(NType.marker)
class MarkerOpenNode extends CNode {
  MarkerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.marker,
          name: name ?? 'Marker',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.marker),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.marker),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.marker),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      MarkerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.marker) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return MarkerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'MarkerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// opacity
@nodeDeclaration
@NodeKey(NType.opacity)
class OpacityOpenNode extends CNode {
  OpacityOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.opacity,
          name: name ?? 'Opacity',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.opacity),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.opacity),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.opacity),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      OpacityOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.opacity) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return OpacityOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'OpacityOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// padding
@nodeDeclaration
@NodeKey(NType.padding)
class PaddingOpenNode extends CNode {
  PaddingOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.padding,
          name: name ?? 'Padding',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.padding),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.padding),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.padding),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      PaddingOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.padding) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return PaddingOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'PaddingOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// pageView
@nodeDeclaration
@NodeKey(NType.pageView)
class PageViewOpenNode extends CNode {
  PageViewOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.pageView,
          name: name ?? 'Page View',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.pageView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.pageView),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.pageView),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      PageViewOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.pageView) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return PageViewOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'PageViewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// placeholder
@nodeDeclaration
@NodeKey(NType.placeholder)
class PlaceholderOpenNode extends CNode {
  PlaceholderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.placeholder,
          name: name ?? 'Placeholder',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.placeholder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.placeholder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.placeholder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      PlaceholderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.placeholder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return PlaceholderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'PlaceholderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// positioned
@nodeDeclaration
@NodeKey(NType.positioned)
class PositionedOpenNode extends CNode {
  PositionedOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.positioned,
          name: name ?? 'Positioned',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.positioned),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.positioned),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.positioned),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      PositionedOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.positioned) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return PositionedOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'PositionedOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// safeArea
@nodeDeclaration
@NodeKey(NType.safeArea)
class SafeAreaOpenNode extends CNode {
  SafeAreaOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.safeArea,
          name: name ?? 'Safe Area',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.safeArea),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.safeArea),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.safeArea),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SafeAreaOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.safeArea) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SafeAreaOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SafeAreaOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// qrScanner
@nodeDeclaration
@NodeKey(NType.qrScanner)
class QRScannerOpenNode extends CNode {
  QRScannerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.qrScanner,
          name: name ?? 'QR Scanner',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.qrScanner),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.qrScanner),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.qrScanner),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      QRScannerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.qrScanner) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return QRScannerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'QRScannerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// qrCode
@nodeDeclaration
@NodeKey(NType.qrCode)
class QRCodeOpenNode extends CNode {
  QRCodeOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.qrCode,
          name: name ?? 'QR Code',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.qrCode),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.qrCode),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.qrCode),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      QRCodeOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.qrCode) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return QRCodeOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'QRCodeOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// radio
@nodeDeclaration
@NodeKey(NType.radio)
class RadioOpenNode extends CNode {
  RadioOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.radio,
          name: name ?? 'Radio',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.radio),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.radio),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.radio),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      RadioOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.radio) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RadioOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RadioOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// refreshIndicator
@nodeDeclaration
@NodeKey(NType.refreshIndicator)
class RefreshIndicatorOpenNode extends CNode {
  RefreshIndicatorOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.refreshIndicator,
          name: name ?? 'Refresh Indicator',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.refreshIndicator),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.refreshIndicator),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.refreshIndicator),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      RefreshIndicatorOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.refreshIndicator) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RefreshIndicatorOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RefreshIndicatorOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// responsiveCondition
@nodeDeclaration
@NodeKey(NType.responsiveCondition)
class ResponsiveConditionOpenNode extends CNode {
  ResponsiveConditionOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.responsiveCondition,
          name: name ?? 'Responsive Condition',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.responsiveCondition),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.responsiveCondition),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.responsiveCondition),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ResponsiveConditionOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.responsiveCondition) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ResponsiveConditionOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ResponsiveConditionOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// rotatedBox
@nodeDeclaration
@NodeKey(NType.rotatedBox)
class RotatedBoxOpenNode extends CNode {
  RotatedBoxOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.rotatedBox,
          name: name ?? 'Rotated Box',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.rotatedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.rotatedBox),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.rotatedBox),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      RotatedBoxOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.rotatedBox) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RotatedBoxOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RotatedBoxOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.scaffold),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.scaffold) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ScaffoldOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ScaffoldOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.spacer),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.spacer) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SpacerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SpacerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.stack),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.stack) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return StackOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'StackOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// tcard
@nodeDeclaration
@NodeKey(NType.tcard)
class TCardOpenNode extends CNode {
  TCardOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.tcard,
          name: name ?? 'TCard',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tcard),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tcard),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tcard),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      TCardOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.tcard) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return TCardOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'TCardOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// tcardBuilder
@nodeDeclaration
@NodeKey(NType.tcardBuilder)
class TCardBuilderOpenNode extends CNode {
  TCardBuilderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.tcardBuilder,
          name: name ?? 'TCard Builder',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tcardBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tcardBuilder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tcardBuilder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      TCardBuilderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.tcardBuilder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return TCardBuilderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'TCardBuilderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.text),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.text) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return TextOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.textField),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.textField) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return TextFieldOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'TextFieldOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// tooltip
@nodeDeclaration
@NodeKey(NType.tooltip)
class TooltipOpenNode extends CNode {
  TooltipOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.tooltip,
          name: name ?? 'Tooltip',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tooltip),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tooltip),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tooltip),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      TooltipOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.tooltip) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return TooltipOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'TooltipOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
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
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
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
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.video),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
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
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.video) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return VideoOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'VideoOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// visibility
@nodeDeclaration
@NodeKey(NType.visibility)
class VisibilityOpenNode extends CNode {
  VisibilityOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.visibility,
          name: name ?? 'Visibility',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.visibility),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.visibility),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.visibility),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      VisibilityOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.visibility) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return VisibilityOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'VisibilityOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// webview
@nodeDeclaration
@NodeKey(NType.webview)
class WebviewOpenNode extends CNode {
  WebviewOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.webview,
          name: name ?? 'Webview',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.webview),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.webview),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.webview),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      WebviewOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.webview) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return WebviewOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'WebviewOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// wrap
@nodeDeclaration
@NodeKey(NType.wrap)
class WrapOpenNode extends CNode {
  WrapOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.wrap,
          name: name ?? 'Wrap',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.wrap),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.wrap),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.wrap),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      WrapOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.wrap) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return WrapOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'WrapOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// animationConfigGrid
@nodeDeclaration
@NodeKey(NType.animationConfigGrid)
class AnimationConfigGridOpenNode extends CNode {
  AnimationConfigGridOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.animationConfigGrid,
          name: name ?? 'Animation Config Grid',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.animationConfigGrid),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.animationConfigGrid),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.animationConfigGrid),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AnimationConfigGridOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.animationConfigGrid) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AnimationConfigGridOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AnimationConfigGridOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// animationConfigList
@nodeDeclaration
@NodeKey(NType.animationConfigList)
class AnimationConfigListOpenNode extends CNode {
  AnimationConfigListOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.animationConfigList,
          name: name ?? 'Animation Config List',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.animationConfigList),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.animationConfigList),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.animationConfigList),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AnimationConfigListOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.animationConfigList) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AnimationConfigListOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AnimationConfigListOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// fadeInAnimation
@nodeDeclaration
@NodeKey(NType.fadeInAnimation)
class FadeInAnimationOpenNode extends CNode {
  FadeInAnimationOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.fadeInAnimation,
          name: name ?? 'Fade In Animation',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.fadeInAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.fadeInAnimation),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.fadeInAnimation),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      FadeInAnimationOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.fadeInAnimation) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return FadeInAnimationOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'FadeInAnimationOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// scaleAnimation
@nodeDeclaration
@NodeKey(NType.scaleAnimation)
class ScaleAnimationOpenNode extends CNode {
  ScaleAnimationOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.scaleAnimation,
          name: name ?? 'Scale Animation',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.scaleAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.scaleAnimation),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.scaleAnimation),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ScaleAnimationOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.scaleAnimation) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ScaleAnimationOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ScaleAnimationOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// slideAnimation
@nodeDeclaration
@NodeKey(NType.slideAnimation)
class SlideAnimationOpenNode extends CNode {
  SlideAnimationOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.slideAnimation,
          name: name ?? 'Slide Animation',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.slideAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.slideAnimation),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.slideAnimation),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SlideAnimationOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.slideAnimation) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SlideAnimationOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SlideAnimationOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// apiCallsFetch
@nodeDeclaration
@NodeKey(NType.apiCallsFetch)
class ApiCallsFetchOpenNode extends CNode {
  ApiCallsFetchOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.apiCallsFetch,
          name: name ?? 'Api Calls Fetch',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.apiCallsFetch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.apiCallsFetch),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.apiCallsFetch),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      ApiCallsFetchOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.apiCallsFetch) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return ApiCallsFetchOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'ApiCallsFetchOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithApple
@nodeDeclaration
@NodeKey(NType.loginWithApple)
class LoginWithAppleOpenNode extends CNode {
  LoginWithAppleOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithApple,
          name: name ?? 'Login With Apple',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithApple),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithApple),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithApple),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithAppleOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithApple) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithAppleOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithAppleOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithFacebook
@nodeDeclaration
@NodeKey(NType.loginWithFacebook)
class LoginWithFacebookOpenNode extends CNode {
  LoginWithFacebookOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithFacebook,
          name: name ?? 'Login With Facebook',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithFacebook),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithFacebook),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithFacebook),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithFacebookOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithFacebook) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithFacebookOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithFacebookOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithGoogle
@nodeDeclaration
@NodeKey(NType.loginWithGoogle)
class LoginWithGoogleOpenNode extends CNode {
  LoginWithGoogleOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithGoogle,
          name: name ?? 'Login With Google',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGoogle),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGoogle),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGoogle),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithGoogleOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithGoogle) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithGoogleOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithGoogleOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithTwitter
@nodeDeclaration
@NodeKey(NType.loginWithTwitter)
class LoginWithTwitterOpenNode extends CNode {
  LoginWithTwitterOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithTwitter,
          name: name ?? 'Login With Twitter',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithTwitter),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithTwitter),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithTwitter),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithTwitterOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithTwitter) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithTwitterOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithTwitterOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithGitHub
@nodeDeclaration
@NodeKey(NType.loginWithGitHub)
class LoginWithGithubOpenNode extends CNode {
  LoginWithGithubOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithGitHub,
          name: name ?? 'Login With Github',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGitHub),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGitHub),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGitHub),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithGithubOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithGitHub) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithGithubOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithGithubOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithMicrosoft
@nodeDeclaration
@NodeKey(NType.loginWithMicrosoft)
class LoginWithMicrosoftOpenNode extends CNode {
  LoginWithMicrosoftOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithMicrosoft,
          name: name ?? 'Login With Microsoft',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithMicrosoft),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.loginWithMicrosoft),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithMicrosoft),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithMicrosoftOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithMicrosoft) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithMicrosoftOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithMicrosoftOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithLinkedin
@nodeDeclaration
@NodeKey(NType.loginWithLinkedin)
class LoginWithLinkedinOpenNode extends CNode {
  LoginWithLinkedinOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithLinkedin,
          name: name ?? 'Login With Linkedin',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithLinkedin),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithLinkedin),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithLinkedin),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithLinkedinOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithLinkedin) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithLinkedinOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithLinkedinOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithBitBucket
@nodeDeclaration
@NodeKey(NType.loginWithBitBucket)
class LoginWithBitbucketOpenNode extends CNode {
  LoginWithBitbucketOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithBitBucket,
          name: name ?? 'Login With Bitbucket',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithBitBucket),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.loginWithBitBucket),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithBitBucket),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithBitbucketOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithBitBucket) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithBitbucketOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithBitbucketOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithDiscord
@nodeDeclaration
@NodeKey(NType.loginWithDiscord)
class LoginWithDiscordOpenNode extends CNode {
  LoginWithDiscordOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithDiscord,
          name: name ?? 'Login With Discord',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithDiscord),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithDiscord),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithDiscord),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithDiscordOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithDiscord) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithDiscordOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithDiscordOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithTwitch
@nodeDeclaration
@NodeKey(NType.loginWithTwitch)
class LoginWithTwitchOpenNode extends CNode {
  LoginWithTwitchOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithTwitch,
          name: name ?? 'Login With Twitch',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithTwitch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithTwitch),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithTwitch),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithTwitchOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithTwitch) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithTwitchOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithTwitchOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// loginWithGitlab
@nodeDeclaration
@NodeKey(NType.loginWithGitlab)
class LoginWithGitlabOpenNode extends CNode {
  LoginWithGitlabOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.loginWithGitlab,
          name: name ?? 'Login With Gitlab',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGitlab),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGitlab),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGitlab),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      LoginWithGitlabOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.loginWithGitlab) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return LoginWithGitlabOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'LoginWithGitlabOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// httpRequest
@nodeDeclaration
@NodeKey(NType.httpRequest)
class HttpRequestOpenNode extends CNode {
  HttpRequestOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.httpRequest,
          name: name ?? 'Http Request',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.httpRequest),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.httpRequest),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.httpRequest),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      HttpRequestOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.httpRequest) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return HttpRequestOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'HttpRequestOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// customHttpRequest
@nodeDeclaration
@NodeKey(NType.customHttpRequest)
class CustomHttpRequestOpenNode extends CNode {
  CustomHttpRequestOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.customHttpRequest,
          name: name ?? 'Custom Http Request',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.customHttpRequest),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.customHttpRequest),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.customHttpRequest),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CustomHttpRequestOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.customHttpRequest) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CustomHttpRequestOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CustomHttpRequestOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// appBar
@nodeDeclaration
@NodeKey(NType.appBar)
class AppBarOpenNode extends CNode {
  AppBarOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.appBar,
          name: name ?? 'App Bar',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.appBar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.appBar),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.appBar),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      AppBarOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.appBar) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return AppBarOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'AppBarOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// bottomBar
@nodeDeclaration
@NodeKey(NType.bottomBar)
class BottomBarOpenNode extends CNode {
  BottomBarOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.bottomBar,
          name: name ?? 'Bottom Bar',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.bottomBar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bottomBar),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bottomBar),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      BottomBarOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.bottomBar) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return BottomBarOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'BottomBarOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// drawer
@nodeDeclaration
@NodeKey(NType.drawer)
class DrawerOpenNode extends CNode {
  DrawerOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.drawer,
          name: name ?? 'Drawer',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.drawer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.drawer),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.drawer),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      DrawerOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.drawer) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return DrawerOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'DrawerOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// qonversionProducts
@nodeDeclaration
@NodeKey(NType.qonversionProducts)
class QonversionProductsOpenNode extends CNode {
  QonversionProductsOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.qonversionProducts,
          name: name ?? 'Qonversion Products',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.qonversionProducts),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.qonversionProducts),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.qonversionProducts),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      QonversionProductsOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.qonversionProducts) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return QonversionProductsOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'QonversionProductsOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// qonversionSubStatus
@nodeDeclaration
@NodeKey(NType.qonversionSubStatus)
class QonversionSubStatusOpenNode extends CNode {
  QonversionSubStatusOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.qonversionSubStatus,
          name: name ?? 'Qonversion Sub Status',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.qonversionSubStatus),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.qonversionSubStatus),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.qonversionSubStatus),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      QonversionSubStatusOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.qonversionSubStatus) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return QonversionSubStatusOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'QonversionSubStatusOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// revenueCatProducts
@nodeDeclaration
@NodeKey(NType.revenueCatProducts)
class RevenueCatProductsOpenNode extends CNode {
  RevenueCatProductsOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.revenueCatProducts,
          name: name ?? 'RevenueCat Products',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.revenueCatProducts),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.revenueCatProducts),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.revenueCatProducts),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      RevenueCatProductsOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.revenueCatProducts) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RevenueCatProductsOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RevenueCatProductsOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// revenueCatSubStatus
@nodeDeclaration
@NodeKey(NType.revenueCatSubStatus)
class RevenueCatSubStatusOpenNode extends CNode {
  RevenueCatSubStatusOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.revenueCatSubStatus,
          name: name ?? 'RevenueCat Sub Status',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.revenueCatSubStatus),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.revenueCatSubStatus),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.revenueCatSubStatus),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      RevenueCatSubStatusOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.revenueCatSubStatus) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return RevenueCatSubStatusOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'RevenueCatSubStatusOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// wrapper
@nodeDeclaration
@NodeKey(NType.wrapper)
class WrapperOpenNode extends CNode {
  WrapperOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.wrapper,
          name: name ?? 'Wrapper',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.wrapper),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.wrapper),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.wrapper),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      WrapperOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.wrapper) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return WrapperOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'WrapperOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// supabaseFutureBuilder
@nodeDeclaration
@NodeKey(NType.supabaseFutureBuilder)
class SupabaseFutureBuilderOpenNode extends CNode {
  SupabaseFutureBuilderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.supabaseFutureBuilder,
          name: name ?? 'Supabase Future Builder',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseFutureBuilder),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseFutureBuilder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseFutureBuilder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SupabaseFutureBuilderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.supabaseFutureBuilder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SupabaseFutureBuilderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SupabaseFutureBuilderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// supabaseStreamBuilder
@nodeDeclaration
@NodeKey(NType.supabaseStreamBuilder)
class SupabaseStreamBuilderOpenNode extends CNode {
  SupabaseStreamBuilderOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.supabaseStreamBuilder,
          name: name ?? 'Supabase Stream Builder',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseStreamBuilder),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseStreamBuilder),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseStreamBuilder),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SupabaseStreamBuilderOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.supabaseStreamBuilder) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SupabaseStreamBuilderOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SupabaseStreamBuilderOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// supabaseLoggedUser
@nodeDeclaration
@NodeKey(NType.supabaseLoggedUser)
class SupabaseLoggedUserOpenNode extends CNode {
  SupabaseLoggedUserOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.supabaseLoggedUser,
          name: name ?? 'Supabase Logged User',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseLoggedUser),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseLoggedUser),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseLoggedUser),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      SupabaseLoggedUserOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.supabaseLoggedUser) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return SupabaseLoggedUserOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'SupabaseLoggedUserOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cmsCount
@nodeDeclaration
@NodeKey(NType.cmsCount)
class CMSCountOpenNode extends CNode {
  CMSCountOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cmsCount,
          name: name ?? 'CMS Count',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsCount),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsCount),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsCount),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CMSCountOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cmsCount) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CMSCountOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CMSCountOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cmsCustomQuery
@nodeDeclaration
@NodeKey(NType.cmsCustomQuery)
class CMSCustomQueryOpenNode extends CNode {
  CMSCustomQueryOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cmsCustomQuery,
          name: name ?? 'CMS Custom Query',
          parentID: parentID,
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cmsCustomQuery),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsCustomQuery),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsCustomQuery),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CMSCustomQueryOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cmsCustomQuery) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CMSCustomQueryOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CMSCustomQueryOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cmsFetch
@nodeDeclaration
@NodeKey(NType.cmsFetch)
class CMSFetchOpenNode extends CNode {
  CMSFetchOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cmsFetch,
          name: name ?? 'CMS Fetch',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsFetch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsFetch),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsFetch),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CMSFetchOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cmsFetch) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CMSFetchOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CMSFetchOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cmsStream
@nodeDeclaration
@NodeKey(NType.cmsStream)
class CMSStreamOpenNode extends CNode {
  CMSStreamOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cmsStream,
          name: name ?? 'CMS Stream',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsStream),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsStream),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsStream),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CMSStreamOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cmsStream) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CMSStreamOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CMSStreamOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}

/// cmsLoggedUser
@nodeDeclaration
@NodeKey(NType.cmsLoggedUser)
class CMSLoggedUserOpenNode extends CNode {
  CMSLoggedUserOpenNode({
    required final NodeID id,
    final NodeID? parentID,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final int? childOrder,
    final Map<String, dynamic>? attributes,
    final Map<String, dynamic>? rectProperties,
    final DateTime? updatedAt,
  }) : super(
          id: id,
          type: NType.cmsLoggedUser,
          name: name ?? 'CMS Logged User',
          parentID: parentID,
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsLoggedUser),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsLoggedUser),
          attributes: attributes ?? {},
          rectProperties: rectProperties ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsLoggedUser),
          description: description,
          childOrder: childOrder ?? 0,
          child: child,
          children: children,
          updatedAt: updatedAt ?? DateTime.now(),
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
    Map<String, dynamic>? rectProperties,
    DateTime? updatedAt,
  }) =>
      CMSLoggedUserOpenNode(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        child: child ?? this.child,
        children: children ?? this.children,
        name: name ?? this.name,
        description: description ?? this.description,
        childOrder: childOrder ?? this.childOrder,
        attributes: attributes ?? getAttributes,
        rectProperties: rectProperties ?? getRectProperties,
      );

  static fromJson(String widgetType, Map<String, dynamic> json) {
    if (widgetType != NType.cmsLoggedUser) {
      throw Exception('Invalid widget type');
    }

    final attributes = <String, dynamic>{};
    if (json['properties'] != null) {
      for (final entry
          in (json['properties'] as Map<String, dynamic>).entries) {
        attributes[entry.key] =
            const DynamicAttributes().fromJson(entry.key, entry.value);
      }
    }

    final rectProperties =
        CNode.rectPropertiesFromJson(json['rect_properties']);

    return CMSLoggedUserOpenNode(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      parentID: json['parent_id'],
      attributes: attributes,
      rectProperties: rectProperties,
      updatedAt: DateTime.parse(json['updated_at']),
      childOrder: json['child_order'],
    );
  }

  @override
  String toString() =>
      'CMSLoggedUserOpenNode { id: $id, name: $name, type: $type, parentID: $parentID, attributes: $getAttributes, childOrder: $childOrder, child: $child, children: $children }';
}
