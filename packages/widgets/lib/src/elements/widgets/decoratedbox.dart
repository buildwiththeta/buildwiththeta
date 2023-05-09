import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWDecoratedBox extends DecoratedBox {
  /// Returns a [WDecoratedBox] widget in Teta
  OpenWDecoratedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FFill fill,
    required final FBorderRadius borderRadius,
    required final FShadow shadows,
    required final CNode? child,
  }) : super(
          decoration: TetaBoxDecoration.get(
            state: context.watch<TreeState>(),
            context: context,
            fill: fill.get(
              context,
              context.watch<TreeState>().colorStyles,
              context.watch<TreeState>().theme,
            ),
            borderRadius: borderRadius,
            shadow: shadows,
          ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
