import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ColorPickerDialog extends StatefulWidget {
  const ColorPickerDialog({
    final Key? key,
    required this.color,
    required this.callback,
  }) : super(key: key);

  final String color;
  final Function(Color) callback;

  @override
  ColorPickerState createState() => ColorPickerState();
}

class ColorPickerState extends State<ColorPickerDialog> {
  TextEditingController controller = TextEditingController();
  Color color = Palette.txtPrimary;

  @override
  void initState() {
    color = HexColor(widget.color);
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return AlertDialog(
      backgroundColor: theme.bgPrimary,
      contentPadding: EI.lgA,
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorPicker(
              pickerColor: color,
              onColorChanged: (final value) {
                color = value;
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
          ],
        ),
      ),
      actions: <Widget>[
        ThetaDesignButton(
          'Confirm',
          onTap: () {
            widget.callback(color);
            Navigator.of(context, rootNavigator: true).pop(null);
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
