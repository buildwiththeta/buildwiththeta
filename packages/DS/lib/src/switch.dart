// Flutter imports:
// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/cupertino.dart';
// Project imports:
import 'package:theta_design_system/theta_design_system.dart';

class CSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) callback;
  const CSwitch({final Key? key, required this.value, required this.callback})
      : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return CupertinoSwitch(
      value: value,
      onChanged: callback,
      activeColor: Palette.buttonColor,
    );
  }
}
