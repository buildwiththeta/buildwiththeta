import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

enum NodeProperties {
  child,
  children,
  textData,
  imageData,
  fill,
}

/// A class that represents a node override.
class Override extends Equatable {
  /// Creates a node override.
  Override(this.node);

  final String node;
  final List<NodeProperty> properties = [];

  void setChild(Widget child) {
    properties.add(ChildProperty(child: child));
  }

  void setChildren(List<Widget> children) {
    properties.add(ChildrenProperty(children: children));
  }

  void setText(String data) {
    properties.add(TextProperty(textData: data));
  }

  void setImage(String data) {
    properties.add(ImageProperty(imageData: data));
  }

  void setColor(Color color, double opacity) {
    properties.add(FillProperty(
        fill: FFill(levels: [
      FFillElement(
          color: color.value.toRadixString(16).padLeft(6, '0').toUpperCase(),
          stop: 0,
          opacity: opacity)
    ])));
  }

  @override
  List<Object> get props => [node, properties];

  @override
  String toString() =>
      'Override { nodeIdentifier: $node, properties: $properties }';
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

class TextProperty extends NodeProperty {
  const TextProperty({
    required this.textData,
  }) : super(NodeProperties.textData, textData);

  final String textData;

  @override
  List<Object> get props => [property, value];
}

class ImageProperty extends NodeProperty {
  const ImageProperty({
    required this.imageData,
  }) : super(NodeProperties.textData, imageData);

  final String imageData;

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

class FillProperty extends NodeProperty {
  const FillProperty({
    required this.fill,
  }) : super(NodeProperties.children, fill);

  final FFill fill;

  @override
  List<Object> get props => [property, value];
}
