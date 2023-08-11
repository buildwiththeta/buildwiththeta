import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/src/elements/builders/workflow_executer.dart';

class NodeBuilder extends StatefulWidget {
  const NodeBuilder({
    super.key,
    required this.state,
    required this.onTap,
    required this.onPanStart,
    required this.child,
    required this.onHover,
  });

  final WidgetState state;
  final Widget child;

  final Function() onTap;
  final Function() onPanStart;
  final Function() onHover;

  @override
  State<NodeBuilder> createState() => _NodeBuilderState();
}

class _NodeBuilderState extends State<NodeBuilder> {
  BoxDecoration _handleDecorationChange(CNode? hoverNode, CNode? focusNode) {
    return (focusNode?.id == widget.state.node.id)
        ? BoxDecoration(
            border: Border.all(width: 2, color: Palette.blue),
          )
        : (hoverNode?.id == widget.state.node.id)
            ? (hoverNode?.id == widget.state.node.id &&
                    [NType.component, NType.teamComponent]
                        .contains(hoverNode?.type))
                ? BoxDecoration(
                    border: Border.all(width: 2, color: Palette.magenta),
                  )
                : BoxDecoration(
                    border: Border.all(width: 2, color: Palette.blue),
                  )
            : const BoxDecoration();
  }

  EdgeInsets _handleMargins(TreeState state) =>
      (widget.state.node.getAttributes[DBKeys.margins] as FMargins? ??
              const FMargins(
                  margins: [0, 0, 0, 0],
                  marginsTablet: [0, 0, 0, 0],
                  marginsDesktop: [0, 0, 0, 0]))
          .get(state: state, context: context);

  EdgeInsets _handlePadding(TreeState state) {
    final nodeType = widget.state.node.type;
    if (nodeType == NType.container) {
      // Node use own padding for OpenWContainer
      return EdgeInsets.zero;
    } else {
      return (widget.state.node.getAttributes[DBKeys.padding] as FMargins? ??
              const FMargins(
                  margins: [0, 0, 0, 0],
                  marginsTablet: [0, 0, 0, 0],
                  marginsDesktop: [0, 0, 0, 0]))
          .get(state: state, context: context);
    }
  }

  bool _handleVisibility(TreeState state) {
    final visibility =
        widget.state.node.getAttributes[DBKeys.visibility] as bool?;
    return (visibility == false)
        ? false
        : ((visibility ?? true) && state.forPlay)
            ? _handlePlayVisibility()
            : _handleNotPlayVisibility(state);
  }

  bool _handlePlayVisibility() => MediaQuery.of(context).size.width > 1200
      ? (widget.state.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ??
          true)
      : MediaQuery.of(context).size.width > 834
          ? (widget.state.node.getAttributes[DBKeys.visibleOnLaptop] as bool? ??
              true)
          : MediaQuery.of(context).size.width > 600
              ? (widget.state.node.getAttributes[DBKeys.visibleOnTablet]
                      as bool? ??
                  true)
              : (widget.state.node.getAttributes[DBKeys.visibleOnMobile]
                      as bool? ??
                  true);

  bool _handleNotPlayVisibility(TreeState state) => state.deviceType ==
          DeviceType.desktop
      ? (widget.state.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ??
          true)
      : state.deviceType == DeviceType.laptop
          ? (widget.state.node.getAttributes[DBKeys.visibleOnLaptop] as bool? ??
              true)
          : state.deviceType == DeviceType.tablet
              ? (widget.state.node.getAttributes[DBKeys.visibleOnTablet]
                      as bool? ??
                  true)
              : (widget.state.node.getAttributes[DBKeys.visibleOnMobile]
                      as bool? ??
                  true);

  Widget handleSlideAnimation(CNode node, Widget child) {
    if (node.getAttributes[DBKeys.slideAnimationEnabled] as bool? ?? false) {
      return SlideAnimation(
        child: child,
      );
    }
    return child;
  }

  Widget handleScaleAnimation(CNode node, Widget child) {
    if (node.getAttributes[DBKeys.scaleAnimationEnabled] as bool? ?? false) {
      return ScaleAnimation(
        child: child,
      );
    }
    return child;
  }

  Widget handleFadeInAnimation(CNode node, Widget child) {
    if (node.getAttributes[DBKeys.fadeAnimationEnabled] as bool? ?? false) {
      return FadeInAnimation(
        child: child,
      );
    }
    return child;
  }

  double _handleRotation(TreeState state) => double.parse(
      (widget.state.node.getAttributes[DBKeys.rotation] as FTextTypeInput?)
              ?.value ??
          '0');

  Widget handleOpenWSpacerWidget(CNode node, Widget child) {
    if (widget.state.node.type == NType.spacer) {
      return Expanded(
        flex: int.tryParse(
              (widget.state.node.getAttributes[DBKeys.flexValue]
                          as FTextTypeInput?)
                      ?.value ??
                  '1',
            ) ??
            1,
        child: child,
      );
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    final override = const NodeOverrideExecuter().executeBuilder(
      context,
      widget.state.node,
    );
    if (override != null) {
      return override;
    }

    return handleOpenWSpacerWidget(
      widget.state.node,
      MouseRegion(
        hitTestBehavior: HitTestBehavior.opaque,
        onEnter: (e) => widget.onHover.call(),
        child: Visibility(
          visible: _handleVisibility(state),
          child: Padding(
            padding: _handleMargins(state),
            child: DecoratedBox(
              decoration: _handleDecorationChange(
                state.hoveredNode,
                state.focusedNode,
              ),
              position: DecorationPosition.foreground,
              child: Transform.rotate(
                angle: _handleRotation(state),
                child: Padding(
                  padding: _handlePadding(state),
                  child: GestureDetectorInEditor(
                    node: widget.state.node,
                    onTap: widget.onTap,
                    onPanStart: widget.onPanStart,
                    child: GestureDetectorForPlay(
                      state: widget.state,
                      child: handleSlideAnimation(
                        widget.state.node,
                        handleScaleAnimation(
                          widget.state.node,
                          handleFadeInAnimation(
                            widget.state.node,
                            widget.child,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GestureDetectorInEditor extends StatelessWidget {
  const GestureDetectorInEditor({
    super.key,
    required this.node,
    required this.child,
    required this.onTap,
    required this.onPanStart,
  });

  final CNode node;
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback onPanStart;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (state.forPlay) {
      return child;
    }
    return Listener(
        onPointerDown: (e) => TreeGlobalState.onRightClick(e, node),
        child: GestureDetector(
          onTap: onTap,
          onPanStart: (e) => onPanStart,
          child: child,
        ));
  }
}

class GestureDetectorForPlay extends StatefulWidget {
  const GestureDetectorForPlay({
    super.key,
    required this.state,
    required this.child,
  });

  final WidgetState state;
  final Widget child;

  @override
  State<GestureDetectorForPlay> createState() => _GestureDetectorForPlayState();
}

class _GestureDetectorForPlayState extends State<GestureDetectorForPlay> {
  late WorkflowExecuter executer;

  @override
  void initState() {
    super.initState();
    final state = context.read<TreeState>();
    executer = WorkflowExecuter(
      nodeID: widget.state.node.id,
      nodeName: widget.state.node.name!,
      workflows: state.workflows,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (!state.forPlay && state.workflows.isEmpty) {
      return widget.child;
    }

    return maybeListener(maybeGestureDetector(widget.child));
  }

  Widget maybeListener(Widget child) {
    if (executer.doesWorkflowExist(Trigger.onMouseEnter) ||
        executer.doesWorkflowExist(Trigger.onMouseExit) ||
        executer.doesWorkflowExist(Trigger.onHover)) {
      return MouseRegion(
        onEnter: (e) => executer.execute(Trigger.onMouseEnter),
        onExit: (e) => executer.execute(Trigger.onMouseExit),
        onHover: (e) => executer.execute(Trigger.onHover),
        child: child,
      );
    }
    return child;
  }

  Widget maybeGestureDetector(Widget child) {
    if (executer.doesWorkflowExist(Trigger.onTap) ||
        executer.doesWorkflowExist(Trigger.onDoubleTap) ||
        executer.doesWorkflowExist(Trigger.onLongPress)) {
      return GestureDetector(
        onTap: () => executer.execute(Trigger.onTap),
        onDoubleTap: () => executer.execute(Trigger.onDoubleTap),
        onLongPress: () => executer.execute(Trigger.onLongPress),
        child: child,
      );
    }
    return child;
  }
}
