import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/workflow_executer.dart';

class NodeBuilder extends StatefulWidget {
  const NodeBuilder({
    super.key,
    required this.node,
    required this.child,
    required this.onTap,
    required this.onPanStart,
  });

  final CNode node;
  final Widget child;

  final Function() onTap;
  final Function() onPanStart;

  @override
  State<NodeBuilder> createState() => _NodeBuilderState();
}

class _NodeBuilderState extends State<NodeBuilder> {
  BoxDecoration _handleDecorationChange(CNode? focusNode) =>
      (focusNode?.id == widget.node.id)
          ? BoxDecoration(
              border: Border.all(width: 2, color: Palette.blue),
            )
          : const BoxDecoration();

  EdgeInsets _handleMargins(TreeState state) =>
      (widget.node.getAttributes[DBKeys.margins] as FMargins? ??
              const FMargins(
                  margins: [0, 0, 0, 0],
                  marginsTablet: [0, 0, 0, 0],
                  marginsDesktop: [0, 0, 0, 0]))
          .get(state: state, context: context);

  EdgeInsets _handlePadding(TreeState state) =>
      (widget.node.getAttributes[DBKeys.padding] as FMargins? ??
              const FMargins(
                  margins: [0, 0, 0, 0],
                  marginsTablet: [0, 0, 0, 0],
                  marginsDesktop: [0, 0, 0, 0]))
          .get(state: state, context: context);

  bool _handleVisibility(TreeState state) {
    final visibility = widget.node.getAttributes[DBKeys.visibility] as bool?;
    return (visibility == false)
        ? false
        : ((visibility ?? true) && state.forPlay)
            ? _handlePlayVisibility()
            : _handleNotPlayVisibility(state);
  }

  bool _handlePlayVisibility() => MediaQuery.of(context).size.width > 1200
      ? (widget.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ?? true)
      : MediaQuery.of(context).size.width > 834
          ? (widget.node.getAttributes[DBKeys.visibleOnLaptop] as bool? ?? true)
          : MediaQuery.of(context).size.width > 600
              ? (widget.node.getAttributes[DBKeys.visibleOnTablet] as bool? ??
                  true)
              : (widget.node.getAttributes[DBKeys.visibleOnMobile] as bool? ??
                  true);

  bool _handleNotPlayVisibility(TreeState state) => state.deviceType ==
          DeviceType.desktop
      ? (widget.node.getAttributes[DBKeys.visibleOnDesktop] as bool? ?? true)
      : state.deviceType == DeviceType.laptop
          ? (widget.node.getAttributes[DBKeys.visibleOnLaptop] as bool? ?? true)
          : state.deviceType == DeviceType.tablet
              ? (widget.node.getAttributes[DBKeys.visibleOnTablet] as bool? ??
                  true)
              : (widget.node.getAttributes[DBKeys.visibleOnMobile] as bool? ??
                  true);

  double _handleRotation(TreeState state) => double.parse(
      (widget.node.getAttributes[DBKeys.rotation] as FTextTypeInput?)?.value ??
          '0');

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    return Visibility(
      visible: _handleVisibility(state),
      child: Padding(
        padding: _handleMargins(state),
        child: DecoratedBox(
          decoration: _handleDecorationChange(state.focusedNode),
          position: DecorationPosition.foreground,
          child: Transform.rotate(
            angle: _handleRotation(state),
            child: Padding(
              padding: _handlePadding(state),
              child: GestureDetectorInEditor(
                node: widget.node,
                onTap: widget.onTap,
                onPanStart: widget.onPanStart,
                child: GestureDetectorForPlay(
                  node: widget.node,
                  child: widget.child,
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
    required this.node,
    required this.child,
  });

  final CNode node;
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
      nodeID: widget.node.id,
      nodeName: widget.node.name!,
      workflows: state.workflows,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (!state.forPlay && state.workflows.isEmpty) {
      return widget.child;
    }
    return MouseRegion(
      onEnter: (e) => executer.execute(Trigger.onMouseEnter),
      onExit: (e) => executer.execute(Trigger.onMouseExit),
      onHover: (e) => executer.execute(Trigger.onHover),
      child: GestureDetector(
        onTap: () => executer.execute(Trigger.onTap),
        onDoubleTap: () => executer.execute(Trigger.onDoubleTap),
        onLongPress: () => executer.execute(Trigger.onLongPress),
        child: widget.child,
      ),
    );
  }
}
