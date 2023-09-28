import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:light_logger/light_logger.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaTextField extends StatefulWidget {
  const ThetaTextField({
    super.key,
    required this.controller,
    this.placeholder = 'Write here...',
    this.readOnly = false,
    this.obscureText = false,
    this.expands = false,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onTapOutside,
    this.verticalPadding = Grid.small,
  });

  final TextEditingController controller;
  final String placeholder;
  final bool readOnly;
  final bool obscureText;
  final bool expands;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final TextInputType keyboardType;
  final int? maxLength;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final Function(PointerDownEvent)? onTapOutside;
  final double verticalPadding;

  @override
  State<ThetaTextField> createState() => _ThetaTextFieldState();
}

class _ThetaTextFieldState extends State<ThetaTextField> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return IgnorePointer(
      ignoring: !widget.enabled || widget.readOnly,
      child: Opacity(
        opacity: widget.enabled ? 1 : 0.5,
        child: Container(
          decoration: BoxDecoration(
            color: theme.bgTertiary,
            borderRadius: const BorderRadius.all(
              Radius.circular(Grid.small),
            ),
          ),
          child: Row(
            children: [
              if (widget.keyboardType == TextInputType.number)
                MouseRegion(
                  cursor: SystemMouseCursors.resizeLeftRight,
                  child: GestureDetector(
                    onPanStart: (e) {
                      try {
                        value = double.parse(widget.controller.text);
                      } catch (_) {
                        Logger.printMessage('Error parsing value');
                      }
                    },
                    onPanUpdate: (details) {
                      try {
                        final value = double.parse(widget.controller.text);
                        final newValue =
                            (value + details.delta.dx).toInt().toString();
                        widget.controller.text = newValue;
                        setState(() {});
                      } catch (_) {}
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 4),
                        Container(
                          width: 4,
                          height: 8,
                          decoration: BoxDecoration(
                            color: theme.txtPrimary30,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 4),
                      ],
                    ),
                  ),
                )
              else
                const SizedBox(width: 4),
              Expanded(
                child: CupertinoTextField(
                  controller: widget.controller,
                  placeholder: widget.placeholder,
                  keyboardType: widget.keyboardType,
                  placeholderStyle: GoogleFonts.manrope(
                    color:
                        Theme.of(context).extension<ThetaTheme>()!.txtPrimary30,
                    fontSize: 12,
                    fontWeight: const Paragraph().weight,
                    letterSpacing: const Paragraph().tracking,
                  ),
                  style: GoogleFonts.manrope(
                    color: theme.txtPrimary,
                    fontSize: 12,
                    fontWeight: const Paragraph().weight,
                    letterSpacing: const Paragraph().tracking,
                  ),
                  decoration: BoxDecoration(
                    color: theme.bgTertiary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(Grid.small),
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: widget.verticalPadding),
                  obscureText: widget.obscureText,
                  onChanged: widget.onChanged,
                  onSubmitted: widget.onSubmitted,
                  onTap: widget.onTap,
                  onTapOutside: widget.onTapOutside,
                  readOnly: widget.readOnly,
                  expands: widget.expands,
                  enabled: true,
                  maxLines: widget.maxLines,
                  minLines: widget.minLines,
                  maxLength: widget.maxLength,
                ),
              ),
              const SizedBox(width: 4),
            ],
          ),
        ),
      ),
    );
  }
}
