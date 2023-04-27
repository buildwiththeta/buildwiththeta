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
    required this.childrenIds,
    required this.intrinsicState,
    required final DefaultNodeAttributes defaultAttributes,
    required final NodeAttributes attributes,
    required this.adapter,
    this.name,
    this.description,
    this.parent,
    this.id = '',
    this.child,
    this.children = const [],
    this.index = 0,
  })  : _defaultAttributes = defaultAttributes,
        _attributes = attributes,
        _attributesNotifier = ValueNotifier(attributes);

  final Map<String, dynamic> _globalDefaultAttributes = {
    'x': 0.0,
    'y': 0.0,
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

  /// It returns the node's default attributes
  final DefaultNodeAttributes _defaultAttributes;

  /// It returns the node's current attributes
  final NodeAttributes _attributes;

  /// It returns the node's attributes
  /// It merges the default attributes with the current attributes
  Map<String, dynamic> get getAttributes => {
        ..._globalDefaultAttributes,
        ..._defaultAttributes,
        ..._attributes,
      };

  final WidgetAdapter adapter;

  /// Type of the node
  final String type;

  /// Intrinsic States of the node
  final IntrinsicState intrinsicState;

  /// The parent's id of the node
  final NodeID? parent;

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

  /// It contains all the ids of the node's child / children
  final FChildrenIds childrenIds;

  /// The index of the node in the parent's children list
  final int index;

  /// A ValueNotifier that notifies the node's attributes
  /// If the node's attributes are changed, the ValueNotifier notifies
  /// the node's attributes to the node's widget
  /// The node's widget will be rebuilt
  final ValueNotifier<NodeAttributes> _attributesNotifier;

  /// fromJson method
  static fromJson(String widgetType, Map<String, dynamic> json) {
    throw UnimplementedError('fromJson must be implemented in a sub class');
  }

  /// toJson method
  Map<String, dynamic> toJson() {
    final ids = childrenIds.toJson();
    final body = getAttributes;
    return {
      'id': id,
      'type': type,
      'name': name,
      'description': description,
      'ids': ids,
      'body': body,
    };
  }

  /// Copy the node with new attributes
  CNode copyWith({
    NodeID? id,
    NodeID? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
  });

  /// Render a Widget from node
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) {
    return ValueListenableBuilder(
        valueListenable: _attributesNotifier,
        builder: (BuildContext context, NodeAttributes attributes, Widget? _) {
          final widget = adapter.toWidget(
            context: context,
            state: state.copyWith(node: this),
          );
          return widget;
        });
  }

  @override
  List<Object?> get props => [
        parent,
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
        childrenIds,
        index,
      ];

  @override
  String toString() => 'CNode { globalType: $type, name: $name }';
}
