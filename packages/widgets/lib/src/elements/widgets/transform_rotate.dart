import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a [WTransformRotate] widget in Teta
/// [value] is a double value
/// [child] is a child widget
/// [key] is a key
/// [context] is a context
/// [state] is a state
class OpenWTransformRotate extends Transform {
  /// Returns a Transform.rotate widget in Teta
  OpenWTransformRotate({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput value,
    required final CNode? child,
  }) : super(
          transform: Matrix4.identity()

            /// Set the entry to 1
            ..setEntry(1, 1, 1)

            /// Rotate Z
            ..rotateZ(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    value.get(
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
