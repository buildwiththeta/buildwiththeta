import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

typedef BuilderFunction = Widget Function(
    BuildContext, CNode, Widget?, List<Widget>?);

enum NodeProperties {
  child,
  children,
  textData,
  imageData,
  fill,
  iconData,
}

/// A class that represents a node override.
class Override {
  /// Creates a node override.
  Override(
    this.node, {
    this.builder,
    this.component,
    final List<NodeProperty>? props,
    final Color? color,
    final String? image,
    final String? text,
    final IconData? icon,
    this.onChanged,
  }) {
    if (props != null) {
      properties.addAll(props);
    }
    if (color != null) {
      setColor(color);
    }
    if (image != null) {
      setImage(image);
    }
    if (text != null) {
      setText(text);
    }
    if (icon != null) {
      setIcon(icon);
    }
  }

  final String node;
  final String? component;
  final List<NodeProperty> properties = [];
  final BuilderFunction? builder;
  VoidCallback? onChanged;

  void assignOnChanged(VoidCallback callback) => onChanged = callback;

  void setChild(Widget child) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.child);
    if (existingPropertyIndex >= 0) {
    } else {
      properties.add(ChildProperty(child: child));
    }
    onChanged?.call();
  }

  void setChildren(List<Widget> children) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.children);
    if (existingPropertyIndex >= 0) {
      properties[existingPropertyIndex] = ChildrenProperty(children: children);
    } else {
      properties.add(ChildrenProperty(children: children));
    }
    onChanged?.call();
  }

  void setText(String data) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.textData);
    if (existingPropertyIndex >= 0) {
      properties[existingPropertyIndex] = TextProperty(textData: data);
    } else {
      properties.add(TextProperty(textData: data));
    }
    onChanged?.call();
  }

  void setImage(String data) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.imageData);
    if (existingPropertyIndex >= 0) {
      properties[existingPropertyIndex] = ImageProperty(imageData: data);
    } else {
      properties.add(ImageProperty(imageData: data));
    }
    onChanged?.call();
  }

  void setIcon(IconData data) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.iconData);
    if (existingPropertyIndex >= 0) {
      properties[existingPropertyIndex] = IconProperty(iconData: data);
    } else {
      properties.add(IconProperty(iconData: data));
    }
    onChanged?.call();
  }

  void setColor(Color? color) {
    final existingPropertyIndex = properties
        .indexWhere((element) => element.property == NodeProperties.fill);
    if (color == null) {
      if (existingPropertyIndex >= 0) {
        properties.removeAt(existingPropertyIndex);
      }
      return;
    }
    if (existingPropertyIndex >= 0) {
      properties[existingPropertyIndex] = FillProperty(
          fill: FFill(levels: [
        FFillElement(
            color: color.value.toRadixString(16).padLeft(6, '0').toUpperCase(),
            stop: 0,
            opacity: color.opacity)
      ]));
    } else {
      properties.add(FillProperty(
          fill: FFill(levels: [
        FFillElement(
            color: color.value.toRadixString(16).padLeft(6, '0').toUpperCase(),
            stop: 0,
            opacity: color.opacity)
      ])));
    }
    onChanged?.call();
  }

  static Override fromJson(Map<String, dynamic> json) {
    final override = Override(json['node'] as String);
    final properties = json['properties'] as List<dynamic>;
    for (final property in properties) {
      switch (property['property'] as String) {
        case 'child':
          override.setChild(property['value'] as Widget);
          break;
        case 'children':
          override.setChildren(property['value'] as List<Widget>);
          break;
        case 'textData':
          override.setText(property['value'] as String);
          break;
        case 'imageData':
          override.setImage(property['value'] as String);
          break;
        case 'fill':
          final fill = property['value'] as Map<String, dynamic>;
          override.setColor(Color(int.parse(fill['color'] as String, radix: 16))
              .withOpacity(fill['opacity'] as double));
          break;
        default:
          break;
      }
    }
    return override;
  }

  static List<Override> fromJsonList(List<dynamic> json) =>
      json.map((e) => fromJson(e)).toList();

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['node'] = node;
    json['properties'] = properties.map((property) {
      final json = <String, dynamic>{};
      json['property'] = property.property.toString().split('.').last;
      if (property.property == NodeProperties.fill) {
        final fill = property.value as FFill;
        json['value'] = {
          'color': fill.levels.first.color,
          'opacity': fill.levels.first.opacity
        };
        return json;
      }
      json['value'] = property.value;
      return json;
    }).toList();
    return json;
  }

  Override copyWith({
    String? node,
    String? component,
    List<NodeProperty>? properties,
    BuilderFunction? builder,
    VoidCallback? onChanged,
  }) {
    return Override(
      node ?? this.node,
      component: component ?? this.component,
      props: properties ?? this.properties,
      builder: builder ?? this.builder,
      onChanged: onChanged ?? this.onChanged,
    );
  }

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
  }) : super(NodeProperties.imageData, imageData);

  final String imageData;

  @override
  List<Object> get props => [property, value];
}

class IconProperty extends NodeProperty {
  const IconProperty({
    required this.iconData,
  }) : super(NodeProperties.iconData, iconData);

  final IconData iconData;

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
  }) : super(NodeProperties.fill, fill);

  final FFill fill;

  @override
  List<Object> get props => [property, value];
}
