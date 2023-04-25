import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWDrawer extends StatelessWidget {
  /// Returns a empty widget which contains all the drawer widgets
  const OpenWDrawer({
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
