import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import '../../../editor/blocs/styles/styles_cubit.dart';
import '../../color_picker_dialog.dart';
import '../../general_context_menu.dart';

class ColorListItem extends StatefulWidget {
  const ColorListItem({
    super.key,
    required this.element,
    required this.onElementChanged,
    required this.onRemove,
  });

  final FFillElement element;
  final Function(FFillElement) onElementChanged;
  final VoidCallback onRemove;

  @override
  ColorListItemState createState() => ColorListItemState();
}

class ColorListItemState extends State<ColorListItem> {
  late FFillElement element;
  final editingController = TextEditingController();
  final stopController = TextEditingController();
  final opacityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    element = widget.element;
    editingController.text = element.color;
    stopController.text = '${element.stop}';
    opacityController.text = '${element.opacity}';
  }

  @override
  void dispose() {
    super.dispose();
    editingController.dispose();
    stopController.dispose();
    opacityController.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
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
                    color: HexColor(element.color),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: HexColor(element.color),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TDetailLabel('Hex color', color: theme.txtTertiary),
                const Gap(Grid.small),
                ThetaTextField(
                  controller: editingController,
                  placeholder: 'Hex color',
                  onChanged: updateHexColor,
                ),
              ],
            ),
          ),
          const Gap(Grid.small),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TDetailLabel('Opacity', color: theme.txtTertiary),
                const Gap(Grid.small),
                ThetaTextField(
                  controller: opacityController,
                  placeholder: 'Opacity',
                  onChanged: updateOpacity,
                ),
              ],
            ),
          ),
          const Gap(Grid.small),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TDetailLabel('Transition', color: theme.txtTertiary),
                const Gap(Grid.small),
                ThetaTextField(
                  controller: stopController,
                  placeholder: 'Stop',
                  onChanged: updateStop,
                ),
              ],
            ),
          ),
          BounceForSmallWidgets(
            onTap: widget.onRemove,
            child: const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: HoverWidget(
                hoverChild: SizedBox(
                  width: 48,
                  height: 48,
                  child: Icon(
                    CupertinoIcons.delete,
                    size: 16,
                  ),
                ),
                child: Opacity(
                  opacity: 0.2,
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: Icon(CupertinoIcons.delete, size: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateStop(final String input) {
    if (input.trim().endsWith('.')) return;
    if (double.tryParse(input) != null) {
      element = element.copyWith(stop: double.tryParse(input.trim()) ?? 0);
      widget.onElementChanged(element);
    }
  }

  void updateOpacity(final String input) {
    if (input.trim().endsWith('.')) return;
    if (double.tryParse(input) != null) {
      element = element.copyWith(opacity: double.tryParse(input.trim()) ?? 0);
      widget.onElementChanged(element);
    }
  }

  void updateHexColor(String input) {
    final hexCode = input.replaceAll('#', '');
    final hexColor = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
    if (hexCode.length == 3 || hexCode.length == 6) {
      if (hexColor.hasMatch(hexCode)) {
        setState(() {
          element = element.copyWith(
              color: hexCode.length == 3 ? '$hexCode$hexCode' : hexCode);
        });
        widget.onElementChanged(element);
      }
    }
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
            color: element.color,
            callback: (color, style) {
              editingController.text =
                  color!.value.toRadixString(16).substring(2, 8);
              updateHexColor(editingController.text);
            }),
      ),
    );
  }
}
