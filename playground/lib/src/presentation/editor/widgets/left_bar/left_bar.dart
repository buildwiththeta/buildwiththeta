import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../blocs/panels/panels_cubit.dart';
import 'widgets/left_bar_menu_item.dart';

class EditorLeftBar extends StatelessWidget {
  const EditorLeftBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: 84,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: Grid.small),
      margin: const EdgeInsets.only(left: Grid.small, top: Grid.small),
      decoration: BoxDecoration(
        color: theme.bgPrimary,
        borderRadius: const BorderRadius.all(Radius.circular(Grid.small)),
        boxShadow: [
          BoxShadow(
            color: theme.bgGrey,
            offset: const Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<PanelsCubit, PanelsState>(
            builder: (context, state) => EditorLeftBarMenuItem(
              label: 'Elements',
              icon: CupertinoIcons.square_on_square,
              isSelected: state.whenOrNull(add: () => true) == true,
              onSelected: () =>
                  context.read<PanelsCubit>().update(PanelsEnum.add),
            ),
          ),
          const Gap(Grid.small),
          DragTarget<DragTargetSingleNodeModel>(
            onWillAccept: (data) {
              context.read<PanelsCubit>().update(PanelsEnum.tree);
              return true;
            },
            builder: (context, _, __) => BlocBuilder<PanelsCubit, PanelsState>(
              builder: (context, state) => EditorLeftBarMenuItem(
                label: 'Tree List',
                icon: CupertinoIcons.list_bullet_indent,
                isSelected: state.whenOrNull(tree: () => true) == true,
                onSelected: () =>
                    context.read<PanelsCubit>().update(PanelsEnum.tree),
              ),
            ),
          ),
          const Gap(Grid.small),
          BlocBuilder<PanelsCubit, PanelsState>(
            builder: (context, state) => EditorLeftBarMenuItem(
              label: 'Styles',
              icon: CupertinoIcons.square_grid_2x2,
              isSelected: state.whenOrNull(styles: () => true) == true,
              onSelected: () =>
                  context.read<PanelsCubit>().update(PanelsEnum.styles),
            ),
          ),
        ],
      ),
    );
  }
}
