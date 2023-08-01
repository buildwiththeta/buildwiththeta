import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../blocs/styles/styles_cubit.dart';
import 'controls/fill.dart';

class ColorStyleDialog extends StatefulWidget {
  const ColorStyleDialog({super.key, required this.colorStyle});

  final ColorStyleEntity colorStyle;

  @override
  State<ColorStyleDialog> createState() => _ColorStyleDialogState();
}

class _ColorStyleDialogState extends State<ColorStyleDialog> {
  final colorStyleNameController = TextEditingController();
  late FFill light;
  late FFill dark;
  @override
  void initState() {
    colorStyleNameController.text = widget.colorStyle.name;
    light = widget.colorStyle.light;
    dark = widget.colorStyle.dark;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EI.mdA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline2(
                'Edit Color Style',
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(null);
                  },
                  icon: const Icon(CupertinoIcons.xmark))
            ],
          ),
          const Gap(Grid.medium),
          const THeadline3(
            'Name',
          ),
          const Gap(Grid.small),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ThetaTextField(
              controller: colorStyleNameController,
              placeholder: 'Color Style Name',
              onChanged: (final String text) {
                setState(() {});
              },
            ),
          ),
          const Gap(Grid.medium),
          const THeadline3('Light'),
          FillControl(
            fill: light,
            callBack: (fill) {
              light = fill;
            },
          ),
          const Gap(Grid.medium),
          const THeadline3('Dark'),
          FillControl(
            fill: dark,
            callBack: (fill) {
              dark = fill;
            },
          ),
          const Gap(Grid.medium),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ThetaDesignButton(
                isPrimary: false,
                'Cancel',
                onTap: () {
                  Navigator.of(context, rootNavigator: true).pop(null);
                },
              ),
              const Gap(Grid.small),
              IgnorePointer(
                ignoring: colorStyleNameController.text.isEmpty,
                child: ThetaDesignButton(
                  isPrimary: colorStyleNameController.text.isNotEmpty,
                  'Save',
                  onTap: () {
                    final newColorStyle = const ColorStylesMapper().copyWith(
                      widget.colorStyle,
                      name: colorStyleNameController.text,
                      light: light,
                      fill: dark,
                    );
                    context
                        .read<StylesCubit>()
                        .onColorStyleUpdated(newColorStyle);
                    Navigator.of(context, rootNavigator: true).pop(null);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
