import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

///custom cisrcular progress indicator, optimization
class ThetaCircularProgressIndicator extends StatelessWidget {
  ///ctor
  const ThetaCircularProgressIndicator({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return RepaintBoundary(
      child: CupertinoActivityIndicator(
        color: Theme.of(context).extension<ThetaTheme>()!.txtPrimary,
      ),
    );
  }
}
