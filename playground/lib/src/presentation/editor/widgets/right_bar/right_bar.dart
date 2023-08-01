import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../blocs/editor/editor_cubit.dart';
import 'tabs/node_tab.dart';
import 'tabs/props_tab.dart';

class EditorRightBar extends StatefulWidget {
  const EditorRightBar({super.key});

  @override
  State<EditorRightBar> createState() => _EditorRightBarState();
}

class _EditorRightBarState extends State<EditorRightBar> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final editorCubit = context.watch<EditorCubit>();
    final state = editorCubit.state;

    final focusedNode = state.maybeWhen(
      loaded: (state) => state.focusedNode,
      orElse: () => null,
    );

    if (focusedNode == null) {
      return const SizedBox.shrink();
    }
    final parent = state.maybeWhen(
      loaded: (state) => state.nodes.firstWhereOrNull(
        (element) => element.id == focusedNode.parentID,
      ),
      orElse: () => null,
    );

    late final Widget tab;
    switch (selectedTab) {
      case 0:
        tab = NodeTab(
          key: ValueKey('NodeTab ${focusedNode.id} ${parent?.id}'),
          focusedNode: focusedNode,
          focusedNodeParent: parent,
          oldFocusedNode: focusedNode.copyWith(),
        );
        break;
      case 1:
        tab = PropsTab(
          key: ValueKey('PropsTab ${focusedNode.id}'),
          focusedNode: focusedNode,
          oldFocusedNode: focusedNode.copyWith(),
        );
        break;
      default:
        tab = const SizedBox.shrink();
    }

    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 320,
        margin: const EdgeInsets.all(Grid.small),
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
          children: [
            // Tab Bar
            Container(
              padding: const EdgeInsets.all(Grid.small),
              child: Row(
                children: [
                  Expanded(
                    child: _TabBarIconButton(
                      icon: CupertinoIcons.cube,
                      label: 'Node',
                      onTap: () => setState(() => selectedTab = 0),
                      isSelected: selectedTab == 0,
                    ),
                  ),
                  if (focusedNode.type != NType.scaffold)
                    Expanded(
                      child: _TabBarIconButton(
                        icon: CupertinoIcons.square_stack_3d_down_right,
                        label: 'Props',
                        onTap: () => setState(() => selectedTab = 1),
                        isSelected: selectedTab == 1,
                      ),
                    ),
                ],
              ),
            ),
            // Tab Content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(Grid.small),
                  child: tab,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabBarIconButton extends StatelessWidget {
  const _TabBarIconButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForSmallWidgets(
      message: label,
      onTap: onTap,
      child: Container(
        padding: EI.smV,
        decoration: isSelected
            ? BoxDecoration(
                color: theme.buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: theme.buttonColor.withOpacity(0.3),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              )
            : null,
        width: 60,
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : theme.txtPrimary30,
            ),
            const Gap(4),
            CText(
              label,
              typography: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                height: 1,
                letterSpacing: 0,
              ),
              color: isSelected ? Colors.white : theme.txtPrimary30,
            ),
          ],
        ),
      ),
    );
  }
}
