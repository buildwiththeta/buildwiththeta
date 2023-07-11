import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ScaffoldEmptyLabel extends StatelessWidget {
  const ScaffoldEmptyLabel({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      padding: EI.mdA,
      decoration: BoxDecoration(
          color: theme.bgSecondary,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: const Column(
        children: [
          Icon(CupertinoIcons.add, color: Palette.blue),
          Gap(Grid.small),
          TParagraph(
            'Add your first widget by dragging it here or into the device!',
            isCentered: true,
          ),
        ],
      ),
    );
  }
}
