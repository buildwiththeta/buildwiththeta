import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

import '../../sizes.dart';

class TreeListVerticalLine extends StatelessWidget {
  const TreeListVerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: 2,
      height: PanelsElementSizes.elementsHeight,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: theme.txtPrimary.withOpacity(0.1),
      ),
    );
  }
}
