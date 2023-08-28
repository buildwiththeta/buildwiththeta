import 'package:defer_pointer/defer_pointer.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/src/elements/builders/workflow_executer.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
  bool clickable = true;

  BoxDecoration _handleDecorationChange(CNode? hoverNode, CNode? focusNode,
      bool isDeviceFocused, bool isDeviceHovered) {
    if (isDeviceFocused && focusNode?.id == widget.state.node.id) {
      return BoxDecoration(
        border: Border.all(width: 2, color: Palette.blue),
      );
    }
    if (isDeviceHovered) {
      if (hoverNode?.id == widget.state.node.id) {
        if ([NType.component, NType.teamComponent].contains(hoverNode?.type)) {
          return BoxDecoration(
            border: Border.all(width: 2, color: Palette.magenta),
          );
        }
        return BoxDecoration(
          border: Border.all(width: 2, color: Palette.blue),
        );
      }
    }
    return const BoxDecoration();
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
  Widget handleSizeRange(TreeState state, Widget child) {
    if (widget.state.node.type == NType.scaffold) {
      return child;
    }
    final minWidth =
        widget.state.node.getAttributes[DBKeys.minWidth] as FSizeRange;
    final minHeight =
        widget.state.node.getAttributes[DBKeys.minHeight] as FSizeRange;
    final maxWidth =
        widget.state.node.getAttributes[DBKeys.maxWidth] as FSizeRange;
    final maxHeight =
        widget.state.node.getAttributes[DBKeys.maxHeight] as FSizeRange;
    return Container(
      constraints: BoxConstraints(
        minWidth: minWidth.get(
              state: state,
              context: context,
              isWidth: true,
            ) ??
            0.0,
        maxWidth: maxWidth.get(
              state: state,
              context: context,
              isWidth: true,
            ) ??
            double.infinity,
        minHeight: minHeight.get(
              state: state,
              context: context,
              isWidth: false,
            ) ??
            0.0,
        maxHeight: maxHeight.get(
              state: state,
              context: context,
              isWidth: false,
            ) ??
            double.infinity,
      ),
      child: child,
    );
  }

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

  MouseCursor _handleCursorType(String value) {
    switch (value) {
      case "click":
        return SystemMouseCursors.click;
      case "text":
        return SystemMouseCursors.text;
      case "wait":
        return SystemMouseCursors.wait;
      case "progress":
        return SystemMouseCursors.progress;
      case "alias":
        return SystemMouseCursors.alias;
      case "cell":
        return SystemMouseCursors.cell;
      case "contextMenu":
        return SystemMouseCursors.contextMenu;
      case "copy":
        return SystemMouseCursors.copy;
      case "noDrop":
        return SystemMouseCursors.noDrop;
      case "none":
        return SystemMouseCursors.none;
      default:
        return SystemMouseCursors.basic;
    }
  }

  Widget _handleCursor(CNode node, Widget child) {
    final cursor = node.getAttributes[DBKeys.cursorType] as String?;
    if (cursor == null) {
      return child;
    }
    return MouseRegion(
      cursor: _handleCursorType(cursor),
      child: child,
    );
  }

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
      FlytingNodeOptions(
        node: widget.state.node,
        child: MouseRegion(
          hitTestBehavior: HitTestBehavior.opaque,
          onEnter: (e) {
            if (clickable) {
              widget.onHover.call();
            }
          },
          onExit: (e) => setState(() {
            clickable = true;
          }),
          child: Visibility(
            visible: _handleVisibility(state),
            child: Padding(
              padding: _handleMargins(state),
              child: GestureDetectorInEditor(
                key: ValueKey(widget.state.node.id + clickable.toString()),
                node: widget.state.node,
                clickable: clickable,
                onTap: widget.onTap,
                onPanStart: widget.onPanStart,
                onDoubleTap: () => setState(() {
                  clickable = false;
                }),
                child: DecoratedBox(
                  decoration: _handleDecorationChange(
                    state.hoveredNode,
                    state.focusedNode,
                    state.isDeviceCurrentlyFocused,
                    state.isDeviceCurrentlyHovered,
                  ),
                  position: DecorationPosition.foreground,
                  child: _handleCursor(
                    widget.state.node,
                    Transform.rotate(
                      angle: _handleRotation(state),
                      child: Padding(
                        padding: _handlePadding(state),
                        child: GestureDetectorForPlay(
                          state: widget.state,
                          child: handleSlideAnimation(
                            widget.state.node,
                            handleScaleAnimation(
                              widget.state.node,
                              handleFadeInAnimation(
                                widget.state.node,
                                handleSizeRange(
                                  state,
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
    required this.clickable,
    required this.onTap,
    required this.onPanStart,
    required this.onDoubleTap,
  });

  final CNode node;
  final Widget child;
  final bool clickable;
  final VoidCallback onTap;
  final VoidCallback onPanStart;
  final VoidCallback onDoubleTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (state.forPlay) {
      return child;
    }
    if (!clickable) {
      return child;
    }
    return Listener(
        onPointerDown: (e) =>
            context.read<TreeGlobalState>().onRightClick(e, node),
        child: GestureDetector(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          //onPanStart: (e) => onPanStart,
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

  Future<void> _handleLink(CNode node, Widget child) async {
    final link = node.getAttributes[DBKeys.link] as String?;
    if (link == null) {
      return;
    }
    if (await canLaunchUrlString(link)) {
      await launchUrlString(link);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (!state.forPlay) {
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
        executer.doesWorkflowExist(Trigger.onLongPress) ||
        widget.state.node.getAttributes[DBKeys.link] != null) {
      return GestureDetector(
        onTap: () {
          if (executer.doesWorkflowExist(Trigger.onTap)) {
            executer.execute(Trigger.onTap);
          }
          _handleLink(widget.state.node, child);
        },
        onDoubleTap: () => executer.execute(Trigger.onDoubleTap),
        onLongPress: () => executer.execute(Trigger.onLongPress),
        child: child,
      );
    }
    return child;
  }
}

class FlytingNodeOptions extends StatelessWidget {
  const FlytingNodeOptions({
    super.key,
    required this.node,
    required this.child,
  });

  final CNode node;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (state.forPlay) {
      return child;
    }
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    if (node.id != state.focusedNode?.id) {
      return child;
    }
    if (!state.isDeviceCurrentlyFocused) {
      return child;
    }
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.passthrough,
      children: [
        child,
        if (state.nodeControls[node.type] != null)
          Positioned(
            top: -80,
            left: 0,
            right: 0,
            child: DeferPointer(
              paintOnTop: true,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Center(
                  child: Container(
                    padding: EI.mdA,
                    decoration: BoxDecoration(
                      color: theme.bgPrimary,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: theme.txtPrimary.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: state.nodeControls[node.type] ??
                        state.defaultNodeControls,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
