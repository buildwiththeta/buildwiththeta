import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

class NodeOverrideExecuter extends Equatable {
  const NodeOverrideExecuter();

  @override
  List<Object> get props => [];

  Widget executeChild(BuildContext context, WidgetState state, Widget child) {
    final nodeOverrides = context.read<TreeState>().nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull(
        (e) => e.node == state.node.name || e.node == state.node.id);
    if (override != null && overridesChild(override)) {
      return override.properties
              .firstWhereOrNull((e) => e is ChildProperty)
              ?.value ??
          child;
    }
    return child;
  }

  List<Widget> executeChildren(
      BuildContext context, WidgetState state, List<CNode> children) {
    final nodeOverrides = context.read<TreeState>().nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull(
        (e) => e.node == state.node.name || e.node == state.node.id);
    if (override != null && overridesChildren(override)) {
      return override.properties
              .firstWhereOrNull((e) => e is ChildrenProperty)
              ?.value as List<Widget>? ??
          children
              .map(
                (e) => e.toWidget(
                  context: context,
                  state: state.copyWith(node: e),
                ),
              )
              .toList();
    }
    return children
        .map((e) => e.toWidget(
              context: context,
              state: state.copyWith(node: e),
            ))
        .toList();
  }

  bool overridesChildren(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.children);
  bool overridesChild(Override override) =>
      override.properties.any((e) => e.property == NodeProperties.child);
}
