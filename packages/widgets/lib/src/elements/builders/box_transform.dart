import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class BoxTransformBuilder extends StatefulWidget {
  const BoxTransformBuilder({super.key, required this.node});

  final CNode node;

  @override
  State<BoxTransformBuilder> createState() => _BoxTransformBuilderState();
}

class _BoxTransformBuilderState extends State<BoxTransformBuilder> {
  late Rect rect;

  @override
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final device = state.deviceInfo;
    rect = widget.node.rect(device.identifier.type);
    if (state.forPlay) {
      return widget.node.toWidget(
        context: context,
        state: WidgetState(node: widget.node, loop: 0),
      );
    }
    if (state.focusedNode != widget.node) {
      return Positioned(
        top: rect.top,
        left: rect.left,
        width: rect.width,
        height: rect.height,
        child: GestureDetector(
          onTap: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          child: widget.node.toWidget(
            context: context,
            state: WidgetState(node: widget.node, loop: 0),
          ),
        ),
      );
    }
    return _BoxTransformBuilder(node: widget.node);
  }
}

class _BoxTransformBuilder extends StatefulWidget {
  const _BoxTransformBuilder({required this.node});

  final CNode node;

  @override
  State<_BoxTransformBuilder> createState() => __BoxTransformBuilderState();
}

class __BoxTransformBuilderState extends State<_BoxTransformBuilder> {
  @override
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final device = state.deviceInfo;
    return TransformableBox(
      rect: widget.node.rect(device.identifier.type),
      clampingRect: Rect.fromLTWH(
        0,
        0,
        device.screenSize.width,
        device.screenSize.height,
      ),
      onChanged: (rect) {
        TreeGlobalState.onNodeChanged(
          widget.node,
          rect,
          state.deviceInfo.identifier.type,
        );
        setState(() {});
      },
      contentBuilder: (_, rect, flip) => widget.node.toWidget(
        context: context,
        state: WidgetState(node: widget.node, loop: 0),
      ),
    );
  }
}
