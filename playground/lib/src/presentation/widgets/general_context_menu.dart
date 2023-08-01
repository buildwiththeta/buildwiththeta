import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

Future<void> openGeneralContextMenu(final PointerDownEvent event,
    final BuildContext context, final Size size, final Widget child,
    {final Color? backgroundColor}) async {
  final theme = Theme.of(context).extension<ThetaTheme>()!;

  final overlay = Overlay.of(context).context.findRenderObject() as RenderBox?;
  if (overlay == null) return;

  final listOfAction = [
    PopupMenuItem(
      value: 0,
      height: 0,
      enabled: false,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: child,
      ),
    ),
  ];
  await showMenu<int>(
    color: backgroundColor ?? theme.bgPrimary,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    constraints: BoxConstraints(
      maxWidth: size.width,
      maxHeight: size.height,
    ),
    clipBehavior: Clip.hardEdge,
    items: listOfAction.toList(),
    position: RelativeRect.fromSize(
      event.position & const Size(48, 48),
      overlay.size,
    ),
  );
}
