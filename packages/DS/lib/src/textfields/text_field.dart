import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:theta_design_system/theta_design_system.dart';

class ThetaTextField extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return IgnorePointer(
      ignoring: !enabled || readOnly,
      child: Opacity(
        opacity: enabled ? 1 : 0.5,
        child: CupertinoTextField(
          controller: controller,
          placeholder: placeholder,
          keyboardType: keyboardType,
          placeholderStyle: GoogleFonts.manrope(
            color: Theme.of(context).extension<ThetaTheme>()!.txtPrimary30,
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
          padding: const EdgeInsets.all(Grid.small),
          obscureText: obscureText,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          onTap: onTap,
          onTapOutside: onTapOutside,
          readOnly: readOnly,
          expands: expands,
          enabled: true,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
        ),
      ),
    );
  }
}
