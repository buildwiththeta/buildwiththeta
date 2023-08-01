import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import '../../../../../../../widgets/color_picker_dialog.dart';
import '../../../../../../../widgets/general_context_menu.dart';
import '../../../../../../blocs/styles/styles_cubit.dart';

class SolidWithOpacityFillControl extends StatefulWidget {
  const SolidWithOpacityFillControl({
    final Key? key,
    required this.fill,
    required this.callBack,
  }) : super(key: key);

  final FFill fill;
  final Function(FFill) callBack;

  @override
  SolidFillControlState createState() => SolidFillControlState();
}

class SolidFillControlState extends State<SolidWithOpacityFillControl>
    with WidgetsBindingObserver {
  String? value;
  TextEditingController colorController = TextEditingController();
  TextEditingController opacityController = TextEditingController();
  late FFill fill;
  get hexColor => RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  @override
  void initState() {
    colorController.text = widget.fill.levels.first.color;
    opacityController.text = widget.fill.levels.first.opacity.toString();
    fill = widget.fill;
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Listener(
            onPointerDown: (e) => showPicker(e, context),
            child: HoverWidget(
              hoverChild: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: HexColor(fill.levels.first.color),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                  border: Border.all(),
                ),
              ),
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: HexColor(fill.levels.first.color),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                  border: Border.all(
                    color: fill.levels.first.color == 'ffffff'
                        ? Colors.black26
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TDetailLabel('Hex color', color: theme.txtTertiary),
              const Gap(Grid.small),
              ThetaTextField(
                controller: colorController,
                placeholder: widget.fill.levels.first.color,
                onChanged: (final text) {
                  final hexCode = text.replaceAll('#', '');
                  final hexColor =
                      RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
                  if (hexCode.length == 3 || hexCode.length == 6) {
                    if (hexColor.hasMatch(hexCode)) {
                      var updatedFillElement = FFillElement(
                        color:
                            hexCode.length == 3 ? '$hexCode$hexCode' : hexCode,
                        stop: fill.levels.first.stop,
                        opacity: fill.levels.first.opacity,
                      );
                      var updatedLevels = List<FFillElement>.from(fill.levels);
                      updatedLevels[0] = updatedFillElement;
                      fill = fill.copyWith(levels: updatedLevels);
                      widget.callBack(fill);
                    }
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
        const Gap(4),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TDetailLabel('Opacity', color: theme.txtTertiary),
              const Gap(Grid.small),
              ThetaTextField(
                controller: opacityController,
                placeholder: widget.fill.levels.first.opacity.toString(),
                onChanged: (final text) {
                  final newOpacitiy = double.tryParse(text.trim()) ?? 0;
                  var updatedFillElement = FFillElement(
                    color: fill.levels.first.color,
                    stop: fill.levels.first.stop,
                    opacity: newOpacitiy,
                  );
                  var updatedLevels = List<FFillElement>.from(fill.levels);
                  updatedLevels[0] = updatedFillElement;
                  fill = fill.copyWith(levels: updatedLevels);
                  widget.callBack(fill);

                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void updateColor(final Color? color, final String? style) {
    if (color != null) {
      fill = fill.copyWith(levels: [
        FFillElement(
          color: color.value.toRadixString(16).substring(2, 8),
          stop: fill.levels.first.stop,
          opacity: fill.levels.first.opacity,
        )
      ]);
      colorController.text = color.value.toRadixString(16).substring(2, 8);
    } else {
      fill = fill.copyWith(paletteStyle: style!);
    }
    widget.callBack(fill);
    setState(() {});
  }

  void showPicker(PointerDownEvent event, BuildContext context) {
    final cubit = context.read<StylesCubit>();
    openGeneralContextMenu(
      event,
      context,
      const Size(450, 750),
      BlocProvider.value(
        value: cubit,
        child: ColorPickerDialog(
          areStylesPermitted: true,
          color: fill.levels.first.color,
          callback: updateColor,
        ),
      ),
    );
  }

  @override
  void dispose() {
    colorController.dispose();
    opacityController.dispose();
    super.dispose();
  }
}
