// Flutter imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:theta_models/theta_models.dart';
// Project imports:

/// [FBorder] is a set of functions to use [Border] in widgets in Teta
@immutable
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
    return Border(
      left: BorderSide(
        color: fill.getColor(colorStyles, theme),
        style: style.value,
        width: values[0],
      ),
      top: BorderSide(
        color: fill.getColor(colorStyles, theme),
        style: style.value,
        width: values[1],
      ),
      right: BorderSide(
        color: fill.getColor(colorStyles, theme),
        style: style.value,
        width: values[2],
      ),
      bottom: BorderSide(
        color: fill.getColor(colorStyles, theme),
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
}
