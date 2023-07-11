import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../blocs/styles/styles_cubit.dart';

class TextStyleDialog extends StatefulWidget {
  const TextStyleDialog({super.key, required this.textStyle});

  final TextStyleEntity textStyle;

  @override
  State<TextStyleDialog> createState() => _TextStyleDialogState();
}

class _TextStyleDialogState extends State<TextStyleDialog> {
  final textStyleNameController = TextEditingController();
  final fontSizeController = TextEditingController();
  final fontSizeTabletController = TextEditingController();
  final fontSizeDesktopController = TextEditingController();
  late String newFontWeight;
  String newFontFamily = '';
  @override
  void initState() {
    textStyleNameController.text = widget.textStyle.name;
    newFontFamily = widget.textStyle.fontFamily;
    fontSizeController.text = widget.textStyle.fontSize.size.toString();
    fontSizeTabletController.text =
        widget.textStyle.fontSize.sizeTablet.toString();
    fontSizeDesktopController.text =
        widget.textStyle.fontSize.sizeDesktop.toString();
    newFontWeight = widget.textStyle.fontWeight.getString;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Padding(
      padding: EI.mdA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline2(
                'Edit Text Style',
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(null);
                },
                icon: const Icon(CupertinoIcons.xmark),
              )
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
              controller: textStyleNameController,
              placeholder: 'Text Style Name',
              onChanged: (final String text) {
                setState(() {});
              },
            ),
          ),
          const Gap(Grid.medium),
          const THeadline3('Font Size'),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TDetailLabel(
                      'Size - Mobile',
                      color: theme.txtPrimary.withOpacity(0.6),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: ThetaTextField(
                        controller: fontSizeController,
                        placeholder: 'Size Mobile',
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(Grid.small),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TDetailLabel(
                      'Size - Tablet',
                      color: theme.txtPrimary60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: ThetaTextField(
                        controller: fontSizeTabletController,
                        placeholder: 'Size Tablet',
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(Grid.small),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TDetailLabel(
                      'Size - Desktop',
                      color: theme.txtPrimary60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: ThetaTextField(
                        controller: fontSizeDesktopController,
                        placeholder: 'Size Desktop',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(Grid.medium),
          const THeadline3('Font Family'),
          const Gap(Grid.small),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: BounceForSmallWidgets(
              onTap: () async {
                await _showFontFamilyDialog(context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: theme.bgTertiary,
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                ),
                child: Center(
                  child: THeadline3(
                    newFontFamily,
                  ),
                ),
              ),
            ),
          ),
          const Gap(Grid.medium),
          const THeadline3('Font Weight'),
          const Gap(Grid.small),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ThetaDesignDropdownCustom<String>(
              expanded: true,
              value: newFontWeight,
              items: FFontWeight.getListDropDown
                  .map(
                    (e) => DropdownCustomMenuItem(
                      value: e,
                      child: TParagraph(e),
                    ),
                  )
                  .toList(),
              onChange: (final String? newValue) {
                if (newValue == null) return;
                setState(() {
                  newFontWeight = newValue;
                });
              },
            ),
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
                ignoring: textStyleNameController.text.isEmpty,
                child: ThetaDesignButton(
                  isPrimary: textStyleNameController.text.isNotEmpty,
                  'Save',
                  onTap: () {
                    var newFontSize = widget.textStyle.fontSize;
                    if (double.tryParse(fontSizeDesktopController.text) !=
                        null) {
                      newFontSize = newFontSize.copyWith(
                        sizeDesktop:
                            double.parse(fontSizeDesktopController.text),
                      );
                    }
                    if (double.tryParse(fontSizeController.text) != null) {
                      newFontSize = newFontSize.copyWith(
                        size: double.parse(fontSizeController.text),
                      );
                    }
                    if (double.tryParse(fontSizeTabletController.text) !=
                        null) {
                      newFontSize = newFontSize.copyWith(
                        sizeTablet: double.parse(fontSizeTabletController.text),
                      );
                    }
                    final newTextStyle = const TextStylesMapper().copyWith(
                      widget.textStyle,
                      name: textStyleNameController.text,
                      fontFamily: newFontFamily,
                      fontSize: newFontSize,
                      fontWeight: FFontWeight(
                        weight:
                            FFontWeight.convertDropDownToValue(newFontWeight),
                      ),
                    );
                    context
                        .read<StylesCubit>()
                        .onTextStyleUpdated(newTextStyle);
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

  Future<void> _showFontFamilyDialog(final BuildContext context) async {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    final editingController = TextEditingController();
    await showDialog<void>(
      context: context,
      builder: (final ctx) {
        final list = GoogleFonts.asMap().entries.toList();
        var filteredList = list;
        return StatefulBuilder(builder: (context, localSetState) {
          return AlertDialog(
            backgroundColor: theme.bgPrimary,
            title: const THeadline2(
              'Choose your font family',
            ),
            content: SizedBox(
              height: 400,
              width: 300,
              child: Column(
                children: [
                  ThetaTextField(
                    controller: editingController,
                    placeholder: newFontFamily,
                    onChanged: (final String? value) {
                      if (value != null) {
                        localSetState(() {
                          filteredList = list
                              .where((entry) => entry.key
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                              .toList();
                        });
                      } else {
                        localSetState(() {
                          filteredList = list;
                        });
                      }
                    },
                  ),
                  const Gap(Grid.small),
                  SizedBox(
                    height: 326,
                    child: ListView.builder(
                      addAutomaticKeepAlives: false,
                      addRepaintBoundaries: false,
                      itemCount: filteredList.length,
                      itemBuilder: (final context, final index) {
                        return GestureDetector(
                          onTap: () {
                            if (mounted) {
                              setState(() {
                                newFontFamily = filteredList[index].key;
                              });
                            }
                            Navigator.of(context, rootNavigator: true)
                                .pop(null);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: THeadline3(
                              filteredList[index].key,
                            ),
                          ),
                        );
                      },
                      shrinkWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              ThetaDesignButton(
                'Cancel',
                onTap: () => Navigator.of(context).pop(),
                isPrimary: false,
              ),
            ],
          );
        });
      },
    );
  }
}
