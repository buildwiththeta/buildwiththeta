import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum NodeProperties {
  child,
  children,
}

class Override extends Equatable {
  const Override(
    this.node, {
    required List<NodeProperty> props,
  }) : properties = props;

  final String node;
  final List<NodeProperty> properties;

  @override
  List<Object> get props => [node, properties];

  @override
  String toString() =>
      'Action { nodeIdenfier: $node, properties: $properties }';
}

abstract class NodeProperty extends Equatable {
  const NodeProperty(
    this.property,
    this.value,
  );

  final NodeProperties property;
  final dynamic value;

  @override
  List<Object> get props => [property, value];
}

class ChildProperty extends NodeProperty {
  const ChildProperty({
    required this.child,
  }) : super(NodeProperties.child, child);

  final Widget child;

  @override
  List<Object> get props => [property, value];
}

class ChildrenProperty extends NodeProperty {
  const ChildrenProperty({
    required this.children,
  }) : super(NodeProperties.children, children);

  final List<Widget> children;

  @override
  List<Object> get props => [property, value];
}
