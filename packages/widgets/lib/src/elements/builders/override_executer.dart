import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

import '../../../theta_open_widgets.dart';

class NodeOverrideExecuter extends Equatable {
  const NodeOverrideExecuter();

  @override
  List<Object> get props => [];

  bool overridesChildren(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.children);
  bool overridesChild(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.child);
  bool overridesTextValue(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.textData);
  bool overridesImageValue(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.imageData);
  bool overridesIconValue(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.iconData);
  bool overridesColorValue(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.fill);

  Override? checkOverride(BuildContext context, WidgetState state,
      bool Function(Override override) condition) {
    final treeState = context.read<TreeState>();
    final nodeOverrides = treeState.nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull((e) {
      if (e.component != null) {
        return e.component == treeState.nodeComponentID &&
            (e.node == state.node.name ||
                e.node == state.node.id ||
                e.node == state.node.stabilID);
      }
      return e.node == state.node.name ||
          e.node == state.node.id ||
          e.node == state.node.stabilID;
    });
    if (override != null && condition(override)) {
      return override;
    }
    return null;
  }

  Widget? executeBuilder(BuildContext context, CNode node) {
    final nodeOverrides = context.read<TreeState>().nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull(
      (e) =>
          e.node == node.name || e.node == node.id || e.node == node.stabilID,
    );
    if (override?.builder == null) {
      return null;
    }
    return override?.builder?.call(
      context,
      node,
      node.child
          ?.toWidget(context: context, state: WidgetState(node: node, loop: 0)),
      node.children
          ?.map((e) => e.toWidget(
              context: context, state: WidgetState(node: e, loop: 0)))
          .toList(),
    );
  }

  FFill executeColor(
      BuildContext context, WidgetState state, FFill originalFill) {
    final override = checkOverride(context, state, overridesColorValue);
    return override?.properties
            .firstWhereOrNull((e) => e is FillProperty)
            ?.value ??
        originalFill;
  }

  String executeText(
      BuildContext context, WidgetState state, String originalTextValue) {
    final override = checkOverride(context, state, overridesTextValue);
    return override?.properties
            .firstWhereOrNull((e) => e is TextProperty)
            ?.value ??
        originalTextValue;
  }

  String executeImage(
      BuildContext context, WidgetState state, String originalImageValue) {
    final override = checkOverride(context, state, overridesImageValue);
    return override?.properties
            .firstWhereOrNull((e) => e is ImageProperty)
            ?.value ??
        originalImageValue;
  }

  IconData executeIcon(
      BuildContext context, WidgetState state, IconData? originalIconValue) {
    final override = checkOverride(context, state, overridesIconValue);
    return override?.properties
            .firstWhereOrNull((e) => e is IconProperty)
            ?.value ??
        originalIconValue;
  }

  Widget executeChild(BuildContext context, WidgetState state, Widget child) {
    final override = checkOverride(context, state, overridesChild);
    return override?.properties
            .firstWhereOrNull((e) => e is ChildProperty)
            ?.value ??
        child;
  }

  List<Widget> executeChildren(
      BuildContext context, WidgetState state, List<CNode> children) {
    final override = checkOverride(context, state, overridesChild);
    return override?.properties
            .firstWhereOrNull((e) => e is ChildrenProperty)
            ?.value as List<Widget>? ??
        children
            .map((child) => ChildBuilder(
                    context: context,
                    state: state.copyWith(
                        node: child, loop: children.indexOf(child)),
                    child: child)
                .build())
            .whereNotNull()
            .toList();
  }
}
