import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

import '../../../../blocs/editor/editor_cubit.dart';
import 'widgets/element.dart';

class TreeListPanel extends StatelessWidget {
  const TreeListPanel({super.key});

  @override
  Widget build(final BuildContext context) {
    return Column(
      children: [
        const Gap(Grid.small),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: Grid.small),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.list_bullet_indent,
                size: 16,
              ),
              Gap(Grid.small),
              TParagraph('Widget Hierarchy'),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(
              top: Grid.small,
              bottom: Grid.large,
            ),
            itemCount: 1,
            itemBuilder: (final context, final index) =>
                BlocBuilder<EditorCubit, EditorState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (state) {
                  return TreeListElement(
                    key: ValueKey('TreeListElement root ${state.nodes}'),
                    node: state.rootNode,
                    index: 0,
                    onRightClick: (
                      e,
                      node,
                    ) =>
                        null,
                    onAdd: (node, parent) =>
                        context.read<EditorCubit>().onNodeAdded(
                              node: node,
                              parentID: parent.id,
                              customIndex: parent.children?.length.toDouble(),
                              offset: null,
                            ),
                    onAddBetween: (node, parent, parentChild) =>
                        context.read<EditorCubit>().onNodeAddedBetween(
                              node: node,
                              parentID: parent.id,
                              parentChild: parentChild,
                              customIndex: null,
                            ),
                    onMove: (e, newParent, index) => null,
                    onNodeFocused: (id) =>
                        context.read<EditorCubit>().onNodeFocused(id),
                    onNodeHovered: (id) => null,
                    onNodeRemoved: (id) =>
                        context.read<EditorCubit>().onFocusedNodeRemoved(),
                  );
                },
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
