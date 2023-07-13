import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class CrossAxisAlignmentPreview extends StatelessWidget {
  const CrossAxisAlignmentPreview({
    super.key,
    required this.node,
    required this.crossAxisAlignment,
  });

  final CNode node;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.txtPrimary30,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(Grid.small),
        ),
      ),
      height: node.type == NType.row ? 150 : null,
      width: double.maxFinite,
      padding: EI.smA,
      child: node.type == NType.row
          ? Row(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('1')),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('2')),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('3')),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('1')),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('2')),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.txtPrimary30,
                    ),
                    color: theme.txtPrimary30,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(child: TDetailLabel('3')),
                ),
              ],
            ),
    );
  }
}
