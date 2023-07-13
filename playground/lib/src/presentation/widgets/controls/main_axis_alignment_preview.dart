import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class MainAxisAlignmentPreview extends StatelessWidget {
  const MainAxisAlignmentPreview({
    super.key,
    required this.node,
    required this.mainAxisAlignment,
  });

  final CNode node;
  final MainAxisAlignment mainAxisAlignment;

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
      height: node.type == NType.column ? 150 : null,
      padding: EI.smA,
      child: Center(
        child: node.type == NType.row
            ? Row(
                mainAxisAlignment: mainAxisAlignment,
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
                mainAxisAlignment: mainAxisAlignment,
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
      ),
    );
  }
}
