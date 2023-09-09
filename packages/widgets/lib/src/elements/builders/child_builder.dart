import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/node_builder.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class ChildBuilder {
  ChildBuilder({
    required this.context,
    required this.state,
    required this.child,
  });

  final BuildContext context;
  final WidgetState state;
  final CNode? child;

  Widget? build() {
    return child == null
        ? const NodeOverrideExecuter()
            .executeChild(context, state, const SizedBox.shrink())
        : _handleVisibility(context, state)
            ? NodeBuilder(
                state: state.copyWith(node: child),
                onHover: () {
                  context.read<TreeGlobalState>().onNodeHovered(
                      child!, context.read<TreeState>().deviceType);
                },
                onTap: () {
                  context.read<TreeGlobalState>().onNodeFocused(
                      child!, context.read<TreeState>().deviceType);
                },
                onPanStart: () {
                  context.read<TreeGlobalState>().onNodeFocused(
                      child!, context.read<TreeState>().deviceType);
                },
                child: const NodeOverrideExecuter().executeChild(
                  context,
                  state,
                  child!.toWidget(
                    context: context,
                    state: state.copyWith(node: child),
                  ),
                ),
              )
            : null;
  }

  static bool _handleVisibility(BuildContext context, WidgetState widgetState) {
    final state = context.read<TreeState>();
    final visibility =
        widgetState.node.getAttributes[DBKeys.visibility] as bool?;
    return (visibility == false)
        ? false
        : ((visibility ?? true) && state.forPlay)
            ? _handlePlayVisibility(context, widgetState)
            : _handleNotPlayVisibility(widgetState, state);
  }

  static bool _handlePlayVisibility(
          BuildContext context, WidgetState widgetState) =>
      MediaQuery.of(context).size.width > 1200
          ? (widgetState.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ??
              true)
          : MediaQuery.sizeOf(context).width > 834
              ? (widgetState.node.getAttributes[DBKeys.visibleOnLaptop]
                      as bool? ??
                  true)
              : MediaQuery.sizeOf(context).width > 600
                  ? (widgetState.node.getAttributes[DBKeys.visibleOnTablet]
                          as bool? ??
                      true)
                  : (widgetState.node.getAttributes[DBKeys.visibleOnMobile]
                          as bool? ??
                      true);

  static bool _handleNotPlayVisibility(
          WidgetState widgetState, TreeState state) =>
      state.deviceType == DeviceType.desktop
          ? (widgetState.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ??
              true)
          : state.deviceType == DeviceType.laptop
              ? (widgetState.node.getAttributes[DBKeys.visibleOnLaptop]
                      as bool? ??
                  true)
              : state.deviceType == DeviceType.tablet
                  ? (widgetState.node.getAttributes[DBKeys.visibleOnTablet]
                          as bool? ??
                      true)
                  : (widgetState.node.getAttributes[DBKeys.visibleOnMobile]
                          as bool? ??
                      true);
}
