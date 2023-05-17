import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignPopupButton extends StatelessWidget {
  const ThetaDesignPopupButton({
    final Key? key,
    required this.title,
    required this.shortcut,
    this.icon,
  }) : super(key: key);

  final String title;
  final String shortcut;
  final IconData? icon;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return HoverWidget(
      hoverChild: Container(
        decoration: const BoxDecoration(
          color: Colors.white12,
        ),
        padding: EI.smA,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null)
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                    color: theme.txtPrimary,
                  ),
                  const Gap(Grid.small),
                ],
              ),
            THeadline3(
              title,
            ),
            const Gap(Grid.small),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: TDetailLabel(
                shortcut,
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: EI.smA,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null)
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                    color: theme.txtPrimary,
                  ),
                  const Gap(Grid.small),
                ],
              ),
            THeadline3(
              title,
            ),
            const Gap(Grid.small),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: TDetailLabel(
                shortcut,
                color: theme.txtPrimary.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
