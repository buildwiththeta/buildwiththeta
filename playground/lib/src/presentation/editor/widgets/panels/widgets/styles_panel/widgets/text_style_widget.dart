import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../../widgets/general_context_menu.dart';
import '../../../../../blocs/styles/styles_cubit.dart';
import '../../sizes.dart';
import 'text_style_dialog.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({
    super.key,
    required this.textStyle,
  });

  final TextStyleEntity textStyle;

  void _handleOnStyleDeleted(BuildContext context) =>
      context.read<StylesCubit>().onTextStyleDeleted(textStyle.id);

  void _handleOnTextStyleSelected(
    PointerDownEvent event,
    BuildContext context,
  ) {
    final stylesCubit = context.read<StylesCubit>();

    openGeneralContextMenu(
      event,
      context,
      const Size(500, 600),
      BlocProvider.value(
        value: stylesCubit,
        child: TextStyleDialog(textStyle: textStyle),
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
                  onPointerDown: (e) => _handleOnTextStyleSelected(e, context),
                  child: Container(
                    height: PanelsElementSizes.elementsHeight,
                    padding: EI.smH,
                    decoration: BoxDecoration(
                      color: theme.bgSecondary,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Row(
                      children: [
                        TextPreview(textStyle: textStyle),
                        const Gap(Grid.small),
                        TParagraph(textStyle.name),
                      ],
                    ),
                  ),
                ),
              ),
              _TextDeletionIcon(
                onTextStyleDelete: () => _handleOnStyleDeleted(context),
              ),
            ],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Listener(
                  onPointerDown: (e) => _handleOnTextStyleSelected(e, context),
                  child: Container(
                    height: PanelsElementSizes.elementsHeight,
                    padding: EI.smH,
                    child: Row(
                      children: [
                        TextPreview(textStyle: textStyle),
                        const Gap(Grid.small),
                        TParagraph(textStyle.name),
                      ],
                    ),
                  ),
                ),
              ),
              _TextDeletionIcon(
                onTextStyleDelete: () => _handleOnStyleDeleted(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextPreview extends StatelessWidget {
  const TextPreview({
    super.key,
    required this.textStyle,
  });

  final TextStyleEntity textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Center(
      child: Text(
        'Aa',
        style: GoogleFonts.getFont(
          textStyle.fontFamily,
          fontSize: 14,
          fontWeight: textStyle.fontWeight.weight,
          color: theme.txtPrimary,
        ),
      ),
    );
  }
}

class _TextDeletionIcon extends StatelessWidget {
  const _TextDeletionIcon({required this.onTextStyleDelete});

  final VoidCallback onTextStyleDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForSmallWidgets(
      onTap: onTextStyleDelete,
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
