import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

///custom cisrcular progress indicator, optimization
class CCircularProgressIndicator extends StatelessWidget {
  ///ctor
  const CCircularProgressIndicator({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return const RepaintBoundary(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Palette.txtPrimary),
      ),
    );
  }
}
