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
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.align,
          name: name ?? 'Align',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.align),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.align),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.align),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AlignOpenNode(
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
    if (widgetType != NType.align) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AlignOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of AlignOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AlignOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// aspectRatio
@nodeDeclaration
@NodeKey(NType.aspectRatio)
class AspectRatioOpenNode extends CNode {
  AspectRatioOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.aspectRatio,
          name: name ?? 'AspectRatio',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.aspectRatio),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.aspectRatio),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.aspectRatio),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AspectRatioOpenNode(
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
    if (widgetType != NType.aspectRatio) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AspectRatioOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of AspectRatioOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AspectRatioOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// audioPlayer
@nodeDeclaration
@NodeKey(NType.audioPlayer)
class AudioPlayerOpenNode extends CNode {
  AudioPlayerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.audioPlayer,
          name: name ?? 'Audio Player',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.audioPlayer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.audioPlayer),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.audioPlayer),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AudioPlayerOpenNode(
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
    if (widgetType != NType.audioPlayer) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AudioPlayerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of AudioPlayerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AudioPlayerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// audioPlayerProgressIndicator
@nodeDeclaration
@NodeKey(NType.audioPlayerProgressIndicator)
class AudioPlayerProgressIndicatorOpenNode extends CNode {
  AudioPlayerProgressIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.audioPlayerProgressIndicator,
          name: name ?? 'Audio Player Progress Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.audioPlayerProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.audioPlayerProgressIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.audioPlayerProgressIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AudioPlayerProgressIndicatorOpenNode(
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
    if (widgetType != NType.audioPlayerProgressIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AudioPlayerProgressIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of AudioPlayerProgressIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AudioPlayerProgressIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// audioPlayerVolumeIndicator
@nodeDeclaration
@NodeKey(NType.audioPlayerVolumeIndicator)
class AudioPlayerVolumeIndicatorOpenNode extends CNode {
  AudioPlayerVolumeIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.audioPlayerVolumeIndicator,
          name: name ?? 'Audio Player Volume Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.audioPlayerVolumeIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.audioPlayerVolumeIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.audioPlayerVolumeIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AudioPlayerVolumeIndicatorOpenNode(
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
    if (widgetType != NType.audioPlayerVolumeIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AudioPlayerVolumeIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of AudioPlayerVolumeIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AudioPlayerVolumeIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// badge
@nodeDeclaration
@NodeKey(NType.badge)
class BadgeOpenNode extends CNode {
  BadgeOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.badge,
          name: name ?? 'Badge',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.badge),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.badge),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.badge),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      BadgeOpenNode(
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
    if (widgetType != NType.badge) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return BadgeOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of BadgeOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'BadgeOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// barcode
@nodeDeclaration
@NodeKey(NType.barcode)
class BarcodeOpenNode extends CNode {
  BarcodeOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.barcode,
          name: name ?? 'Barcode',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.barcode),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.barcode),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.barcode),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      BarcodeOpenNode(
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
    if (widgetType != NType.barcode) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return BarcodeOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of BarcodeOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'BarcodeOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// bottombaritem
@nodeDeclaration
@NodeKey(NType.bottombaritem)
class BottomBarItemOpenNode extends CNode {
  BottomBarItemOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.bottombaritem,
          name: name ?? 'BottomBar Item',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.bottombaritem),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bottombaritem),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bottombaritem),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      BottomBarItemOpenNode(
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
    if (widgetType != NType.bottombaritem) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return BottomBarItemOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of BottomBarItemOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'BottomBarItemOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// bouncingWidget
@nodeDeclaration
@NodeKey(NType.bouncingWidget)
class BouncingWidgetOpenNode extends CNode {
  BouncingWidgetOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.bouncingWidget,
          name: name ?? 'Bouncing Widget',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.bouncingWidget),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bouncingWidget),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bouncingWidget),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      BouncingWidgetOpenNode(
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
    if (widgetType != NType.bouncingWidget) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return BouncingWidgetOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of BouncingWidgetOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'BouncingWidgetOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// button
@nodeDeclaration
@NodeKey(NType.button)
class ButtonOpenNode extends CNode {
  ButtonOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.button,
          name: name ?? 'Button',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.button),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.button),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.button),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ButtonOpenNode(
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
    if (widgetType != NType.button) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ButtonOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ButtonOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ButtonOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// calendar
@nodeDeclaration
@NodeKey(NType.calendar)
class CalendarOpenNode extends CNode {
  CalendarOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.calendar,
          name: name ?? 'Calendar',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.calendar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.calendar),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.calendar),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CalendarOpenNode(
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
    if (widgetType != NType.calendar) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CalendarOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CalendarOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CalendarOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// calendarV2
@nodeDeclaration
@NodeKey(NType.calendarV2)
class CalendarV2OpenNode extends CNode {
  CalendarV2OpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.calendarV2,
          name: name ?? 'Calendar V2',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.calendarV2),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.calendarV2),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.calendarV2),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CalendarV2OpenNode(
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
    if (widgetType != NType.calendarV2) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CalendarV2OpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CalendarV2OpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CalendarV2OpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// card
@nodeDeclaration
@NodeKey(NType.card)
class CardOpenNode extends CNode {
  CardOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.card,
          name: name ?? 'Card',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.card),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.card),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.card),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CardOpenNode(
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
    if (widgetType != NType.card) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CardOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CardOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CardOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// center
@nodeDeclaration
@NodeKey(NType.center)
class CenterOpenNode extends CNode {
  CenterOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.center,
          name: name ?? 'Center',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.center),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.center),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.center),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CenterOpenNode(
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
    if (widgetType != NType.center) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CenterOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CenterOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CenterOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// checkbox
@nodeDeclaration
@NodeKey(NType.checkbox)
class CheckboxOpenNode extends CNode {
  CheckboxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.checkbox,
          name: name ?? 'Checkbox',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.checkbox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.checkbox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.checkbox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CheckboxOpenNode(
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
    if (widgetType != NType.checkbox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CheckboxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CheckboxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CheckboxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// circularProgressIndicator
@nodeDeclaration
@NodeKey(NType.circularProgressIndicator)
class CircularProgressIndicatorOpenNode extends CNode {
  CircularProgressIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.circularProgressIndicator,
          name: name ?? 'Circular Progress Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.circularProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.circularProgressIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.circularProgressIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CircularProgressIndicatorOpenNode(
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
    if (widgetType != NType.circularProgressIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CircularProgressIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CircularProgressIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CircularProgressIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// clipOval
@nodeDeclaration
@NodeKey(NType.clipOval)
class ClipOvalOpenNode extends CNode {
  ClipOvalOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.clipOval,
          name: name ?? 'Clip Oval',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.clipOval),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipOval),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipOval),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ClipOvalOpenNode(
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
    if (widgetType != NType.clipOval) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ClipOvalOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ClipOvalOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ClipOvalOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// clipRect
@nodeDeclaration
@NodeKey(NType.clipRect)
class ClipRectOpenNode extends CNode {
  ClipRectOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.clipRect,
          name: name ?? 'Clip Rect',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.clipRect),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipRect),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipRect),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ClipRectOpenNode(
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
    if (widgetType != NType.clipRect) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ClipRectOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ClipRectOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ClipRectOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// clipRoundedRect
@nodeDeclaration
@NodeKey(NType.clipRoundedRect)
class ClipRRectOpenNode extends CNode {
  ClipRRectOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.clipRoundedRect,
          name: name ?? 'Clip RRect',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.clipRoundedRect),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.clipRoundedRect),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.clipRoundedRect),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ClipRRectOpenNode(
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
    if (widgetType != NType.clipRoundedRect) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ClipRRectOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ClipRRectOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ClipRRectOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// column
@nodeDeclaration
@NodeKey(NType.column)
class ColumnOpenNode extends CNode {
  ColumnOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.column,
          name: name ?? 'Column',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.column),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.column),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.column),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ColumnOpenNode(
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
    if (widgetType != NType.column) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ColumnOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ColumnOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ColumnOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// component
@nodeDeclaration
@NodeKey(NType.component)
class ComponentOpenNode extends CNode {
  ComponentOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.component,
          name: name ?? 'Component',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.component),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.component),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.component),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ComponentOpenNode(
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
    if (widgetType != NType.component) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ComponentOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ComponentOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ComponentOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// row
@nodeDeclaration
@NodeKey(NType.row)
class RowOpenNode extends CNode {
  RowOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.row,
          name: name ?? 'Row',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.row),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.row),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.row),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RowOpenNode(
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
    if (widgetType != NType.row) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RowOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of RowOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RowOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// concentricPageView
@nodeDeclaration
@NodeKey(NType.concentricPageView)
class ConcentricPageViewOpenNode extends CNode {
  ConcentricPageViewOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.concentricPageView,
          name: name ?? 'Concentric Page View',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.concentricPageView),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.concentricPageView),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.concentricPageView),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ConcentricPageViewOpenNode(
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
    if (widgetType != NType.concentricPageView) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ConcentricPageViewOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of ConcentricPageViewOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ConcentricPageViewOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// condition
@nodeDeclaration
@NodeKey(NType.condition)
class ConditionOpenNode extends CNode {
  ConditionOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.condition,
          name: name ?? 'Condition',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.condition),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.condition),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.condition),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ConditionOpenNode(
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
    if (widgetType != NType.condition) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ConditionOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ConditionOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ConditionOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// container
@nodeDeclaration
@NodeKey(NType.container)
class ContainerOpenNode extends CNode {
  ContainerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.container,
          name: name ?? 'Container',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.container),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.container),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.container),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ContainerOpenNode(
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
    if (widgetType != NType.container) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ContainerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ContainerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ContainerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// constrainedBox
@nodeDeclaration
@NodeKey(NType.constrainedBox)
class ConstrainedBoxOpenNode extends CNode {
  ConstrainedBoxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.constrainedBox,
          name: name ?? 'Constrained Box',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.constrainedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.constrainedBox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.constrainedBox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ConstrainedBoxOpenNode(
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
    if (widgetType != NType.constrainedBox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ConstrainedBoxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of ConstrainedBoxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ConstrainedBoxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// limitedBox
@nodeDeclaration
@NodeKey(NType.limitedBox)
class LimitedBoxOpenNode extends CNode {
  LimitedBoxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.limitedBox,
          name: name ?? 'Limited Box',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.limitedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.limitedBox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.limitedBox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LimitedBoxOpenNode(
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
    if (widgetType != NType.limitedBox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LimitedBoxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of LimitedBoxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LimitedBoxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// sizedBox
@nodeDeclaration
@NodeKey(NType.sizedBox)
class SizedBoxOpenNode extends CNode {
  SizedBoxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.sizedBox,
          name: name ?? 'Sized Box',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.sizedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.sizedBox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.sizedBox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SizedBoxOpenNode(
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
    if (widgetType != NType.sizedBox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SizedBoxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of SizedBoxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SizedBoxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// decoratedBox
@nodeDeclaration
@NodeKey(NType.decoratedBox)
class DecoratedBoxOpenNode extends CNode {
  DecoratedBoxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.decoratedBox,
          name: name ?? 'Decorated Box',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.decoratedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.decoratedBox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.decoratedBox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      DecoratedBoxOpenNode(
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
    if (widgetType != NType.decoratedBox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return DecoratedBoxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of DecoratedBoxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'DecoratedBoxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// image
@nodeDeclaration
@NodeKey(NType.image)
class ImageOpenNode extends CNode {
  ImageOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.image,
          name: name ?? 'Image',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.image),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.image),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.image),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ImageOpenNode(
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
    if (widgetType != NType.image) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ImageOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ImageOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ImageOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cupertinoPicker
@nodeDeclaration
@NodeKey(NType.cupertinoPicker)
class CupertinoPickerOpenNode extends CNode {
  CupertinoPickerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cupertinoPicker,
          name: name ?? 'Cupertino Picker',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoPicker),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cupertinoPicker),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cupertinoPicker),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CupertinoPickerOpenNode(
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
    if (widgetType != NType.cupertinoPicker) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CupertinoPickerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CupertinoPickerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CupertinoPickerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cupertinoSegmentedControl
@nodeDeclaration
@NodeKey(NType.cupertinoSegmentedControl)
class CupertinoSegmentedControlOpenNode extends CNode {
  CupertinoSegmentedControlOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cupertinoSegmentedControl,
          name: name ?? 'Cupertino Segmented Control',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoSegmentedControl),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.cupertinoSegmentedControl),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.cupertinoSegmentedControl),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CupertinoSegmentedControlOpenNode(
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
    if (widgetType != NType.cupertinoSegmentedControl) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CupertinoSegmentedControlOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CupertinoSegmentedControlOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CupertinoSegmentedControlOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cupertinoSwitch
@nodeDeclaration
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchOpenNode extends CNode {
  CupertinoSwitchOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cupertinoSwitch,
          name: name ?? 'Cupertino Switch',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cupertinoSwitch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cupertinoSwitch),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cupertinoSwitch),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CupertinoSwitchOpenNode(
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
    if (widgetType != NType.cupertinoSwitch) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CupertinoSwitchOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CupertinoSwitchOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CupertinoSwitchOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// divider
@nodeDeclaration
@NodeKey(NType.divider)
class DividerOpenNode extends CNode {
  DividerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.divider,
          name: name ?? 'Divider',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.divider),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.divider),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.divider),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      DividerOpenNode(
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
    if (widgetType != NType.divider) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return DividerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of DividerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'DividerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// dotsIndicator
@nodeDeclaration
@NodeKey(NType.dotsIndicator)
class DotsIndicatorOpenNode extends CNode {
  DotsIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.dotsIndicator,
          name: name ?? 'Dots Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.dotsIndicator),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.dotsIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.dotsIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      DotsIndicatorOpenNode(
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
    if (widgetType != NType.dotsIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return DotsIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of DotsIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'DotsIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// expanded
@nodeDeclaration
@NodeKey(NType.expanded)
class ExpandedOpenNode extends CNode {
  ExpandedOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.expanded,
          name: name ?? 'Expanded',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.expanded),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.expanded),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.expanded),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ExpandedOpenNode(
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
    if (widgetType != NType.expanded) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ExpandedOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ExpandedOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ExpandedOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// adMobBanner
@nodeDeclaration
@NodeKey(NType.adMobBanner)
class AdMobBannerOpenNode extends CNode {
  AdMobBannerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.adMobBanner,
          name: name ?? 'AdMob Banner',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.adMobBanner),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.adMobBanner),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.adMobBanner),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AdMobBannerOpenNode(
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
    if (widgetType != NType.adMobBanner) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AdMobBannerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of AdMobBannerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AdMobBannerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// googleMaps
@nodeDeclaration
@NodeKey(NType.googleMaps)
class GoogleMapsOpenNode extends CNode {
  GoogleMapsOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.googleMaps,
          name: name ?? 'Google Maps',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.googleMaps),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.googleMaps),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.googleMaps),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      GoogleMapsOpenNode(
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
    if (widgetType != NType.googleMaps) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return GoogleMapsOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of GoogleMapsOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'GoogleMapsOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// gridView
@nodeDeclaration
@NodeKey(NType.gridView)
class GridViewOpenNode extends CNode {
  GridViewOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.gridView,
          name: name ?? 'Grid View',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.gridView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.gridView),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.gridView),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      GridViewOpenNode(
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
    if (widgetType != NType.gridView) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return GridViewOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of GridViewOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'GridViewOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// gridViewBuilder
@nodeDeclaration
@NodeKey(NType.gridViewBuilder)
class GridViewBuilderOpenNode extends CNode {
  GridViewBuilderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.gridViewBuilder,
          name: name ?? 'Grid View Builder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.gridViewBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.gridViewBuilder),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.gridViewBuilder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      GridViewBuilderOpenNode(
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
    if (widgetType != NType.gridViewBuilder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return GridViewBuilderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of GridViewBuilderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'GridViewBuilderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// hero
@nodeDeclaration
@NodeKey(NType.hero)
class HeroOpenNode extends CNode {
  HeroOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.hero,
          name: name ?? 'Hero',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.hero),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.hero),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.hero),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      HeroOpenNode(
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
    if (widgetType != NType.hero) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return HeroOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of HeroOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'HeroOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// icon
@nodeDeclaration
@NodeKey(NType.icon)
class IconOpenNode extends CNode {
  IconOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.icon,
          name: name ?? 'Icon',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.icon),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.icon),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.icon),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      IconOpenNode(
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
    if (widgetType != NType.icon) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return IconOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of IconOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'IconOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// ignorePointer
@nodeDeclaration
@NodeKey(NType.ignorePointer)
class IgnorePointerOpenNode extends CNode {
  IgnorePointerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.ignorePointer,
          name: name ?? 'Ignore Pointer',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.ignorePointer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.ignorePointer),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.ignorePointer),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      IgnorePointerOpenNode(
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
    if (widgetType != NType.ignorePointer) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return IgnorePointerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of IgnorePointerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'IgnorePointerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// indexedStack
@nodeDeclaration
@NodeKey(NType.indexedStack)
class IndexedStackOpenNode extends CNode {
  IndexedStackOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.indexedStack,
          name: name ?? 'Indexed Stack',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.indexedStack),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.indexedStack),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.indexedStack),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      IndexedStackOpenNode(
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
    if (widgetType != NType.indexedStack) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return IndexedStackOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of IndexedStackOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'IndexedStackOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// linearProgressIndicator
@nodeDeclaration
@NodeKey(NType.linearProgressIndicator)
class LinearProgressIndicatorOpenNode extends CNode {
  LinearProgressIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.linearProgressIndicator,
          name: name ?? 'Linear Progress Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.linearProgressIndicator),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.linearProgressIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse()
              .getByType(NType.linearProgressIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LinearProgressIndicatorOpenNode(
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
    if (widgetType != NType.linearProgressIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LinearProgressIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LinearProgressIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LinearProgressIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// liquidSwipe
@nodeDeclaration
@NodeKey(NType.liquidSwipe)
class LiquidSwipeOpenNode extends CNode {
  LiquidSwipeOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.liquidSwipe,
          name: name ?? 'Liquid Swipe',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.liquidSwipe),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.liquidSwipe),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.liquidSwipe),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LiquidSwipeOpenNode(
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
    if (widgetType != NType.liquidSwipe) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LiquidSwipeOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of LiquidSwipeOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LiquidSwipeOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// listTile
@nodeDeclaration
@NodeKey(NType.listTile)
class ListTileOpenNode extends CNode {
  ListTileOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.listTile,
          name: name ?? 'List Tile',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.listTile),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listTile),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listTile),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ListTileOpenNode(
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
    if (widgetType != NType.listTile) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ListTileOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ListTileOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ListTileOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// listView
@nodeDeclaration
@NodeKey(NType.listView)
class ListViewOpenNode extends CNode {
  ListViewOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.listView,
          name: name ?? 'List View',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.listView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listView),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listView),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ListViewOpenNode(
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
    if (widgetType != NType.listView) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ListViewOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ListViewOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ListViewOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// listViewBuilder
@nodeDeclaration
@NodeKey(NType.listViewBuilder)
class ListViewBuilderOpenNode extends CNode {
  ListViewBuilderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.listViewBuilder,
          name: name ?? 'List View Builder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.listViewBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.listViewBuilder),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.listViewBuilder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ListViewBuilderOpenNode(
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
    if (widgetType != NType.listViewBuilder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ListViewBuilderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of ListViewBuilderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ListViewBuilderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// lottie
@nodeDeclaration
@NodeKey(NType.lottie)
class LottieOpenNode extends CNode {
  LottieOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.lottie,
          name: name ?? 'Lottie',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.lottie),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.lottie),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.lottie),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LottieOpenNode(
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
    if (widgetType != NType.lottie) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LottieOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of LottieOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LottieOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// map
@nodeDeclaration
@NodeKey(NType.map)
class MapOpenNode extends CNode {
  MapOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.map,
          name: name ?? 'Map',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.map),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.map),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.map),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      MapOpenNode(
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
    if (widgetType != NType.map) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return MapOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of MapOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'MapOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// marker
@nodeDeclaration
@NodeKey(NType.marker)
class MarkerOpenNode extends CNode {
  MarkerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.marker,
          name: name ?? 'Marker',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.marker),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.marker),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.marker),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      MarkerOpenNode(
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
    if (widgetType != NType.marker) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return MarkerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of MarkerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'MarkerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// opacity
@nodeDeclaration
@NodeKey(NType.opacity)
class OpacityOpenNode extends CNode {
  OpacityOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.opacity,
          name: name ?? 'Opacity',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.opacity),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.opacity),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.opacity),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      OpacityOpenNode(
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
    if (widgetType != NType.opacity) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return OpacityOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of OpacityOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'OpacityOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// padding
@nodeDeclaration
@NodeKey(NType.padding)
class PaddingOpenNode extends CNode {
  PaddingOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.padding,
          name: name ?? 'Padding',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.padding),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.padding),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.padding),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      PaddingOpenNode(
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
    if (widgetType != NType.padding) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return PaddingOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of PaddingOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'PaddingOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// pageView
@nodeDeclaration
@NodeKey(NType.pageView)
class PageViewOpenNode extends CNode {
  PageViewOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.pageView,
          name: name ?? 'Page View',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.pageView),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.pageView),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.pageView),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      PageViewOpenNode(
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
    if (widgetType != NType.pageView) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return PageViewOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of PageViewOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'PageViewOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// placeholder
@nodeDeclaration
@NodeKey(NType.placeholder)
class PlaceholderOpenNode extends CNode {
  PlaceholderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.placeholder,
          name: name ?? 'Placeholder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.placeholder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.placeholder),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.placeholder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      PlaceholderOpenNode(
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
    if (widgetType != NType.placeholder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return PlaceholderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of PlaceholderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'PlaceholderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// positioned
@nodeDeclaration
@NodeKey(NType.positioned)
class PositionedOpenNode extends CNode {
  PositionedOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.positioned,
          name: name ?? 'Positioned',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.positioned),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.positioned),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.positioned),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      PositionedOpenNode(
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
    if (widgetType != NType.positioned) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return PositionedOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of PositionedOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'PositionedOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// safeArea
@nodeDeclaration
@NodeKey(NType.safeArea)
class SafeAreaOpenNode extends CNode {
  SafeAreaOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.safeArea,
          name: name ?? 'Safe Area',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.safeArea),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.safeArea),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.safeArea),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SafeAreaOpenNode(
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
    if (widgetType != NType.safeArea) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SafeAreaOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of SafeAreaOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SafeAreaOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// qrScanner
@nodeDeclaration
@NodeKey(NType.qrScanner)
class QRScannerOpenNode extends CNode {
  QRScannerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.qrScanner,
          name: name ?? 'QR Scanner',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.qrScanner),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.qrScanner),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.qrScanner),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      QRScannerOpenNode(
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
    if (widgetType != NType.qrScanner) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return QRScannerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of QRScannerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'QRScannerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// qrCode
@nodeDeclaration
@NodeKey(NType.qrCode)
class QRCodeOpenNode extends CNode {
  QRCodeOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.qrCode,
          name: name ?? 'QR Code',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.qrCode),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.qrCode),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.qrCode),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      QRCodeOpenNode(
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
    if (widgetType != NType.qrCode) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return QRCodeOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of QRCodeOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'QRCodeOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// radio
@nodeDeclaration
@NodeKey(NType.radio)
class RadioOpenNode extends CNode {
  RadioOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.radio,
          name: name ?? 'Radio',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.radio),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.radio),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.radio),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RadioOpenNode(
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
    if (widgetType != NType.radio) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RadioOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of RadioOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RadioOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// refreshIndicator
@nodeDeclaration
@NodeKey(NType.refreshIndicator)
class RefreshIndicatorOpenNode extends CNode {
  RefreshIndicatorOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.refreshIndicator,
          name: name ?? 'Refresh Indicator',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.refreshIndicator),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.refreshIndicator),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.refreshIndicator),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RefreshIndicatorOpenNode(
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
    if (widgetType != NType.refreshIndicator) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RefreshIndicatorOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of RefreshIndicatorOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RefreshIndicatorOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// responsiveCondition
@nodeDeclaration
@NodeKey(NType.responsiveCondition)
class ResponsiveConditionOpenNode extends CNode {
  ResponsiveConditionOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.responsiveCondition,
          name: name ?? 'Responsive Condition',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.responsiveCondition),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.responsiveCondition),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.responsiveCondition),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ResponsiveConditionOpenNode(
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
    if (widgetType != NType.responsiveCondition) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ResponsiveConditionOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of ResponsiveConditionOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ResponsiveConditionOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// rotatedBox
@nodeDeclaration
@NodeKey(NType.rotatedBox)
class RotatedBoxOpenNode extends CNode {
  RotatedBoxOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.rotatedBox,
          name: name ?? 'Rotated Box',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.rotatedBox),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.rotatedBox),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.rotatedBox),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RotatedBoxOpenNode(
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
    if (widgetType != NType.rotatedBox) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RotatedBoxOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of RotatedBoxOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RotatedBoxOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// scaffold
@nodeDeclaration
@NodeKey(NType.scaffold)
class ScaffoldOpenNode extends CNode {
  ScaffoldOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.scaffold,
          name: name ?? 'Scaffold',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.scaffold),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.scaffold),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.scaffold),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ScaffoldOpenNode(
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
    if (widgetType != NType.scaffold) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ScaffoldOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ScaffoldOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ScaffoldOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// spacer
@nodeDeclaration
@NodeKey(NType.spacer)
class SpacerOpenNode extends CNode {
  SpacerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.spacer,
          name: name ?? 'Spacer',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.spacer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.spacer),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.spacer),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SpacerOpenNode(
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
    if (widgetType != NType.spacer) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SpacerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of SpacerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SpacerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// stack
@nodeDeclaration
@NodeKey(NType.stack)
class StackOpenNode extends CNode {
  StackOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.stack,
          name: name ?? 'Stack',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.stack),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.stack),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.stack),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      StackOpenNode(
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
    if (widgetType != NType.stack) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return StackOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of StackOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'StackOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// tcard
@nodeDeclaration
@NodeKey(NType.tcard)
class TCardOpenNode extends CNode {
  TCardOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.tcard,
          name: name ?? 'TCard',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tcard),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tcard),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tcard),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      TCardOpenNode(
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
    if (widgetType != NType.tcard) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return TCardOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of TCardOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'TCardOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// tcardBuilder
@nodeDeclaration
@NodeKey(NType.tcardBuilder)
class TCardBuilderOpenNode extends CNode {
  TCardBuilderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.tcardBuilder,
          name: name ?? 'TCard Builder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tcardBuilder),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tcardBuilder),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tcardBuilder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      TCardBuilderOpenNode(
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
    if (widgetType != NType.tcardBuilder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return TCardBuilderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of TCardBuilderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'TCardBuilderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// text
@nodeDeclaration
@NodeKey(NType.text)
class TextOpenNode extends CNode {
  TextOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.text,
          name: name ?? 'Text',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.text),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.text),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.text),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      TextOpenNode(
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
    if (widgetType != NType.text) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return TextOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of TextOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'TextOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// textField
@nodeDeclaration
@NodeKey(NType.textField)
class TextFieldOpenNode extends CNode {
  TextFieldOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.textField,
          name: name ?? 'TextField',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.textField),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.textField),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.textField),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      TextFieldOpenNode(
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
    if (widgetType != NType.textField) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return TextFieldOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of TextFieldOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'TextFieldOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// tooltip
@nodeDeclaration
@NodeKey(NType.tooltip)
class TooltipOpenNode extends CNode {
  TooltipOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.tooltip,
          name: name ?? 'Tooltip',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.tooltip),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.tooltip),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.tooltip),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      TooltipOpenNode(
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
    if (widgetType != NType.tooltip) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return TooltipOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of TooltipOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'TooltipOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// video
@nodeDeclaration
@NodeKey(NType.video)
class VideoOpenNode extends CNode {
  VideoOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.video,
          name: name ?? 'Video',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.video),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.video),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.video),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      VideoOpenNode(
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
    if (widgetType != NType.video) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return VideoOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of VideoOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'VideoOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// visibility
@nodeDeclaration
@NodeKey(NType.visibility)
class VisibilityOpenNode extends CNode {
  VisibilityOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.visibility,
          name: name ?? 'Visibility',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.visibility),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.visibility),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.visibility),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      VisibilityOpenNode(
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
    if (widgetType != NType.visibility) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return VisibilityOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of VisibilityOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'VisibilityOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// webview
@nodeDeclaration
@NodeKey(NType.webview)
class WebviewOpenNode extends CNode {
  WebviewOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.webview,
          name: name ?? 'Webview',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.webview),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.webview),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.webview),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      WebviewOpenNode(
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
    if (widgetType != NType.webview) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return WebviewOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of WebviewOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'WebviewOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// wrap
@nodeDeclaration
@NodeKey(NType.wrap)
class WrapOpenNode extends CNode {
  WrapOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.wrap,
          name: name ?? 'Wrap',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.wrap),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.wrap),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.wrap),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      WrapOpenNode(
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
    if (widgetType != NType.wrap) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return WrapOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of WrapOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'WrapOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// animationConfigGrid
@nodeDeclaration
@NodeKey(NType.animationConfigGrid)
class AnimationConfigGridOpenNode extends CNode {
  AnimationConfigGridOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.animationConfigGrid,
          name: name ?? 'Animation Config Grid',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.animationConfigGrid),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.animationConfigGrid),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.animationConfigGrid),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AnimationConfigGridOpenNode(
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
    if (widgetType != NType.animationConfigGrid) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AnimationConfigGridOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of AnimationConfigGridOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AnimationConfigGridOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// animationConfigList
@nodeDeclaration
@NodeKey(NType.animationConfigList)
class AnimationConfigListOpenNode extends CNode {
  AnimationConfigListOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.animationConfigList,
          name: name ?? 'Animation Config List',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.animationConfigList),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.animationConfigList),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.animationConfigList),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AnimationConfigListOpenNode(
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
    if (widgetType != NType.animationConfigList) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AnimationConfigListOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of AnimationConfigListOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AnimationConfigListOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// fadeInAnimation
@nodeDeclaration
@NodeKey(NType.fadeInAnimation)
class FadeInAnimationOpenNode extends CNode {
  FadeInAnimationOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.fadeInAnimation,
          name: name ?? 'Fade In Animation',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.fadeInAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.fadeInAnimation),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.fadeInAnimation),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      FadeInAnimationOpenNode(
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
    if (widgetType != NType.fadeInAnimation) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return FadeInAnimationOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of FadeInAnimationOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'FadeInAnimationOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// scaleAnimation
@nodeDeclaration
@NodeKey(NType.scaleAnimation)
class ScaleAnimationOpenNode extends CNode {
  ScaleAnimationOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.scaleAnimation,
          name: name ?? 'Scale Animation',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.scaleAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.scaleAnimation),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.scaleAnimation),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ScaleAnimationOpenNode(
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
    if (widgetType != NType.scaleAnimation) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ScaleAnimationOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of ScaleAnimationOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ScaleAnimationOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// slideAnimation
@nodeDeclaration
@NodeKey(NType.slideAnimation)
class SlideAnimationOpenNode extends CNode {
  SlideAnimationOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.slideAnimation,
          name: name ?? 'Slide Animation',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.slideAnimation),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.slideAnimation),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.slideAnimation),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SlideAnimationOpenNode(
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
    if (widgetType != NType.slideAnimation) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SlideAnimationOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of SlideAnimationOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SlideAnimationOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// apiCallsFetch
@nodeDeclaration
@NodeKey(NType.apiCallsFetch)
class ApiCallsFetchOpenNode extends CNode {
  ApiCallsFetchOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.apiCallsFetch,
          name: name ?? 'Api Calls Fetch',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.apiCallsFetch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.apiCallsFetch),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.apiCallsFetch),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      ApiCallsFetchOpenNode(
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
    if (widgetType != NType.apiCallsFetch) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return ApiCallsFetchOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of ApiCallsFetchOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'ApiCallsFetchOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithApple
@nodeDeclaration
@NodeKey(NType.loginWithApple)
class LoginWithAppleOpenNode extends CNode {
  LoginWithAppleOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithApple,
          name: name ?? 'Login With Apple',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithApple),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithApple),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithApple),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithAppleOpenNode(
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
    if (widgetType != NType.loginWithApple) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithAppleOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithAppleOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithAppleOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithFacebook
@nodeDeclaration
@NodeKey(NType.loginWithFacebook)
class LoginWithFacebookOpenNode extends CNode {
  LoginWithFacebookOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithFacebook,
          name: name ?? 'Login With Facebook',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithFacebook),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithFacebook),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithFacebook),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithFacebookOpenNode(
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
    if (widgetType != NType.loginWithFacebook) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithFacebookOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithFacebookOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithFacebookOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithGoogle
@nodeDeclaration
@NodeKey(NType.loginWithGoogle)
class LoginWithGoogleOpenNode extends CNode {
  LoginWithGoogleOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithGoogle,
          name: name ?? 'Login With Google',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGoogle),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGoogle),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGoogle),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithGoogleOpenNode(
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
    if (widgetType != NType.loginWithGoogle) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithGoogleOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithGoogleOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithGoogleOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithTwitter
@nodeDeclaration
@NodeKey(NType.loginWithTwitter)
class LoginWithTwitterOpenNode extends CNode {
  LoginWithTwitterOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithTwitter,
          name: name ?? 'Login With Twitter',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithTwitter),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithTwitter),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithTwitter),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithTwitterOpenNode(
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
    if (widgetType != NType.loginWithTwitter) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithTwitterOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithTwitterOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithTwitterOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithGitHub
@nodeDeclaration
@NodeKey(NType.loginWithGitHub)
class LoginWithGithubOpenNode extends CNode {
  LoginWithGithubOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithGitHub,
          name: name ?? 'Login With Github',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGitHub),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGitHub),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGitHub),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithGithubOpenNode(
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
    if (widgetType != NType.loginWithGitHub) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithGithubOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithGithubOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithGithubOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithMicrosoft
@nodeDeclaration
@NodeKey(NType.loginWithMicrosoft)
class LoginWithMicrosoftOpenNode extends CNode {
  LoginWithMicrosoftOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithMicrosoft,
          name: name ?? 'Login With Microsoft',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithMicrosoft),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.loginWithMicrosoft),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithMicrosoft),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithMicrosoftOpenNode(
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
    if (widgetType != NType.loginWithMicrosoft) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithMicrosoftOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithMicrosoftOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithMicrosoftOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithLinkedin
@nodeDeclaration
@NodeKey(NType.loginWithLinkedin)
class LoginWithLinkedinOpenNode extends CNode {
  LoginWithLinkedinOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithLinkedin,
          name: name ?? 'Login With Linkedin',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithLinkedin),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithLinkedin),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithLinkedin),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithLinkedinOpenNode(
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
    if (widgetType != NType.loginWithLinkedin) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithLinkedinOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithLinkedinOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithLinkedinOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithBitBucket
@nodeDeclaration
@NodeKey(NType.loginWithBitBucket)
class LoginWithBitbucketOpenNode extends CNode {
  LoginWithBitbucketOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithBitBucket,
          name: name ?? 'Login With Bitbucket',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithBitBucket),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.loginWithBitBucket),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.loginWithBitBucket),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithBitbucketOpenNode(
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
    if (widgetType != NType.loginWithBitBucket) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithBitbucketOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithBitbucketOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithBitbucketOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithDiscord
@nodeDeclaration
@NodeKey(NType.loginWithDiscord)
class LoginWithDiscordOpenNode extends CNode {
  LoginWithDiscordOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithDiscord,
          name: name ?? 'Login With Discord',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithDiscord),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithDiscord),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithDiscord),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithDiscordOpenNode(
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
    if (widgetType != NType.loginWithDiscord) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithDiscordOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithDiscordOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithDiscordOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithTwitch
@nodeDeclaration
@NodeKey(NType.loginWithTwitch)
class LoginWithTwitchOpenNode extends CNode {
  LoginWithTwitchOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithTwitch,
          name: name ?? 'Login With Twitch',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithTwitch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithTwitch),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithTwitch),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithTwitchOpenNode(
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
    if (widgetType != NType.loginWithTwitch) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithTwitchOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithTwitchOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithTwitchOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// loginWithGitlab
@nodeDeclaration
@NodeKey(NType.loginWithGitlab)
class LoginWithGitlabOpenNode extends CNode {
  LoginWithGitlabOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.loginWithGitlab,
          name: name ?? 'Login With Gitlab',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.loginWithGitlab),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.loginWithGitlab),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.loginWithGitlab),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      LoginWithGitlabOpenNode(
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
    if (widgetType != NType.loginWithGitlab) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return LoginWithGitlabOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of LoginWithGitlabOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'LoginWithGitlabOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// httpRequest
@nodeDeclaration
@NodeKey(NType.httpRequest)
class HttpRequestOpenNode extends CNode {
  HttpRequestOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.httpRequest,
          name: name ?? 'Http Request',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.httpRequest),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.httpRequest),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.httpRequest),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      HttpRequestOpenNode(
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
    if (widgetType != NType.httpRequest) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return HttpRequestOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of HttpRequestOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'HttpRequestOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// customHttpRequest
@nodeDeclaration
@NodeKey(NType.customHttpRequest)
class CustomHttpRequestOpenNode extends CNode {
  CustomHttpRequestOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.customHttpRequest,
          name: name ?? 'Custom Http Request',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.customHttpRequest),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.customHttpRequest),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.customHttpRequest),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CustomHttpRequestOpenNode(
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
    if (widgetType != NType.customHttpRequest) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CustomHttpRequestOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CustomHttpRequestOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CustomHttpRequestOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// appBar
@nodeDeclaration
@NodeKey(NType.appBar)
class AppBarOpenNode extends CNode {
  AppBarOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.appBar,
          name: name ?? 'App Bar',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.appBar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.appBar),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.appBar),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      AppBarOpenNode(
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
    if (widgetType != NType.appBar) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return AppBarOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of AppBarOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'AppBarOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// bottomBar
@nodeDeclaration
@NodeKey(NType.bottomBar)
class BottomBarOpenNode extends CNode {
  BottomBarOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.bottomBar,
          name: name ?? 'Bottom Bar',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.bottomBar),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.bottomBar),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.bottomBar),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      BottomBarOpenNode(
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
    if (widgetType != NType.bottomBar) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return BottomBarOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of BottomBarOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'BottomBarOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// drawer
@nodeDeclaration
@NodeKey(NType.drawer)
class DrawerOpenNode extends CNode {
  DrawerOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.drawer,
          name: name ?? 'Drawer',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.drawer),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.drawer),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.drawer),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      DrawerOpenNode(
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
    if (widgetType != NType.drawer) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return DrawerOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of DrawerOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'DrawerOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// qonversionProducts
@nodeDeclaration
@NodeKey(NType.qonversionProducts)
class QonversionProductsOpenNode extends CNode {
  QonversionProductsOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.qonversionProducts,
          name: name ?? 'Qonversion Products',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.qonversionProducts),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.qonversionProducts),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.qonversionProducts),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      QonversionProductsOpenNode(
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
    if (widgetType != NType.qonversionProducts) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return QonversionProductsOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of QonversionProductsOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'QonversionProductsOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// qonversionSubStatus
@nodeDeclaration
@NodeKey(NType.qonversionSubStatus)
class QonversionSubStatusOpenNode extends CNode {
  QonversionSubStatusOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.qonversionSubStatus,
          name: name ?? 'Qonversion Sub Status',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.qonversionSubStatus),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.qonversionSubStatus),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.qonversionSubStatus),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      QonversionSubStatusOpenNode(
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
    if (widgetType != NType.qonversionSubStatus) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return QonversionSubStatusOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of QonversionSubStatusOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'QonversionSubStatusOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// revenueCatProducts
@nodeDeclaration
@NodeKey(NType.revenueCatProducts)
class RevenueCatProductsOpenNode extends CNode {
  RevenueCatProductsOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.revenueCatProducts,
          name: name ?? 'RevenueCat Products',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.revenueCatProducts),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.revenueCatProducts),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.revenueCatProducts),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RevenueCatProductsOpenNode(
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
    if (widgetType != NType.revenueCatProducts) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RevenueCatProductsOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of RevenueCatProductsOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RevenueCatProductsOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// revenueCatSubStatus
@nodeDeclaration
@NodeKey(NType.revenueCatSubStatus)
class RevenueCatSubStatusOpenNode extends CNode {
  RevenueCatSubStatusOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.revenueCatSubStatus,
          name: name ?? 'RevenueCat Sub Status',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.revenueCatSubStatus),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.revenueCatSubStatus),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.revenueCatSubStatus),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      RevenueCatSubStatusOpenNode(
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
    if (widgetType != NType.revenueCatSubStatus) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return RevenueCatSubStatusOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of RevenueCatSubStatusOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'RevenueCatSubStatusOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// wrapper
@nodeDeclaration
@NodeKey(NType.wrapper)
class WrapperOpenNode extends CNode {
  WrapperOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.wrapper,
          name: name ?? 'Wrapper',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.wrapper),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.wrapper),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.wrapper),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      WrapperOpenNode(
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
    if (widgetType != NType.wrapper) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return WrapperOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of WrapperOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'WrapperOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// supabaseFutureBuilder
@nodeDeclaration
@NodeKey(NType.supabaseFutureBuilder)
class SupabaseFutureBuilderOpenNode extends CNode {
  SupabaseFutureBuilderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.supabaseFutureBuilder,
          name: name ?? 'Supabase Future Builder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseFutureBuilder),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseFutureBuilder),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseFutureBuilder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SupabaseFutureBuilderOpenNode(
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
    if (widgetType != NType.supabaseFutureBuilder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SupabaseFutureBuilderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of SupabaseFutureBuilderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SupabaseFutureBuilderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// supabaseStreamBuilder
@nodeDeclaration
@NodeKey(NType.supabaseStreamBuilder)
class SupabaseStreamBuilderOpenNode extends CNode {
  SupabaseStreamBuilderOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.supabaseStreamBuilder,
          name: name ?? 'Supabase Stream Builder',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseStreamBuilder),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseStreamBuilder),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseStreamBuilder),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SupabaseStreamBuilderOpenNode(
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
    if (widgetType != NType.supabaseStreamBuilder) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SupabaseStreamBuilderOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of SupabaseStreamBuilderOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SupabaseStreamBuilderOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// supabaseLoggedUser
@nodeDeclaration
@NodeKey(NType.supabaseLoggedUser)
class SupabaseLoggedUserOpenNode extends CNode {
  SupabaseLoggedUserOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.supabaseLoggedUser,
          name: name ?? 'Supabase Logged User',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.supabaseLoggedUser),
          defaultAttributes: const DefaultAttributesParse()
              .getByType(NType.supabaseLoggedUser),
          attributes: attributes ?? {},
          adapter:
              const WidgetAdapterParse().getByType(NType.supabaseLoggedUser),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      SupabaseLoggedUserOpenNode(
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
    if (widgetType != NType.supabaseLoggedUser) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return SupabaseLoggedUserOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of SupabaseLoggedUserOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'SupabaseLoggedUserOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cmsCount
@nodeDeclaration
@NodeKey(NType.cmsCount)
class CMSCountOpenNode extends CNode {
  CMSCountOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cmsCount,
          name: name ?? 'CMS Count',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsCount),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsCount),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsCount),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CMSCountOpenNode(
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
    if (widgetType != NType.cmsCount) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CMSCountOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CMSCountOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CMSCountOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cmsCustomQuery
@nodeDeclaration
@NodeKey(NType.cmsCustomQuery)
class CMSCustomQueryOpenNode extends CNode {
  CMSCustomQueryOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cmsCustomQuery,
          name: name ?? 'CMS Custom Query',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState: const DynamicIntrinsicState()
              .getStateByType(NType.cmsCustomQuery),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsCustomQuery),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsCustomQuery),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CMSCustomQueryOpenNode(
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
    if (widgetType != NType.cmsCustomQuery) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CMSCustomQueryOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg =
          'Invalid fromJson method of CMSCustomQueryOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CMSCustomQueryOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cmsFetch
@nodeDeclaration
@NodeKey(NType.cmsFetch)
class CMSFetchOpenNode extends CNode {
  CMSFetchOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cmsFetch,
          name: name ?? 'CMS Fetch',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsFetch),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsFetch),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsFetch),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CMSFetchOpenNode(
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
    if (widgetType != NType.cmsFetch) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CMSFetchOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CMSFetchOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CMSFetchOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cmsStream
@nodeDeclaration
@NodeKey(NType.cmsStream)
class CMSStreamOpenNode extends CNode {
  CMSStreamOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cmsStream,
          name: name ?? 'CMS Stream',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsStream),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsStream),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsStream),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CMSStreamOpenNode(
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
    if (widgetType != NType.cmsStream) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CMSStreamOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CMSStreamOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CMSStreamOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}

/// cmsLoggedUser
@nodeDeclaration
@NodeKey(NType.cmsLoggedUser)
class CMSLoggedUserOpenNode extends CNode {
  CMSLoggedUserOpenNode({
    required final int id,
    final int? parent,
    final CNode? child,
    final List<CNode>? children,
    final String? name,
    final String? description,
    final FChildrenIds? childrenIds,
    final int? index,
    final Map<String, dynamic>? attributes,
  }) : super(
          id: id,
          type: NType.cmsLoggedUser,
          name: name ?? 'CMS Logged User',
          childrenIds: childrenIds ?? const FChildrenIds(ids: []),
          intrinsicState:
              const DynamicIntrinsicState().getStateByType(NType.cmsLoggedUser),
          defaultAttributes:
              const DefaultAttributesParse().getByType(NType.cmsLoggedUser),
          attributes: attributes ?? {},
          adapter: const WidgetAdapterParse().getByType(NType.cmsLoggedUser),
          parent: parent,
          description: description,
          index: index ?? 0,
          child: child,
          children: children,
        );

  @override
  CNode copyWith({
    int? id,
    int? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  }) =>
      CMSLoggedUserOpenNode(
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
    if (widgetType != NType.cmsLoggedUser) {
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
          attributes[entry.key] =
              const DynamicAttributes().fromJson(entry.key, entry.value);
        }
      }

      return CMSLoggedUserOpenNode(
        id: id,
        name: name,
        description: description,
        childrenIds: ids,
        attributes: attributes,
      );
    } catch (e) {
      final msg = 'Invalid fromJson method of CMSLoggedUserOpenNode, error: $e';
      Logger.printError(msg);
      throw Exception(msg);
    }
  }

  @override
  String toString() =>
      'CMSLoggedUserOpenNode { id: $id, name: $name, type: $type, childrenIds: $childrenIds, attributes: $getAttributes, parent: $parent, index: $index, child: $child, children: $children }';
}
