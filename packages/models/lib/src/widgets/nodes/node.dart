import 'package:device_frame/device_frame.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

const _defaultRectForMobile = Rect.fromLTWH(0, 0, 150, 150);
final _defaultRProperties = {
  'rect': {
    DeviceType.phone.name: _defaultRectForMobile,
    DeviceType.tablet.name: null,
    DeviceType.desktop.name: null,
  },
  'flipRectWhileResizing': true,
  'flipChild': true,
  'constraintsEnabled': false,
  'resizable': true,
  'movable': true,
  'hideHandlesWhenNotResizable': true,
  'vertical_align': ResponsiveAlignment.start,
  'horizontal_align': ResponsiveAlignment.start,
};

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
    required final NodeAttributes rectProperties,
    required this.adapter,
    required this.updatedAt,
    this.name,
    this.description,
    this.id = '',
    this.child,
    this.children = const [],
    this.childOrder = 0,
  })  : _defaultAttributes = defaultAttributes,
        _attributes = attributes,
        _rectProperties = rectProperties,
        _attributesNotifier = ValueNotifier(attributes),
        childNotifier = ValueNotifier(child),
        childrenNotifier = ValueNotifier(children);

  final Map<String, dynamic> _globalDefaultAttributes = {
    DBKeys.padding: const FMargins(
      margins: [0, 0, 0, 0],
      marginsTablet: [0, 0, 0, 0],
      marginsDesktop: [0, 0, 0, 0],
    ),
    DBKeys.margins: const FMargins(
      margins: [0, 0, 0, 0],
      marginsTablet: [0, 0, 0, 0],
      marginsDesktop: [0, 0, 0, 0],
    ),
  };

  final Map<String, dynamic> _defaultRectProperties = _defaultRProperties;

  /// It returns the node's default attributes
  final DefaultNodeAttributes _defaultAttributes;

  /// It returns the node's current attributes
  final NodeAttributes _attributes;

  final NodeAttributes _rectProperties;

  /// It returns the node's attributes
  /// It merges the default attributes with the current attributes
  Map<String, dynamic> get getAttributes => {
        ..._globalDefaultAttributes,
        ..._defaultAttributes,
        ..._attributes,
      };

  Map<String, dynamic> get getRectProperties => {
        ..._defaultRectProperties,
        ..._rectProperties,
      };

  final WidgetAdapter adapter;

  /// Type of the node
  final String type;

  /// Intrinsic States of the node
  final IntrinsicState intrinsicState;

  /// The parent's id of the node
  final NodeID? parentID;

  /// The id of the node (node-id)
  final NodeID id;

  /// The child of the node, if it exists
  final CNode? child;

  /// The name of each node
  final String? name;

  /// The description of the node
  final String? description;

  /// The children of the node, if they exists
  final List<CNode>? children;

  /// The index of the node in the parent's children list
  final int childOrder;

  /// A ValueNotifier that notifies the node's attributes
  /// If the node's attributes are changed, the ValueNotifier notifies
  /// the node's attributes to the node's widget
  /// The node's widget will be rebuilt
  final ValueNotifier<NodeAttributes> _attributesNotifier;

  final ValueNotifier<CNode?> childNotifier;
  final ValueNotifier<Nodes?> childrenNotifier;

  final DateTime updatedAt;

  bool doesRectExist(DeviceType deviceType) =>
      getRectProperties['rect'][deviceType.name] != null;

  Rect rect(DeviceType deviceType) =>
      getRectProperties['rect'][deviceType.name] ??
      getRectProperties['rect'][DeviceType.phone.name];

  void setRect(Rect rect, DeviceType deviceType) =>
      _rectProperties['rect'][deviceType.name] = rect;

  void resetRect(DeviceType deviceType) =>
      _rectProperties['rect'][deviceType.name] = null;

  /// Rect from Json
  Map<String, dynamic> get rectToJson {
    final map = getRectProperties['rect'] as Map<String, dynamic>;
    final rectPhone = map[DeviceType.phone.name] as Rect;
    final rectTablet = map[DeviceType.tablet.name] as Rect?;
    final rectDesktop = map[DeviceType.desktop.name] as Rect?;
    return {
      DeviceType.phone.name: rectSingleTojson(rectPhone),
      DeviceType.tablet.name: rectSingleTojson(rectTablet),
      DeviceType.desktop.name: rectSingleTojson(rectDesktop),
    };
  }

  Map<String, dynamic>? rectSingleTojson(Rect? rect) {
    if (rect == null) return null;
    return {
      'left': rect.left,
      'top': rect.top,
      'right': rect.right,
      'bottom': rect.bottom,
    };
  }

  /// Rect to Json
  static Map<String, dynamic> rectFromJson(Map<String, dynamic> json) {
    return {
      DeviceType.phone.name: rectSingleFromJson(
            json[DeviceType.phone.name],
          ) ??
          _defaultRectForMobile,
      DeviceType.tablet.name: rectSingleFromJson(json[DeviceType.tablet.name]),
      DeviceType.desktop.name:
          rectSingleFromJson(json[DeviceType.desktop.name]),
    };
  }

  static Rect? rectSingleFromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return Rect.fromLTRB(
        json['left'], json['top'], json['right'], json['bottom']);
  }

  bool get flipRectWhileResizing =>
      getRectProperties['flipRectWhileResizing'] as bool;
  void setFlipRectWhileResizing(bool value) =>
      _rectProperties['flipRectWhileResizing'] = value;

  bool get flipChild => getRectProperties['flipChild'] as bool;
  void setFlipChild(bool value) => _rectProperties['flipChild'] = value;

  bool get constraintsEnabled =>
      getRectProperties['constraintsEnabled'] as bool;
  void setConstraintsEnabled(bool value) =>
      _rectProperties['constraintsEnabled'] = value;

  bool get resizable => getRectProperties['resizable'] as bool;
  void setResizable(bool value) => _rectProperties['resizable'] = value;

  bool get movable => getRectProperties['movable'] as bool;
  void setMovable(bool value) => _rectProperties['movable'] = value;

  bool get hideHandlesWhenNotResizable =>
      getRectProperties['hideHandlesWhenNotResizable'] as bool;
  void setHideHandlesWhenNotResizable(bool value) =>
      _rectProperties['hideHandlesWhenNotResizable'] = value;

  ResponsiveAlignment get verticalAlignment =>
      getRectProperties['vertical_align'] as ResponsiveAlignment;
  void setVerticalAlignment(ResponsiveAlignment value) =>
      _rectProperties['vertical_align'] = value;

  ResponsiveAlignment get horizontalAlignment =>
      getRectProperties['horizontal_align'] as ResponsiveAlignment;
  void setHorizontalAlignment(ResponsiveAlignment value) =>
      _rectProperties['horizontal_align'] = value;

  Map<String, dynamic> rectPropertiesToJson() => {
        'rect': rectToJson,
        'flipRectWhileResizing': flipRectWhileResizing,
        'flipChild': flipChild,
        'constraintsEnabled': constraintsEnabled,
        'resizable': resizable,
        'movable': movable,
        'hideHandlesWhenNotResizable': hideHandlesWhenNotResizable,
        'vertical_align': verticalAlignment.name,
        'horizontal_align': horizontalAlignment.name,
      };

  static NodeAttributes rectPropertiesFromJson(Map<String, dynamic> json) =>
      json.entries.isEmpty
          ? _defaultRProperties
          : {
              'rect': rectFromJson(json['rect']),
              'flipRectWhileResizing': json['flipRectWhileResizing'],
              'flipChild': json['flipChild'],
              'constraintsEnabled': json['constraintsEnabled'],
              'resizable': json['resizable'],
              'movable': json['movable'],
              'hideHandlesWhenNotResizable':
                  json['hideHandlesWhenNotResizable'],
              'vertical_align': EnumToString.fromString(
                  ResponsiveAlignment.values,
                  json['vertical_align'] ?? 'start'),
              'horizontal_align': EnumToString.fromString(
                  ResponsiveAlignment.values,
                  json['horizontal_align'] ?? 'start'),
            };

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
    int? childOrder,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? rectProperties,
    DateTime updatedAt,
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
        _rectProperties['rect'],
        verticalAlignment,
        horizontalAlignment,
        flipRectWhileResizing,
        flipChild,
        constraintsEnabled,
        resizable,
        movable,
        hideHandlesWhenNotResizable,
        updatedAt,
      ];

  @override
  String toString() => 'CNode { globalType: $type, name: $name }';
}
