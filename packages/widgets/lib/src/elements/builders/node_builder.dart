import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:defer_pointer/defer_pointer.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/src/elements/builders/workflow_executer.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';
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
      List<CNode> focusedNodes, bool isDeviceFocused, bool isDeviceHovered) {
    if (isDeviceFocused &&
        focusedNodes.any((element) => element.id == widget.state.node.id)) {
      return BoxDecoration(
        border: Border.all(width: 2, color: Palette.blue),
      );
    }
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

  Widget _displaySpacing(
      TreeState state, EdgeInsets spacing, bool isMargin, Widget child) {
    if (state.forPlay) {
      return child;
    }
    if (state.focusedNode?.id == widget.state.node.id) {
      return Stack(
        children: [
          child,
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: Container(
              color: isMargin
                  ? Colors.green.withOpacity(0.3)
                  : Colors.red.withOpacity(0.3),
              width: spacing.left,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              color: isMargin
                  ? Colors.green.withOpacity(0.3)
                  : Colors.red.withOpacity(0.3),
              width: spacing.right,
              height: double.infinity,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              color: isMargin
                  ? Colors.green.withOpacity(0.3)
                  : Colors.red.withOpacity(0.3),
              width: double.infinity,
              height: spacing.top,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: isMargin
                  ? Colors.green.withOpacity(0.3)
                  : Colors.red.withOpacity(0.3),
              width: double.infinity,
              height: spacing.bottom,
            ),
          ),
        ],
      );
    }
    return child;
  }

  EdgeInsets _handleMargins(TreeState state) {
    return (widget.state.node.getAttributes[DBKeys.margins] as FMargins? ??
            const FMargins(
                margins: [0, 0, 0, 0],
                marginsTablet: null,
                marginsDesktop: null))
        .get(state: state, context: context);
  }

  EdgeInsets _handlePadding(TreeState state) {
    final nodeType = widget.state.node.type;
    if (nodeType == NType.container) {
      // Node use own padding for OpenWContainer
      return EdgeInsets.zero;
    } else {
      return (widget.state.node.getAttributes[DBKeys.padding] as FMargins? ??
              const FMargins(
                  margins: [0, 0, 0, 0],
                  marginsTablet: null,
                  marginsDesktop: null))
          .get(state: state, context: context);
    }
  }

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

  Widget handleOpenWSpacerWidget(CNode node, TreeState state, Widget child) {
    final state = context.read<TreeState>();
    final parents = const FindNodeRendering().findParentsOfElement(
      flatList: state.nodes,
      element: node,
    );
    final parent =
        parents.firstWhereOrNull((element) => element.id == node.parentID);
    if (![NType.column, NType.row].contains(parent?.type)) {
      return child;
    }
    if (parents.indexWhere((element) => element.type == NType.listView) != -1) {
      return child;
    }
    if (widget.state.node.type == NType.spacer) {
      return Expanded(
        flex: int.tryParse(
              (widget.state.node.getAttributes[DBKeys.flexValue]
                          as FTextTypeInput?)
                      ?.get(
                    deviceType: state.deviceType,
                    forPlay: state.forPlay,
                    context: context,
                    loop: 0,
                  ) ??
                  '',
            ) ??
            1,
        child: child,
      );
    }
    if (node.getAttributes[DBKeys.isExpanded] as bool? ?? false) {
      return Expanded(
        flex: int.tryParse(
              (widget.state.node.getAttributes[DBKeys.flexValue]
                          as FTextTypeInput?)
                      ?.get(
                    deviceType: state.deviceType,
                    forPlay: state.forPlay,
                    context: context,
                    loop: 0,
                  ) ??
                  '',
            ) ??
            1,
        child: child,
      );
    }
    return child;
  }

  Widget maybeBounceForSmallWidgets(Widget child) {
    final doesBounce = widget.state.node.getAttributes[DBKeys.doesBounce];
    if (doesBounce == null) {
      return child;
    }
    if (doesBounce == false) {
      return child;
    }
    return BounceForLargeWidgets(
      child: child,
    );
  }

  Widget backgroundBlur(TreeState state, CNode node, Widget child) {
    final blur =
        (node.getAttributes[DBKeys.backgroundBlur] as num?)?.toDouble();
    if (blur == null) {
      return child;
    }
    if (blur == 0) {
      return child;
    }
    final borderRadius =
        node.getAttributes[DBKeys.borderRadius] as FBorderRadius?;
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius.get(context,
            forPlay: state.forPlay, deviceType: state.deviceType),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: child,
        ),
      );
    }
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: child,
      ),
    );
  }

  Widget layerBlur(CNode node, Widget child) {
    final blur = (node.getAttributes[DBKeys.layerBlur] as num?)?.toDouble();
    if (blur == null) {
      return child;
    }
    if (blur == 0) {
      return child;
    }
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
      child: child,
    );
  }

  Widget getOverlays(TreeState treeState, WidgetState state, Widget child) {
    final overlays = state.node.getAttributes[DBKeys.overlays] as List<FFill>?;
    if (overlays == null) {
      return child;
    }
    if (overlays.isEmpty) {
      return child;
    }
    var overlayWidget = child;
    final borderRadius =
        state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius?;
    for (final overlay in overlays.reversed) {
      overlayWidget = DecoratedBox(
        decoration: ThetaBoxDecoration.get(
          state: treeState,
          context: context,
          fill: const NodeOverrideExecuter().executeColor(
            context,
            state,
            overlay.get(
              context,
              treeState.colorStyles,
              treeState.theme,
            ),
          ),
          borderRadius: borderRadius,
          shadow: null,
          borders: null,
        ),
        position: DecorationPosition.foreground,
        child: overlayWidget,
      );
    }
    return overlayWidget;
  }

  Widget _handleMask(CNode node,
      {required Widget ifNotMasked, required Widget ifMasked}) {
    final isMask = node.getAttributes[DBKeys.isMask] as bool? ?? false;
    if (!isMask) return ifNotMasked;
    final blendModeString = node.getAttributes[DBKeys.blendMode] as String?;
    final blendMode =
        EnumToString.fromString(BlendMode.values, blendModeString ?? '');
    final fill = node.getAttributes[DBKeys.fill] as FFill?;
    if (fill == null) {
      return ifNotMasked;
    }
    final gradient = fill.getGradient();
    if (gradient == null) {
      return ifNotMasked;
    }
    return ShaderMask(
      blendMode: blendMode ?? BlendMode.dstOut,
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: ifMasked,
    );
  }

  Widget _handleAlignment(TreeState state, CNode node, Widget child) {
    final alignment = node.getAttributes[DBKeys.nodeAlignment] as FAlign?;
    if (alignment == null) {
      return child;
    }
    return Align(
      alignment: alignment.get(context, forPlay: state.forPlay),
      child: child,
    );
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
      state,
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
          child: _handleAlignment(
            state,
            widget.state.node,
            _displaySpacing(
              state,
              _handleMargins(state),
              true,
              Padding(
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
                      state.focusedNodes,
                      state.isDeviceCurrentlyFocused,
                      state.isDeviceCurrentlyHovered,
                    ),
                    position: DecorationPosition.foreground,
                    child: _handleCursor(
                      widget.state.node,
                      maybeBounceForSmallWidgets(
                        Transform.rotate(
                          angle: _handleRotation(state),
                          child: _displaySpacing(
                            state,
                            _handlePadding(state),
                            false,
                            Padding(
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
                                        _handleMask(
                                          widget.state.node,
                                          ifNotMasked: backgroundBlur(
                                            state,
                                            widget.state.node,
                                            layerBlur(
                                              widget.state.node,
                                              getOverlays(state, widget.state,
                                                  widget.child),
                                            ),
                                          ),
                                          ifMasked: backgroundBlur(
                                            state,
                                            widget.state.node,
                                            layerBlur(
                                              widget.state.node,
                                              getOverlays(
                                                state,
                                                widget.state,
                                                ChildBuilder(
                                                      context: context,
                                                      state:
                                                          widget.state.copyWith(
                                                        node: widget
                                                            .state.node.child,
                                                      ),
                                                      child: widget
                                                          .state.node.child,
                                                    ).build() ??
                                                    const SizedBox.shrink(),
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

  Future<void> _handleChangeVariableText(String varName, String text) async {}

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
        onEnter: (e) => executer.execute(Trigger.onMouseEnter, null),
        onExit: (e) => executer.execute(Trigger.onMouseExit, null),
        onHover: (e) => executer.execute(Trigger.onHover, null),
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
        onTap: () async {
          if (executer.doesWorkflowExist(Trigger.onTap)) {
            executer.execute(Trigger.onTap, null);
            return;
          } else {
            await _handleLink(widget.state.node, child);
            return;
          }
        },
        onDoubleTap: () => executer.execute(Trigger.onDoubleTap, null),
        onLongPress: () => executer.execute(Trigger.onLongPress, null),
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
    if (state.devMode) {
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
                          color: Colors.black.withOpacity(0.2),
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
