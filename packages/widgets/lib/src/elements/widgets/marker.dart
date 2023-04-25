import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

class OpenWMarker extends StatelessWidget {
  const OpenWMarker({
    super.key,
    required this.state,
    required this.latitude,
    required this.longitude,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput latitude;
  final FTextTypeInput longitude;

  @override
  Widget build(final BuildContext context) {
    return ChildBuilder(
      context: context,
      state: state,
      child: child,
    );
  }
}
