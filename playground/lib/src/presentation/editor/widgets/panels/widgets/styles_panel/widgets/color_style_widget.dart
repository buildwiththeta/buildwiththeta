import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import '../../../../../../widgets/general_context_menu.dart';
import '../../../../../blocs/styles/styles_cubit.dart';
import '../../sizes.dart';
import 'color_style_dialog.dart';

class ColorStyleWidget extends StatelessWidget {
  const ColorStyleWidget({
    super.key,
    required this.colorStyle,
  });

  final ColorStyleEntity colorStyle;

  void _handleOnStyleDeleted(BuildContext context) =>
      context.read<StylesCubit>().onColorStyleDeleted(colorStyle.id);

  void _handleOnColorStyleSelected(
    PointerDownEvent event,
    BuildContext context,
  ) {
    final stylesCubit = context.read<StylesCubit>();

    openGeneralContextMenu(
      event,
      context,
      const Size(500, 500),
      BlocProvider.value(
        value: stylesCubit,
        child: ColorStyleDialog(colorStyle: colorStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForLargeWidgets(
      onTap: () => null,
      child: HoverWidget(
        hoverChild: Container(
          decoration: BoxDecoration(
            color: theme.bgSecondary,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(
                child: Listener(
                  onPointerDown: (e) => _handleOnColorStyleSelected(e, context),
                  child: Container(
                    height: PanelsElementSizes.elementsHeight,
                    padding: EI.smH,
                    decoration: BoxDecoration(
                      color: theme.bgSecondary,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Row(
                      children: [
                        _CircleColor(colorStyle: colorStyle),
                        const Gap(Grid.small),
                        TParagraph(colorStyle.name),
                      ],
                    ),
                  ),
                ),
              ),
              _ColorDeletionIcon(
                onColorStyleDelete: () => _handleOnStyleDeleted(context),
              ),
            ],
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Listener(
                  onPointerDown: (e) => _handleOnColorStyleSelected(e, context),
                  child: Container(
                    height: PanelsElementSizes.elementsHeight,
                    padding: EI.smH,
                    child: Row(
                      children: [
                        _CircleColor(colorStyle: colorStyle),
                        const Gap(Grid.small),
                        TParagraph(colorStyle.name),
                      ],
                    ),
                  ),
                ),
              ),
              _ColorDeletionIcon(
                onColorStyleDelete: () => _handleOnStyleDeleted(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CircleColor extends StatelessWidget {
  const _CircleColor({
    required this.colorStyle,
  });

  final ColorStyleEntity colorStyle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StylesCubit, StylesState>(builder: (context, state) {
      return state.maybeWhen(
        loaded: (colors, text, theme) => Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            border: Border.all(
              color: colorStyle.light.levels.first.color == 'ffffff'
                  ? Colors.black26
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(5.0),
            color: theme == ThemeMode.light
                ? HexColor(colorStyle.light.levels.first.color)
                : HexColor(colorStyle.dark.levels.first.color),
          ),
        ),
        orElse: () => const SizedBox(),
      );
    });
  }
}

class _ColorDeletionIcon extends StatelessWidget {
  const _ColorDeletionIcon({required this.onColorStyleDelete});

  final VoidCallback onColorStyleDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForSmallWidgets(
      onTap: onColorStyleDelete,
      child: Container(
        padding: EI.smH,
        child: Icon(
          CupertinoIcons.xmark,
          size: 16,
          color: theme.txtPrimary60,
        ),
      ),
    );
  }
}
