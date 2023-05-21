import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWIgnorePointer extends IgnorePointer {
  /// Returns a IgnorePointer
  OpenWIgnorePointer({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput value,
    final CNode? child,
  }) : super(
          ignoring: value.get(
                state: context.watch<TreeState>(),
                context: context,
                loop: state.loop,
              ) ==
              'true',
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
