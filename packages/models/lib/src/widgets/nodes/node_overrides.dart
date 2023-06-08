import 'package:equatable/equatable.dart';

enum NodeProperties {
  child,
  children,
}

class NodeOverride extends Equatable {
  const NodeOverride(
    this.nodeIdenfier,
    this.properties,
  );

  final String nodeIdenfier;
  final List<NodeProperty> properties;

  @override
  List<Object> get props => [nodeIdenfier, properties];

  @override
  String toString() =>
      'Action { nodeIdenfier: $nodeIdenfier, properties: $properties }';
}

class NodeProperty extends Equatable {
  const NodeProperty(
    this.property,
    this.value,
  );

  final NodeProperties property;
  final dynamic value;

  @override
  List<Object> get props => [property, value];
}
