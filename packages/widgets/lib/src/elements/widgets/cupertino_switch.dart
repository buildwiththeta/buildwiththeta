// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:theta_models/theta_models.dart';

class OpenWCupertinoSwitch extends StatefulWidget {
  /// Returns a Gesture Detector
  const OpenWCupertinoSwitch(
    final Key? key, {
    required this.state,
    this.child,
  }) : super(key: key);

  final WidgetState state;
  final CNode? child;

  @override
  State<OpenWCupertinoSwitch> createState() => _WCupertinoSwitchState();
}

class _WCupertinoSwitchState extends State<OpenWCupertinoSwitch> {
  bool flag = false;

  @override
  Widget build(final BuildContext context) {
    return CupertinoSwitch(
      onChanged: (final value) {
        if (mounted) {
          setState(() => flag = value);
        }
      },
      value: flag,
    );
  }
}
