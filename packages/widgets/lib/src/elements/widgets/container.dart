import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

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
    required final FMargins margins,
    required final FMargins paddings,
    required final FFill fill,
    required final FBorderRadius borderRadius,
    required final FBorder borders,
    required final FShadow shadows,
  }) : super(
          child: ChildBuilder(context: context, state: state, child: child),
          width: width.get(
            state: TreeGlobalState.state,
            context: context,
            isWidth: true,
          ),
          height: height.get(
            state: TreeGlobalState.state,
            context: context,
            isWidth: false,
          ),
          margin: margins.get(
            state: TreeGlobalState.state,
            context: context,
          ),
          padding: paddings.get(
            state: TreeGlobalState.state,
            context: context,
          ),
          decoration: TetaBoxDecoration.get(
            state: TreeGlobalState.state,
            context: context,
            fill: fill.get(
              context,
              TreeGlobalState.state.colorStyles,
              TreeGlobalState.state.theme,
            ),
            borderRadius: borderRadius,
            shadow: shadows,
            borders: borders,
          ),
        );
}
