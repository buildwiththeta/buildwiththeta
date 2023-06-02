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
        gradient: LinearGradient(
          colors: fill.levels.map(
            (final e) {
              final tempOpacity = e.opacity;
              final opacity =
                  tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
              return HexColor(e.color).withOpacity(opacity);
            },
          ).toList(),
          begin: fill.begin!,
          end: fill.end!,
          stops: fill.levels.map((final e) => e.stop).toList(),
        ),
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
        color: HexColor(fill
            .get(context, state.colorStyles, state.theme)
            .getHexColor(context, state.colorStyles, state.theme)),
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
        gradient: RadialGradient(
          colors: fill.levels.map(
            (final e) {
              final tempOpacity = e.opacity;
              final opacity =
                  tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
              return HexColor(e.color).withOpacity(opacity);
            },
          ).toList(),
          center: fill.center!,
          radius: fill.radius!,
          stops: fill.levels.map((final e) => e.stop).toList(),
        ),
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
