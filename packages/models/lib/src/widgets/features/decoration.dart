import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// Class made to facilitate the creation of BoxDecoration for widgets
class TetaBoxDecoration {
  /// Get a [BoxDecoration]
  static BoxDecoration get({
    required final TreeState state,
    required final BuildContext context,
    required final FFill fill,
    final FBorderRadius? borderRadius,
    final FShadow? shadow,
    final FBorder? borders,
    final FFill? borderFill,
  }) {
    if (fill.type == FFillType.solid) {
      final tempOpacity = fill.levels.first.opacity;
      final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
      return BoxDecoration(
        color: HexColor(fill.levels.first.color).withOpacity(opacity),
        borderRadius: borderRadius?.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          if (shadow != null)
            shadow.get(context, state.colorStyles, state.theme),
        ],
        border: borders?.get(
          context,
          forPlay: true,
          theme: state.theme,
          colorStyles: state.colorStyles,
          deviceType: state.deviceType,
        ),
      );
    } else if (fill.type == FFillType.linearGradient) {
      return BoxDecoration(
        gradient: fill.getGradient(state.colorStyles, state.theme),
        borderRadius: borderRadius?.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          if (shadow != null)
            shadow.get(context, state.colorStyles, state.theme),
        ],
        border: borders?.get(
          context,
          forPlay: true,
          theme: state.theme,
          colorStyles: state.colorStyles,
          deviceType: state.deviceType,
        ),
      );
    } else if (fill.paletteStyle != null) {
      return BoxDecoration(
        color: fill.getColor(state.colorStyles, state.theme),
        borderRadius: borderRadius?.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          if (shadow != null)
            shadow.get(context, state.colorStyles, state.theme),
        ],
        border: borders?.get(
          context,
          forPlay: true,
          theme: state.theme,
          colorStyles: state.colorStyles,
          deviceType: state.deviceType,
        ),
      );
    } else if (fill.type == FFillType.radialGradient) {
      return BoxDecoration(
        gradient: fill.getGradient(state.colorStyles, state.theme),
        borderRadius: borderRadius?.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          if (shadow != null)
            shadow.get(context, state.colorStyles, state.theme),
        ],
        border: borders?.get(
          context,
          forPlay: true,
          theme: state.theme,
          colorStyles: state.colorStyles,
          deviceType: state.deviceType,
        ),
      );
    }
    //fill.type -> none
    else {
      return BoxDecoration(
        borderRadius: borderRadius?.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          if (shadow != null)
            shadow.get(context, state.colorStyles, state.theme),
        ],
        border: borders?.get(
          context,
          forPlay: true,
          theme: state.theme,
          colorStyles: state.colorStyles,
          deviceType: state.deviceType,
        ),
      );
    }
  }
}

class TetaShapeCard {
  /// Get a [BoxDecoration]
  static RoundedRectangleBorder get({
    required final BuildContext context,
    required final TreeState state,
    final FBorderRadius? borderRadius,
  }) {
    return RoundedRectangleBorder(
      borderRadius: borderRadius != null
          ? borderRadius.get(
              context,
              forPlay: state.forPlay,
              deviceType: state.deviceType,
            )
          : BorderRadius.zero,
    );
  }
}
