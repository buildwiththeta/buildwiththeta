import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/src/elements/builders/node_builder.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class ChildBuilder extends SingleChildRenderObjectWidget {
  ChildBuilder({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
  }) : super(
            child: child == null
                ? const NodeOverrideExecuter()
                    .executeChild(context, state, const SizedBox.shrink())
                : NodeBuilder(
                    state: state.copyWith(node: child),
                    onHover: () {
                      TreeGlobalState.onNodeHovered(child);
                    },
                    onTap: () {
                      TreeGlobalState.onNodeFocused(child);
                    },
                    onPanStart: () {
                      TreeGlobalState.onNodeFocused(child);
                    },
                    child: const NodeOverrideExecuter().executeChild(
                      context,
                      state,
                      child.toWidget(
                        context: context,
                        state: state.copyWith(node: child),
                      ),
                    ),
                  ));

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
