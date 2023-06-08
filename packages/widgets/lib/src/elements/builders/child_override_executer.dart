import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';

class NodeOverrideExecuter extends Equatable {
  const NodeOverrideExecuter();

  @override
  List<Object> get props => [];

  Widget executeChild(BuildContext context, WidgetState state, CNode child) {
    final nodeOverrides = context.read<TreeState>().nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull((e) =>
        e.nodeIdenfier == state.node.name || e.nodeIdenfier == state.node.id);
    if (override != null && overridesChild(override)) {
      return override.properties
              .firstWhereOrNull((e) => e.property == NodeProperties.child)
              ?.value ??
          child.toWidget(
            context: context,
            state: state.copyWith(node: child),
          );
    }
    return child.toWidget(
      context: context,
      state: state.copyWith(node: child),
    );
  }

  List<Widget> executeChildren(
      BuildContext context, WidgetState state, List<CNode> children) {
    final nodeOverrides = context.read<TreeState>().nodeOverrides;
    final override = nodeOverrides.firstWhereOrNull((e) =>
        e.nodeIdenfier == state.node.name || e.nodeIdenfier == state.node.id);
    if (override != null && overridesChild(override)) {
      return override.properties
              .firstWhereOrNull((e) => e.property == NodeProperties.children)
              ?.value ??
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

  bool overridesChildren(NodeOverride override) =>
      override.properties.any((e) => e.property == NodeProperties.children);
  bool overridesChild(NodeOverride override) =>
      override.properties.any((e) => e.property == NodeProperties.child);
}
