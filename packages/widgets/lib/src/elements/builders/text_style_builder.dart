// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
// Project imports:

class TetaTextStyles {
  /// Returns the current TextStyle object
  static TextStyle get({
    required final WidgetState nodeState,
    required final TreeState state,
    required final BuildContext context,
    required final FFill fill,
    required final String fontFamily,
    required final FFontSize fontSize,
    required final FFontWeight fontWeight,
    required final FTextDecoration textDecoration,
    required final FFontStyle fontStyle,
    required final bool forPlay,
    final TextStyleEntity? model,
  }) {
    final finalFill = const NodeOverrideExecuter().executeColor(
        context,
        nodeState,
        fill.get(
          context,
          state.colorStyles,
          state.theme,
        ));
    final gfonts = GoogleFonts.asMap().entries.map((e) => e.key).toList();
    return !gfonts.contains(model?.fontFamily ?? fontFamily)
        ? TextStyle(
            fontFamily: (model != null) ? model.fontFamily : fontFamily,
            fontSize: (model != null)
                ? model.fontSize.get(
                    context,
                    forPlay: forPlay,
                    deviceType: state.deviceType,
                  )
                : fontSize.get(
                    context,
                    forPlay: forPlay,
                    deviceType: state.deviceType,
                  ),
            fontWeight: (model != null) ? model.fontWeight.get : fontWeight.get,
            color: finalFill.getColor(
              context,
              state.colorStyles,
              state.theme,
            ),
            decoration: textDecoration.textDecoration,
            fontStyle: fontStyle.value,
          )
        : GoogleFonts.getFont(
            (model != null) ? model.fontFamily : fontFamily,
            fontSize: (model != null)
                ? model.fontSize.get(
                    context,
                    forPlay: forPlay,
                    deviceType: state.deviceType,
                  )
                : fontSize.get(
                    context,
                    forPlay: forPlay,
                    deviceType: state.deviceType,
                  ),
            fontWeight: (model != null) ? model.fontWeight.get : fontWeight.get,
            color: finalFill.getColor(
              context,
              state.colorStyles,
              state.theme,
            ),
            decoration: textDecoration.textDecoration,
            fontStyle: fontStyle.value,
          );
  }
}
