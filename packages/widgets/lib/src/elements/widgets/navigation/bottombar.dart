import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_models/theta_models.dart';

class OpenWBottomBar extends StatelessWidget {
  /// Returns a empty widget which contains all the bottom bar widgets
  const OpenWBottomBar({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  Widget build(final BuildContext context) {
    return ChildBuilder(
      context: context,
      state: state,
      child: child,
    );
  }
}
