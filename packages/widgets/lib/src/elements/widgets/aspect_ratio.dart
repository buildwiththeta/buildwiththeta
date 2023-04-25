import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_models/theta_models.dart';

class OpenWAspectRation extends SingleChildRenderObjectWidget {
  OpenWAspectRation({
    super.key,
    required final BuildContext context,
    required this.nodeState,
    required this.aspectRatio,
    required final CNode? child,
  }) : super(
          child: ChildBuilder(context: context, state: nodeState, child: child),
        );

  final WidgetState nodeState;
  final FTextTypeInput aspectRatio;

  double _getAspectRation(BuildContext context) {
    final val = aspectRatio.get(
      state: TreeGlobalState.state,
      context: context,
      loop: nodeState.loop,
    );
    return double.tryParse(val) != null ? double.parse(val) : 0.5;
  }

  @override
  RenderAspectRatio createRenderObject(BuildContext context) =>
      RenderAspectRatio(aspectRatio: _getAspectRation(context));

  @override
  void updateRenderObject(
      BuildContext context, RenderAspectRatio renderObject) {
    renderObject.aspectRatio = _getAspectRation(context);
  }
}
