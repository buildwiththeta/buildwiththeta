import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a [WTransformTranslate] widget in Teta
/// [valueX] is a value for the X axis
/// [valueY] is a value for the Y axis
class OpenWTransformTranslate extends Transform {
  /// Returns a tooltip widget in Teta
  OpenWTransformTranslate({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput valueX,
    required final FTextTypeInput valueY,
    required final CNode? child,
  }) : super(
          transform: Matrix4.identity()

            /// Set the entry to 1
            ..setEntry(1, 1, 1)

            /// Translate the child
            ..translate(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    valueX.get(
                      state: context.watch<TreeState>(),
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 0
                  0,

              /// Get the value from the state and convert it to a double
              double.tryParse(
                    valueY.get(
                      state: context.watch<TreeState>(),
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 0
                  0,
            ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
