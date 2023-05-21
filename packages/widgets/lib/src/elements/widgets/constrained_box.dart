import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a [WConstrainedBox] widget in Teta
/// It requires a [minWidth], [minHeight], [maxWidth] and [maxHeight] for the BoxConstraints property
/// It takes a [child] of type [CNode] as child
class OpenWConstrainedBox extends ConstrainedBox {
  /// Returns a [WConstrainedBox] widget in Teta
  OpenWConstrainedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FSize minWidth,
    required final FSize minHeight,
    required final FSize maxWidth,
    required final FSize maxHeight,
    required final CNode? child,
  }) : super(
          constraints: BoxConstraints(
            minWidth: minWidth.get(
                  state: context.watch<TreeState>(),
                  context: context,
                  isWidth: true,
                ) ??
                0,
            minHeight: minHeight.get(
                  state: context.watch<TreeState>(),
                  context: context,
                  isWidth: false,
                ) ??
                0,
            maxWidth: maxWidth.get(
                  state: context.watch<TreeState>(),
                  context: context,
                  isWidth: true,
                ) ??
                double.infinity,
            maxHeight: maxHeight.get(
                  state: context.watch<TreeState>(),
                  context: context,
                  isWidth: false,
                ) ??
                double.infinity,
          ),
          child: ChildBuilder(context: context, state: state, child: child),
        );
}
