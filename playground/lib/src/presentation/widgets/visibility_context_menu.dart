import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../editor/blocs/editor/editor_cubit.dart';
import 'controls/visibility_compact.dart';

Future<void> openVisibilityContextMenu(
  final PointerDownEvent event,
  final BuildContext context,
  final CNode node,
) async {
  final theme = Theme.of(context).extension<ThetaTheme>()!;
  final editorCubit = context.read<EditorCubit>();

  if (node.intrinsicState.type == NType.scaffold) return;

  final overlay = Overlay.of(context).context.findRenderObject() as RenderBox?;
  if (overlay == null) return;

  final listOfAction = [
    PopupMenuItem(
      value: 0,
      height: 0,
      padding: const EdgeInsets.all(Grid.medium),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 150),
        child: VisibilityCompactControls(
          key: ValueKey('VisibilityCompactControls ${node.id}'),
          node: node,
          onVisibilityChanged: (
            visible,
            visibleOnMobile,
            visibleOnTablet,
            visibleOnLaptop,
            visibleOnDesktop,
          ) {
            final oldNode = node.copyWith();
            node
              ..setAttribute(DBKeys.visibility, visible)
              ..setAttribute(DBKeys.visibleOnMobile, visibleOnMobile)
              ..setAttribute(DBKeys.visibleOnTablet, visibleOnTablet)
              ..setAttribute(DBKeys.visibleOnLaptop, visibleOnLaptop)
              ..setAttribute(DBKeys.visibleOnDesktop, visibleOnDesktop);
            editorCubit.updateNodeAttributes(node, oldNode);
          },
        ),
      ),
    ),
  ];
  await showMenu<int>(
    color: theme.bgPrimary,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    clipBehavior: Clip.hardEdge,
    items: listOfAction.toList(),
    position: RelativeRect.fromSize(
      event.position & const Size(48, 48),
      overlay.size,
    ),
  );
}
