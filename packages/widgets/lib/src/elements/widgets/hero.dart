import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Hero widgets
/// It wants a [FTextTypeInput] as a tag
class OpenWHero extends Hero {
  /// Returns a Hero widgets
  OpenWHero({
    super.key,
    required final BuildContext context,
    required final WidgetState nodeState,
    required final FTextTypeInput value,
    final CNode? child,
  }) : super(
          tag: value.get(
            state: TreeGlobalState.state,
            context: context,
            loop: nodeState.loop,
          ),
          child: ChildBuilder(
            context: context,
            state: nodeState,
            child: child,
          ),
        );
}
