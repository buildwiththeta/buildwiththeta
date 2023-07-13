import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import '../../../../../../../widgets/color_picker_dialog.dart';
import '../../../../../../../widgets/general_context_menu.dart';
import '../../../../../../blocs/styles/styles_cubit.dart';

class SolidFillControl extends StatefulWidget {
  const SolidFillControl({
    final Key? key,
    required this.fill,
    required this.callBack,
  }) : super(key: key);

  final FFill fill;
  final Function(FFill) callBack;

  @override
  SolidFillControlState createState() => SolidFillControlState();
}

class SolidFillControlState extends State<SolidFillControl>
    with WidgetsBindingObserver {
  String? value;
  bool isVisible = true;
  TextEditingController colorController = TextEditingController();
  CNode? tempNode;
  bool isUpdated = false;
  String? tempColor;
  late FFill fill;
  get hexColor => RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  @override
  void initState() {
    tempColor = widget.fill.levels.first.color;
    colorController.text = tempColor!;
    fill = widget.fill;
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Listener(
            onPointerDown: (e) => showPicker(e, context),
            child: HoverWidget(
              hoverChild: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: HexColor(fill.levels.first.color),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                  border: Border.all(),
                ),
              ),
              child: Container(
                width: 48,
                height: 48,
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
          child: ThetaTextField(
            controller: colorController,
            placeholder: tempColor ?? '',
            onChanged: (final text) {
              final hexCode = text.replaceAll('#', '');
              if (hexCode.length == 3) {
                final hexColor = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
                if (hexColor.hasMatch(hexCode)) {
                  fill.levels.first = FFillElement(
                      color: '$hexCode$hexCode',
                      stop: fill.levels.first.stop,
                      opacity: fill.levels.first.opacity);
                  widget.callBack(fill);
                }
              }
              if (hexCode.length == 6) {
                if (hexColor.hasMatch(hexCode)) {
                  fill.levels.first = FFillElement(
                      color: hexCode,
                      stop: fill.levels.first.stop,
                      opacity: fill.levels.first.opacity);
                  widget.callBack(fill);
                }
              }
              if (mounted) {
                setState(() {});
              }
            },
          ),
        ),
      ],
    );
  }

  Future updateState(final CNode node) async =>
      SchedulerBinding.instance.addPostFrameCallback((_) {
        setState(() {
          tempColor = fill.levels.first.color;
        });
      });

  void updateColor(final Color color) {
    if (mounted) {
      setState(() {
        tempColor = color.value.toRadixString(16).substring(2, 8);
        isUpdated = true;
      });
    }
    fill = fill.copyWith(levels: [
      FFillElement(
        color: color.value.toRadixString(16).substring(2, 8),
        stop: fill.levels.first.stop,
        opacity: fill.levels.first.opacity,
      )
    ]);

    colorController.text = color.value.toRadixString(16).substring(2, 8);
    widget.callBack(fill);
  }

  void showPicker(PointerDownEvent event, BuildContext context) {
    final cubit = context.read<StylesCubit>();
    openGeneralContextMenu(
      event,
      context,
      const Size(450, 600),
      BlocProvider.value(
        value: cubit,
        child: ColorPickerDialog(
          areStylesPermitted: false,
          color: fill.levels.first.color,
          callback: (color, style) => updateColor(color!),
        ),
      ),
    );
  }

  @override
  void dispose() {
    colorController.dispose();
    super.dispose();
  }
}
