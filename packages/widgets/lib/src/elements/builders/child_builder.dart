import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theta_models/theta_models.dart';

class ChildBuilder extends SingleChildRenderObjectWidget {
  ChildBuilder({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
  }) : super(
          child: child == null
              ? const SizedBox()
              : child.toWidget(
                  context: context,
                  state: state.copyWith(node: child),
                ),
        );

  @override
  RenderConstrainedBox createRenderObject(BuildContext context) {
    return RenderConstrainedBox(additionalConstraints: const BoxConstraints());
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderConstrainedBox renderObject) {
    renderObject.additionalConstraints = const BoxConstraints();
  }
}
