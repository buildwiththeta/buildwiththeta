import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

import '../editor/blocs/styles/styles_cubit.dart';

class ColorPickerDialog extends StatefulWidget {
  const ColorPickerDialog({
    final Key? key,
    required this.areStylesPermitted,
    required this.color,
    required this.callback,
  }) : super(key: key);

  final bool areStylesPermitted;
  final String color;
  final Function(Color?, String?) callback;

  @override
  ColorPickerState createState() => ColorPickerState();
}

class ColorPickerState extends State<ColorPickerDialog> {
  TextEditingController controller = TextEditingController();
  Color color = Colors.white;
  String? paletteStyle;

  @override
  void initState() {
    color = HexColor(widget.color);
    controller.text = widget.color;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Grid.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                ColorPicker(
                  pickerColor: color,
                  onColorChanged: (final value) {
                    setState(() {
                      color = value;
                      controller.text = value.toString().substring(10, 16);
                    });
                  },
                  enableAlpha: false,
                  labelTypes: const [],
                  pickerAreaBorderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                  pickerAreaHeightPercent: 0.8,
                  portraitOnly: true,
                  displayThumbColor: true,
                  colorPickerWidth: 400,
                ),
                ThetaTextField(
                  controller: controller,
                  placeholder: 'Hex Color',
                  onChanged: (v) => setState(() {
                    final hexCode = v.replaceAll('#', '');
                    final hexColor =
                        RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
                    if (hexCode.length == 3 || hexCode.length == 6) {
                      if (hexColor.hasMatch(hexCode)) {
                        setState(() {
                          color = HexColor(hexCode.length == 3
                              ? '$hexCode$hexCode'
                              : hexCode);
                        });
                      }
                    }
                  }),
                  onSubmitted: (v) {
                    setState(() {
                      final hexCode = v.replaceAll('#', '');
                      final hexColor =
                          RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
                      if (hexCode.length == 3 || hexCode.length == 6) {
                        if (hexColor.hasMatch(hexCode)) {
                          setState(() {
                            color = HexColor(hexCode.length == 3
                                ? '$hexCode$hexCode'
                                : hexCode);
                          });
                        }
                      }
                    });
                    widget.callback(
                      color,
                      paletteStyle,
                    );
                    Navigator.of(context, rootNavigator: true).pop(null);
                  },
                ),
                if (widget.areStylesPermitted) ...[
                  const Gap(Grid.large),
                  BlocBuilder<StylesCubit, StylesState>(
                    builder: (context, state) => state.maybeWhen(
                      orElse: () => const SizedBox.shrink(),
                      loaded: (colorStyles, textStyles, themeMode) => Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: colorStyles
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      paletteStyle = e.name;
                                      color = HexColor(themeMode ==
                                              ThemeMode.light
                                          ? e.light.getHexColor(
                                              context, colorStyles, themeMode)
                                          : e.dark.getHexColor(
                                              context, colorStyles, themeMode));
                                      controller.text = themeMode ==
                                              ThemeMode.light
                                          ? e.light.getHexColor(
                                              context, colorStyles, themeMode)
                                          : e.dark.getHexColor(
                                              context, colorStyles, themeMode);
                                    });
                                    widget.callback(
                                      null,
                                      paletteStyle,
                                    );
                                    Navigator.of(context, rootNavigator: true)
                                        .pop(null);
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: HexColor(
                                          themeMode == ThemeMode.light
                                              ? e.light.getHexColor(context,
                                                  colorStyles, themeMode)
                                              : e.dark.getHexColor(context,
                                                  colorStyles, themeMode),
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ThetaDesignButton(
              'Confirm',
              onTap: () {
                widget.callback(
                  color,
                  paletteStyle,
                );
                Navigator.of(context, rootNavigator: true).pop(null);
              },
            ),
          ),
          const Gap(Grid.medium),
        ],
      ),
    );
  }
}
