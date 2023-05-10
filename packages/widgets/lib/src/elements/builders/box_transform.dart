import 'package:device_frame/device_frame.dart';
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

  bool isStartOrStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.start || v == ResponsiveAlignment.stretch;
  bool isEndOrStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.end || v == ResponsiveAlignment.stretch;
  bool isStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.stretch;

  @override
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final device = state.deviceInfo;
    rect = widget.node.rect(device.identifier.type);
    if (state.focusedNode?.id != widget.node.id || state.forPlay) {
      final deviceForChecks = widget.node.doesRectExist(device.identifier.type)
          ? device
          : Devices.ios.iPhone13;
      final top = isStartOrStretchAlign(widget.node.verticalAlignment)
          ? rect.top
          : null;
      final bottom = isEndOrStretchAlign(widget.node.verticalAlignment)
          ? deviceForChecks.screenSize.height - rect.bottom
          : null;
      final left = isStartOrStretchAlign(widget.node.horizontalAlignment)
          ? rect.left
          : null;
      final right = isEndOrStretchAlign(widget.node.horizontalAlignment)
          ? deviceForChecks.screenSize.width - rect.right
          : null;
      final width =
          isStretchAlign(widget.node.horizontalAlignment) ? null : rect.width;
      final height =
          isStretchAlign(widget.node.verticalAlignment) ? null : rect.height;

      return Positioned(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        width: width,
        height: height,
        child: GestureDetector(
          onTap: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          onPanStart: (e) {
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
