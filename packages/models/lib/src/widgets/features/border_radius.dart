// Flutter imports:

import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/src/responsive_builder.dart';

/// [FBorderRadius] is a set of functions to use [BorderRadius]
/// in widgets in Teta
@immutable
class FBorderRadius extends Equatable {
  /// Constructor
  const FBorderRadius({
    required this.radiusMobile,
    this.radiusTablet,
    this.radiusDesktop,
  });

  /// The value of [FBorderRadius], used to display BorderRadius
  final List<double> radiusMobile;
  final List<double>? radiusTablet;
  final List<double>? radiusDesktop;

  @override
  List<Object?> get props => [
        radiusMobile,
        radiusTablet,
        radiusDesktop,
      ];

  /// Convert [radius] to [BorderRadius]
  BorderRadius get(
    final BuildContext context, {
    required final bool forPlay,
    required final DeviceType deviceType,
  }) {
    if (forPlay) {
      return getValueForScreenType(
        context: context,
        mobile: BorderRadius.only(
          topLeft: Radius.circular(radiusMobile[0]),
          topRight: Radius.circular(radiusMobile[1]),
          bottomRight: Radius.circular(radiusMobile[2]),
          bottomLeft: Radius.circular(radiusMobile[3]),
        ),
        tablet: BorderRadius.only(
          topLeft: Radius.circular(radiusTablet?[0] ?? radiusMobile[0]),
          topRight: Radius.circular(radiusTablet?[1] ?? radiusMobile[1]),
          bottomRight: Radius.circular(radiusTablet?[2] ?? radiusMobile[2]),
          bottomLeft: Radius.circular(radiusTablet?[3] ?? radiusMobile[3]),
        ),
        desktop: BorderRadius.only(
          topLeft: Radius.circular(radiusDesktop?[0] ?? radiusMobile[0]),
          topRight: Radius.circular(radiusDesktop?[1] ?? radiusMobile[1]),
          bottomRight: Radius.circular(radiusDesktop?[2] ?? radiusMobile[2]),
          bottomLeft: Radius.circular(radiusDesktop?[3] ?? radiusMobile[3]),
        ),
      );
    } else {
      if (deviceType == DeviceType.phone) {
        return BorderRadius.only(
          topLeft: Radius.circular(radiusMobile[0]),
          topRight: Radius.circular(radiusMobile[1]),
          bottomRight: Radius.circular(radiusMobile[2]),
          bottomLeft: Radius.circular(radiusMobile[3]),
        );
      } else if (deviceType == DeviceType.tablet) {
        return BorderRadius.only(
          topLeft: Radius.circular(radiusTablet?[0] ?? radiusMobile[0]),
          topRight: Radius.circular(radiusTablet?[1] ?? radiusMobile[1]),
          bottomRight: Radius.circular(radiusTablet?[2] ?? radiusMobile[2]),
          bottomLeft: Radius.circular(radiusTablet?[3] ?? radiusMobile[3]),
        );
      } else {
        return BorderRadius.only(
          topLeft: Radius.circular(radiusDesktop?[0] ?? radiusMobile[0]),
          topRight: Radius.circular(radiusDesktop?[1] ?? radiusMobile[1]),
          bottomRight: Radius.circular(radiusDesktop?[2] ?? radiusMobile[2]),
          bottomLeft: Radius.circular(radiusDesktop?[3] ?? radiusMobile[3]),
        );
      }
    }
  }

  /// Instantiate [FBorderRadius] from Json
  static FBorderRadius fromJson(final dynamic json) {
    if (json is List<dynamic>) {
      final value = json.map((final dynamic e) => double.parse('$e')).toList();
      return FBorderRadius(
        radiusMobile: value,
        radiusTablet: null,
        radiusDesktop: null,
      );
    } else {
      return FBorderRadius(
        radiusMobile: (json['m'] as List<dynamic>)
            .map((final dynamic e) => double.parse('$e'))
            .toList(),
        radiusTablet: json['t'] == null
            ? null
            : (json['t'] as List<dynamic>)
                .map((final dynamic e) => double.parse('$e'))
                .toList(),
        radiusDesktop: json['d'] == null
            ? null
            : (json['d'] as List<dynamic>)
                .map((final dynamic e) => double.parse('$e'))
                .toList(),
      );
    }
  }

  /// Convert [FBorderRadius] to Json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'm': radiusMobile,
      't': radiusTablet,
      'd': radiusDesktop,
    };
  }

  /// Change the value of [value] (List<double>)
  Map<String, dynamic> update({
    required final BuildContext context,
    required final List<double> value,
    required final DeviceType deviceType,
  }) {
    if (deviceType == DeviceType.phone) {
      return copyWith(radiusMobile: value).toJson();
    } else if (deviceType == DeviceType.tablet) {
      return copyWith(radiusTablet: value).toJson();
    } else {
      return copyWith(radiusDesktop: value).toJson();
    }
  }

  FBorderRadius copyWith({
    final List<double>? radiusMobile,
    final List<double>? radiusTablet,
    final List<double>? radiusDesktop,
  }) {
    return FBorderRadius(
      radiusMobile: radiusMobile ?? this.radiusMobile,
      radiusTablet: radiusTablet ?? this.radiusTablet,
      radiusDesktop: radiusDesktop ?? this.radiusDesktop,
    );
  }
}
