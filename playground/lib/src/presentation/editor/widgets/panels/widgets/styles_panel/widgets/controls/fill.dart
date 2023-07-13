import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

import 'solid.dart';

class FillControl extends StatefulWidget {
  const FillControl({
    final Key? key,
    required this.fill,
    required this.callBack,
  }) : super(key: key);

  final FFill fill;
  final Function(FFill) callBack;

  @override
  _FillControlState createState() => _FillControlState();
}

class _FillControlState extends State<FillControl> {
  FFill? fill;

  @override
  void initState() {
    super.initState();
    fill = widget.fill;
  }

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SolidFillControl(
        fill: fill!,
        callBack: widget.callBack,
      ),
    );
  }
}
