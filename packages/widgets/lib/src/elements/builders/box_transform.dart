import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class BoxTransformBuilder extends StatelessWidget {
  const BoxTransformBuilder({super.key, required this.node});

  final CNode node;

  @override
  Widget build(BuildContext context) {
    if (TreeGlobalState.state.forPlay) {
      return node.toWidget(
        context: context,
        state: WidgetState(node: node, loop: 0),
      );
    }
    if (TreeGlobalState.state.focusedNode != node) {
      return GestureDetector(
        onTap: () => TreeGlobalState.onNodeFocused(node),
        child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          position: DecorationPosition.foreground,
          child: node.toWidget(
            context: context,
            state: WidgetState(node: node, loop: 0),
          ),
        ),
      );
    }
    return _BoxTransformBuilder(node: node);
  }
}

class _BoxTransformBuilder extends StatefulWidget {
  const _BoxTransformBuilder({required this.node});

  final CNode node;

  @override
  State<_BoxTransformBuilder> createState() => _BoxTransformBuilderState();
}

class _BoxTransformBuilderState extends State<_BoxTransformBuilder> {
  late final TransformableBoxController controller;

  @override
  void initState() {
    super.initState();
    final device = TreeGlobalState.state.deviceInfo;
    controller = TransformableBoxController();
    controller.setRect(widget.node.rect(device.identifier.type));
    final actualDeviceSize = device.screenSize;
    controller.setClampingRect(Rect.fromLTWH(
      0,
      0,
      actualDeviceSize.width,
      actualDeviceSize.height,
    ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TransformableBox(
      controller: controller,
      onChanged: (rect) {
        TreeGlobalState.onNodeChanged(
          widget.node,
          rect,
          TreeGlobalState.state.deviceInfo.identifier.type,
        );
        setState(() {});
      },
      contentBuilder: (context, rect, flip) => widget.node.toWidget(
          context: context, state: WidgetState(node: widget.node, loop: 0)),
    );
  }
}
