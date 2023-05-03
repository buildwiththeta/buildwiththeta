import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaTextField extends CupertinoTextField {
  ThetaTextField({
    super.key,
    required final TextEditingController controller,
    final String placeholder = 'Write here...',
    final bool readOnly = false,
    final bool obscureText = false,
    final bool expands = false,
    final bool enabled = true,
    final int? maxLines = 1,
    final int? minLines,
    final TextInputType keyboardType = TextInputType.text,
    final int? maxLength,
    final Function(String)? onChanged,
    final Function(String)? onSubmitted,
    final Function()? onTap,
    final Function(PointerDownEvent)? onTapOutside,
  }) : super(
          controller: controller,
          placeholder: placeholder,
          keyboardType: keyboardType,
          placeholderStyle: GoogleFonts.manrope(
            color: Palette.txtPrimary30,
            fontSize: const Paragraph().size,
            fontWeight: const Paragraph().weight,
            letterSpacing: const Paragraph().tracking,
          ),
          style: GoogleFonts.manrope(
            color: Palette.txtPrimary,
            fontSize: const Paragraph().size,
            fontWeight: const Paragraph().weight,
            letterSpacing: const Paragraph().tracking,
          ),
          decoration: const BoxDecoration(
            color: Palette.bgTertiary,
            borderRadius: BorderRadius.all(
              Radius.circular(Grid.small),
            ),
          ),
          padding: const EdgeInsets.all(Grid.medium),
          obscureText: obscureText,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          onTap: onTap,
          onTapOutside: onTapOutside,
          readOnly: readOnly,
          expands: expands,
          enabled: enabled,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
        );
}
