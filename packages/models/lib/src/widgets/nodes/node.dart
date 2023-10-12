import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// CNode is the mother of all sub node classes.
/// CNode = Custom Node.
/// Any node in Teta is a sub class of CNode
@immutable
abstract class CNode extends Equatable {
  /// Constructor
  CNode({
    required this.type,
    required this.parentID,
    required this.intrinsicState,
    required final DefaultNodeAttributes defaultAttributes,
    required final NodeAttributes attributes,
    required final RectProperties rectProperties,
    required this.adapter,
    required this.updatedAt,
    required this.pageID,
    this.name,
    this.description,
    this.id = '',
    this.stabilID,
    this.child,
    this.children = const [],
    this.childOrder = 0,
    this.componentID,
    this.componentChildren = const [],
    this.isLocked = false,
  })  : _defaultAttributes = defaultAttributes,
        _attributes = attributes,
        _rectProperties = rectProperties,
        _attributesNotifier = ValueNotifier(attributes),
        childNotifier = ValueNotifier(child),
        childrenNotifier = ValueNotifier(children);

  final Map<String, dynamic> _globalDefaultAttributes = {
    DBKeys.padding: const FMargins(
      margins: [0, 0, 0, 0],
      marginsTablet: null,
      marginsDesktop: null,
    ),
    DBKeys.margins: const FMargins(
      margins: [0, 0, 0, 0],
      marginsTablet: null,
      marginsDesktop: null,
    ),
    DBKeys.minWidth: const FSizeRange(
      size: null,
      sizeTablet: null,
      sizeDesktop: null,
    ),
    DBKeys.maxWidth: const FSizeRange(
      size: null,
      sizeTablet: null,
      sizeDesktop: null,
    ),
    DBKeys.minHeight: const FSizeRange(
      size: null,
      sizeTablet: null,
      sizeDesktop: null,
    ),
    DBKeys.maxHeight: const FSizeRange(
      size: null,
      sizeTablet: null,
      sizeDesktop: null,
    ),
  };

  // all the children of the component
  final List<CNode> componentChildren;

  CNode addChildrenToComponent(
    PageID componentID,
    List<CNode> children,
  ) {
    return _addChildrenToComponent(this, componentID, children);
  }

  CNode _addChildrenToComponent(
      CNode currentNode, PageID componentID, List<CNode> children,
      {Set<PageID>? topComponentsIds}) {
    topComponentsIds ??= {};

    if (topComponentsIds.isEmpty) {
      topComponentsIds.add(currentNode.pageID!);
    }
    if (currentNode.pageID == componentID ||
        topComponentsIds.contains(currentNode.componentID)) {
      return currentNode;
    }

    topComponentsIds.add(currentNode.componentID!);

    List<CNode> newComponentChildren = List.from(currentNode.componentChildren);

    for (var child in children) {
      if (componentID == child.pageID &&
          componentID == currentNode.componentID) {
        if ((child.type == NType.component ||
                child.type == NType.teamComponent) &&
            !topComponentsIds.contains(child.componentID)) {
          if (!child.componentChildren.contains(currentNode)) {
            child = child._addChildrenToComponent(
              child,
              child.componentID!,
              children,
              topComponentsIds: topComponentsIds,
            );
          }
        }
        newComponentChildren.add(child);
      }
    }

    topComponentsIds.remove(currentNode.componentID);

    return currentNode.copyWith(componentChildren: newComponentChildren);
  }

  static const defaultRectForMobile = Rect.fromLTWH(0, 0, 150, 150);
  static const defaultRProperties = RectProperties(
    rect: ResponsiveRect(
      rectPhone: defaultRectForMobile,
      rectTablet: null,
      rectLaptop: null,
      rectDesktop: null,
    ),
    flipRectWhileResizing: true,
    flipChild: true,
    constraintsEnabled: false,
    resizable: true,
    movable: true,
    hideHandlesWhenNotResizable: true,
    verticalAlign: ResponsiveAlignment.start,
    horizontalAlign: ResponsiveAlignment.start,
  );

  final RectProperties _defaultRectProperties = defaultRProperties;

  /// It returns the node's default attributes
  final DefaultNodeAttributes _defaultAttributes;

  /// It returns the node's current attributes
  final NodeAttributes _attributes;

  final RectProperties _rectProperties;

  /// It returns the node's attributes
  /// It merges the default attributes with the current attributes
  Map<String, dynamic> get getAttributes => {
        ..._globalDefaultAttributes,
        ..._defaultAttributes,
        ..._attributes,
      };

  RectProperties get getRectProperties => RectProperties.fromJson({
        ..._defaultRectProperties.toJson(),
        ..._rectProperties.toJson(),
      });

  final WidgetAdapter adapter;

  /// Type of the node
  final String type;

  /// Intrinsic States of the node
  final IntrinsicState intrinsicState;

  /// The parent's id of the node
  final NodeID? parentID;

  /// The id of the node (node-id)
  final NodeID id;

  /// Stabil id of the node
  final NodeID? stabilID;

  /// The child of the node, if it exists
  final CNode? child;

  /// The name of each node
  final String? name;

  /// The description of the node
  final String? description;

  /// The children of the node, if they exists
  final List<CNode>? children;

  /// The index of the node in the parent's children list
  final double childOrder;

  /// The page id of the node
  final PageID? pageID;

  /// The component id of the node
  final PageID? componentID;

  /// If the node is locked or not
  final bool isLocked;

  /// A ValueNotifier that notifies the node's attributes
  /// If the node's attributes are changed, the ValueNotifier notifies
  /// the node's attributes to the node's widget
  /// The node's widget will be rebuilt
  final ValueNotifier<NodeAttributes> _attributesNotifier;

  final ValueNotifier<CNode?> childNotifier;
  final ValueNotifier<Nodes?> childrenNotifier;

  final DateTime updatedAt;

  bool doesRectExist(DeviceType deviceType) => deviceType == DeviceType.tablet
      ? getRectProperties.rect.rectTablet != null
      : deviceType == DeviceType.laptop
          ? getRectProperties.rect.rectLaptop != null
          : deviceType == DeviceType.desktop
              ? getRectProperties.rect.rectDesktop != null
              : true;

  Rect rect(DeviceType deviceType) =>
      getRectProperties.rect.getByDeviceType(deviceType);

  RectProperties setRect(Rect rect, DeviceType deviceType) =>
      getRectProperties.copyWith(
          rect: getRectProperties.rect
              .copyWithNewRectByDeviceType(deviceType, rect));

  RectProperties setRectForMultipleDevices(Map<DeviceType, Rect> rectMap) {
    RectProperties newRectProperties = getRectProperties;

    rectMap.forEach((deviceType, rect) {
      newRectProperties = newRectProperties.copyWith(
        rect: newRectProperties.rect
            .copyWithNewRectByDeviceType(deviceType, rect),
      );
    });

    return newRectProperties;
  }

  RectProperties resetRect(DeviceType deviceType) => getRectProperties.copyWith(
      rect: getRectProperties.rect.copyWithResettingRect(deviceType));

  /// Rect from Json
  Map<String, dynamic> get rectToJson => getRectProperties.rect.toJson();

  /// Rect to Json
  static ResponsiveRect rectFromJson(Map<String, dynamic> json) =>
      ResponsiveRect.fromJson(json);

  bool get flipRectWhileResizing => getRectProperties.flipRectWhileResizing;

  RectProperties setFlipRectWhileResizing(bool value) =>
      getRectProperties.copyWith(flipRectWhileResizing: value);

  bool get flipChild => getRectProperties.flipChild;
  void setFlipChild(bool value) => getRectProperties.copyWith(flipChild: value);

  bool get constraintsEnabled => getRectProperties.constraintsEnabled;
  void setConstraintsEnabled(bool value) =>
      getRectProperties.copyWith(constraintsEnabled: value);

  bool get resizable => getRectProperties.resizable;
  void setResizable(bool value) => getRectProperties.copyWith(resizable: value);

  bool get movable => getRectProperties.movable;
  void setMovable(bool value) => getRectProperties.copyWith(movable: value);

  bool get hideHandlesWhenNotResizable =>
      getRectProperties.hideHandlesWhenNotResizable;

  void setHideHandlesWhenNotResizable(bool value) =>
      getRectProperties.copyWith(hideHandlesWhenNotResizable: value);

  ResponsiveAlignment get verticalAlignment => getRectProperties.verticalAlign;

  CNode setVerticalAlignment(ResponsiveAlignment value) => copyWith(
      rectProperties: getRectProperties.copyWith(verticalAlign: value));

  ResponsiveAlignment get horizontalAlignment =>
      getRectProperties.horizontalAlign;

  CNode setHorizontalAlignment(ResponsiveAlignment value) => copyWith(
      rectProperties: getRectProperties.copyWith(horizontalAlign: value));

  Map<String, dynamic> rectPropertiesToJson() => getRectProperties.toJson();

  RectProperties rectPropertiesFromJson(Map<String, dynamic> json) =>
      RectProperties.fromJson(json);

  void setAttribute(String key, dynamic value) => _attributes[key] = value;

  /// fromJson method
  static fromJson(String widgetType, Map<String, dynamic> json) {
    throw UnimplementedError('fromJson must be implemented in a sub class');
  }

  /// toJson method
  Map<String, dynamic> toJson() {
    final body = getAttributes;
    return {
      'type': type,
      'name': name,
      'description': description,
      'parent_id': parentID,
      'properties': body,
      'rect_properties': rectPropertiesToJson(),
      'updated_at': updatedAt.toIso8601String(),
      'child_order': childOrder,
      'component_id': componentID,
      'is_locked': isLocked,
    };
  }

  /// toJson method with id
  Map<String, dynamic> toJsonWithId() {
    final body = getAttributes;
    return {
      'id': id,
      'type': type,
      'name': name,
      'description': description,
      'parent_id': parentID,
      'properties': body,
      'rect_properties': rectPropertiesToJson(),
      'updated_at': updatedAt.toIso8601String(),
      'child_order': childOrder,
      'component_id': componentID,
      'is_locked': isLocked,
    };
  }

  // toJson method with stabil id
  Map<String, dynamic> toJsonWithStabilId() {
    final body = getAttributes;
    return {
      'stabil_id': stabilID,
      'type': type,
      'name': name,
      'description': description,
      'parent_id': parentID,
      'properties': body,
      'rect_properties': rectPropertiesToJson(),
      'updated_at': updatedAt.toIso8601String(),
      'child_order': childOrder,
      'component_id': componentID,
      'is_locked': isLocked,
    };
  }

  Map<String, dynamic> toJsonWithStabilIdAndPageIdAndId() {
    final body = getAttributes;
    return {
      'id': id,
      'stabil_id': stabilID,
      'type': type,
      'name': name,
      'description': description,
      'parent_id': parentID,
      'properties': body,
      'rect_properties': rectPropertiesToJson(),
      'updated_at': updatedAt.toIso8601String(),
      'child_order': childOrder,
      'page_id': pageID,
      'component_id': componentID,
      'is_locked': isLocked,
    };
  }

  /// toJson method with id and page id
  Map<String, dynamic> toJsonWithIdAndPageId() {
    final body = getAttributes;
    return {
      'id': id,
      'type': type,
      'name': name,
      'description': description,
      'parent_id': parentID,
      'properties': body,
      'rect_properties': rectPropertiesToJson(),
      'updated_at': updatedAt.toIso8601String(),
      'child_order': childOrder,
      'page_id': pageID,
      'is_locked': isLocked,
    };
  }

  /// Copy the node with new attributes
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
    DateTime updatedAt,
    PageID? pageID,
    NodeID? stabilID,
    PageID? componentID,
    List<CNode>? componentChildren,
    bool? isLocked,
  });

  /// Copy the node with new attributes
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
    DateTime updatedAt,
    PageID? pageID,
    NodeID? stabilID,
    PageID? componentID,
    List<CNode>? componentChildren,
    bool? isLocked,
  });

  /// Render a Widget from node
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) {
    return ValueListenableBuilder(
      valueListenable: _attributesNotifier,
      builder: (BuildContext context, NodeAttributes attributes, Widget? _) {
        return adapter.toWidget(
          context: context,
          state: state.copyWith(node: this),
        );
      },
      child: adapter.toWidget(
        context: context,
        state: state.copyWith(node: this),
      ),
    );
  }

  @override
  List<Object?> get props => [
        id,
        child,
        children,
        type,
        intrinsicState,
        _attributes,
        _defaultAttributes,
        getAttributes,
        name,
        description,
        parentID,
        childOrder,
        getRectProperties,
        _rectProperties,
        verticalAlignment,
        horizontalAlignment,
        flipRectWhileResizing,
        flipChild,
        constraintsEnabled,
        resizable,
        movable,
        hideHandlesWhenNotResizable,
        updatedAt,
        pageID,
        stabilID,
        componentID,
        isLocked,
        componentChildren,
      ];

  @override
  String toString() => 'CNode { globalType: $type, name: $name }';
}
