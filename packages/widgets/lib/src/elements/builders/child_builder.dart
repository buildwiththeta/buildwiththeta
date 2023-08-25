import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
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
                      context.read<TreeGlobalState>().onNodeHovered(
                          child, context.read<TreeState>().deviceType);
                    },
                    onTap: () {
                      context.read<TreeGlobalState>().onNodeFocused(
                          child, context.read<TreeState>().deviceType);
                    },
                    onPanStart: () {
                      context.read<TreeGlobalState>().onNodeFocused(
                          child, context.read<TreeState>().deviceType);
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
