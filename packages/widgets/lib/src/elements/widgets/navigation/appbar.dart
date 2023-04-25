import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWAppBar extends StatelessWidget {
  /// Returns a empty widget which contains all the app bar widgets
  const OpenWAppBar({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ChildBuilder(
        context: context,
        state: state,
        child: child,
      ),
    );
  }
}
