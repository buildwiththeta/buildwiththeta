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
          width: width.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          height: height.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: false,
          ),
          padding: paddings.get(
            state: context.watch<TreeState>(),
            context: context,
          ),
          decoration: TetaBoxDecoration.get(
            state: context.watch<TreeState>(),
            context: context,
            fill: const NodeOverrideExecuter().executeColor(
              context,
              state,
              fill.get(
                context,
                context.watch<TreeState>().colorStyles,
                context.watch<TreeState>().theme,
              ),
            ),
            borderRadius: borderRadius,
            shadow: shadows,
            borders: borders,
          ),
          clipBehavior: Clip.none,
        );
}
