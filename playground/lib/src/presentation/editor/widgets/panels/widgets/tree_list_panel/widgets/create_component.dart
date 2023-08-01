import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class TreeListCreateComponent extends StatelessWidget {
  const TreeListCreateComponent({
    super.key,
    required this.node,
    required this.onCreateComponent,
  });

  final CNode node;
  final Function() onCreateComponent;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    if (node.type != NType.component && node.type != NType.scaffold) {
      return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: BounceForSmallWidgets(
          message: 'Create a component from this tree',
          onTap: () => onCreateComponent.call(),
          child: Icon(
            CupertinoIcons.hexagon,
            size: 18,
            color: theme.txtPrimary,
          ),
        ),
      );
    }
    return const SizedBox();
  }
}
