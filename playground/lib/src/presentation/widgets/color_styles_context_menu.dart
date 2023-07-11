import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart' hide HexColor;

Future<void> openColorStylesContextMenu(
  final PointerDownEvent event,
  final BuildContext context,
  final ColorStyles colorStyles,
  final ThemeMode mode,
  final Function(ColorStyleEntity) callback,
) async {
  final theme = Theme.of(context).extension<ThetaTheme>()!;

  final overlay = Overlay.of(context).context.findRenderObject() as RenderBox?;
  if (overlay == null) return;

  final listOfAction = [
    PopupMenuItem(
      value: 0,
      height: 0,
      enabled: false,
      padding: const EdgeInsets.all(Grid.medium),
      child: SizedBox(
        width: 300,
        height: 350,
        child: ListView.builder(
          itemCount: colorStyles.length,
          itemBuilder: (_, i) {
            return GestureDetector(
              onTap: () => {callback(colorStyles[i]), Navigator.pop(context)},
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Grid.small,
                    vertical: 4,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            color: HexColor(
                              mode == ThemeMode.light
                                  ? colorStyles[i]
                                      .light
                                      .getHexColor(context, colorStyles, mode)
                                  : colorStyles[i]
                                      .dark
                                      .getHexColor(context, colorStyles, mode),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                      ),
                      const Gap(Grid.small),
                      TParagraph(colorStyles[i].name),
                    ],
                  ),
                ),
              ),
            );
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
