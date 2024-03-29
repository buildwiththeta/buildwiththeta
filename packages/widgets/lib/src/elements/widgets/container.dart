import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a Container widget
/// It requires a [width] and [height] for the width and height properties
/// It takes a [child] of type [CNode] as child
/// It requires a [margins] and [paddings] for the margin and padding properties
/// It requires a [fill] for the decoration property
/// It requires a [borderRadius] for the decoration property
/// It requires a [borders] for the decoration property
/// It requires a [shadows] for the decoration property
class OpenWContainer extends Container {
  /// Returns a [WContainer] widget in Teta
  OpenWContainer({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
    required final FSize width,
    required final FSize height,
    required final FMargins paddings,
    required final FFill fill,
    required final FBorderRadius borderRadius,
    required final FBorder borders,
    required final FShadow shadows,
  }) : super(
          child: ChildBuilder(context: context, state: state, child: child)
              .build(),
          width: isParentOfScaffold(state, context.watch<TreeState>())
              ? null
              : width.get(
                  forPlay: context.watch<TreeState>().forPlay,
                  deviceType: context.watch<TreeState>().deviceType,
                  deviceInfo: context.watch<TreeState>().deviceInfo,
                  context: context,
                  isWidth: true,
                ),
          height: isParentOfScaffold(state, context.watch<TreeState>())
              ? null
              : height.get(
                  forPlay: context.watch<TreeState>().forPlay,
                  deviceType: context.watch<TreeState>().deviceType,
                  deviceInfo: context.watch<TreeState>().deviceInfo,
                  context: context,
                  isWidth: false,
                ),
          padding: paddings.get(
            state: context.watch<TreeState>(),
            context: context,
          ),
          decoration: ThetaBoxDecoration.get(
            state: context.watch<TreeState>(),
            context: context,
            fill: const NodeOverrideExecuter().executeColor(
              context,
              state,
              fill,
            ),
            borderRadius: borderRadius,
            shadow: shadows,
            borders: borders,
          ),
          clipBehavior: Clip.none,
        );

  static bool isParentOfScaffold(WidgetState nodeState, TreeState state) {
    final parent = state.nodes
        .firstWhereOrNull((element) => element.id == nodeState.node.parentID);
    if (parent == null) return false;
    return parent.type == NType.scaffold;
  }
}
