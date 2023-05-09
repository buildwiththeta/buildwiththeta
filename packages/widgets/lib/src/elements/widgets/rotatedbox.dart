import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a RotatedBox widget in Teta
/// [quarterTurns] is a number of quarter turns the child should be rotated
/// [child] is a child widget
class OpenWRotatedBox extends RotatedBox {
  /// Returns a [RotatedBox] widget in Teta
  OpenWRotatedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput quarterTurns,
    required final CNode? child,
  }) : super(
          /// Get the value from the state and convert it to an int
          quarterTurns: int.tryParse(
                quarterTurns.get(
                  state: context.watch<TreeState>(),
                  loop: state.loop,
                  context: context,
                ),
              ) ??

              /// If the value is null, return 0
              0,
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
