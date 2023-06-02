// Flutter imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:theta_models/theta_models.dart';
// Project imports:

/// Example
Widget toWidget() {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        left:
            BorderSide(width: 0, style: BorderStyle.none, color: Colors.green),
        top: BorderSide(width: 0, style: BorderStyle.none, color: Colors.green),
        right:
            BorderSide(width: 0, style: BorderStyle.none, color: Colors.green),
        bottom:
            BorderSide(width: 0, style: BorderStyle.none, color: Colors.green),
      ),
    ),
  );
}

/// [FBorder] is a set of functions to use [Border] in widgets in Teta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.borders)
@AttributeKey(DBKeys.activeBorders)
class FBorder extends Equatable {
  /// Constructor
  const FBorder({
    required this.fill,
    required this.width,
    required this.style,
  });

  /// The [fill] of [Border]. It must be solid only
  final FFill fill;

  /// The [width] of [Border]
  final FMargins width;

  /// The [style] of [Border]
  final FBorderStyle style;

  @override
  List<Object?> get props => [fill, width, style];

  /// Get [Border] from actual values
  Border get(
    final BuildContext context, {
    required final bool forPlay,
    required final DeviceType deviceType,
    required final List<ColorStyleEntity> colorStyles,
    required final ThemeMode theme,
  }) {
    final values =
        width.getList(context, forPlay: forPlay, deviceType: deviceType);
    final tempOpacity = fill.levels.first.opacity;
    final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
    return Border(
      left: BorderSide(
        color: HexColor(fill.getHexColor(context, colorStyles, theme))
            .withOpacity(opacity),
        style: style.value,
        width: values[0],
      ),
      top: BorderSide(
        color: HexColor(fill.getHexColor(context, colorStyles, theme))
            .withOpacity(opacity),
        style: style.value,
        width: values[1],
      ),
      right: BorderSide(
        color: HexColor(fill.getHexColor(context, colorStyles, theme))
            .withOpacity(opacity),
        style: style.value,
        width: values[2],
      ),
      bottom: BorderSide(
        color: HexColor(fill.getHexColor(context, colorStyles, theme))
            .withOpacity(opacity),
        style: style.value,
        width: values[3],
      ),
    );
  }

  /// Instantiate [FBorder] from Json
  static FBorder fromJson(final Map<String, dynamic> doc) {
    try {
      return FBorder(
        style: FBorderStyle.fromJson(doc[DBKeys.borderStyle] as String),
        width: FMargins.fromJson(doc[DBKeys.margins] as dynamic),
        fill: FFill.fromJson(doc[DBKeys.fill] as Map<String, dynamic>),
      );
    } catch (e) {
      return const FBorder(
        style: FBorderStyle(
          value: BorderStyle.none,
        ),
        width: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
        fill: FFill(),
      );
    }
  }

  /// Convert [FBorder] to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        DBKeys.borderStyle: style.toJson(),
        DBKeys.margins: width.toJson(),
        DBKeys.fill: fill.toJson(),
      };

  FBorder copyWith({
    FFill? fill,
    FMargins? width,
    FBorderStyle? style,
  }) {
    return FBorder(
      fill: fill ?? this.fill,
      width: width ?? this.width,
      style: style ?? this.style,
    );
  }

  /// Export code String
  String toCode(
      final BuildContext context, final List<ColorStyleEntity> colorStyles) {
    if (listEquals(width.margins, width.marginsTablet ?? width.margins) &&
        listEquals(width.margins, width.marginsDesktop ?? width.margins)) {
      return _valueToCode(width.margins!, context, colorStyles);
    }

    return '''
getValueForScreenType<Border>(
  context: context,
  mobile: ${_valueToCode(width.margins!, context, colorStyles)},
  tablet: ${_valueToCode(width.marginsTablet ?? width.margins!, context, colorStyles)},
  desktop: ${_valueToCode(width.marginsDesktop ?? width.margins!, context, colorStyles)},
)
''';
  }

  String _valueToCode(final List<double> values, final BuildContext context,
      final List<ColorStyleEntity> colorStyles) {
    final color = FFill.toCode(fill, context, colorStyles: colorStyles);
    // if (style?.get != BorderStyle.none) return '';
    if (values.indexWhere((final element) => element != 0) == -1) {
      return 'null';
    }
    return '''
    Border(
      left:
          BorderSide(width: ${values[0]}, ${style.value != BorderStyle.solid ? 'style: ${style.toCode()},' : ''} $color),
      top:
          BorderSide(width: ${values[1]}, ${style.value != BorderStyle.solid ? 'style: ${style.toCode()},' : ''} $color),
      right:
          BorderSide(width: ${values[2]}, ${style.value != BorderStyle.solid ? 'style: ${style.toCode()},' : ''} $color),
      bottom:
          BorderSide(width: ${values[3]}, ${style.value != BorderStyle.solid ? 'style: ${style.toCode()},' : ''} $color),
    )
  ''';
  }
}
