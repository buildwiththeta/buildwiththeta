// ignore_for_file: public_member_api_docs

import 'package:device_frame/device_frame.dart' as frame;
import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/src/responsive_builder.dart';
import 'package:theta_models/theta_models.dart';

/// [FFontSize] is a feature that allows you to change the size of the text
@immutable
class FFontSize extends Equatable {
  /// Constructor of [FFontSize]
  const FFontSize({
    this.size = 16,
    this.unit = SizeUnit.pixel,
    this.sizeTablet,
    this.sizeDesktop,
  });

  /// Value of [size] of [FFontSize]
  final double size;
  final double? sizeTablet;
  final double? sizeDesktop;

  final SizeUnit unit;

  @override
  List<Object?> get props => [
        size,
        sizeTablet,
        sizeDesktop,
        unit,
      ];

  /// Get current value of [size]
  double get(
    final BuildContext context, {
    required final bool forPlay,
    required final frame.DeviceType deviceType,
  }) {
    if (forPlay) {
      return getValueForScreenType<double>(
        context: context,
        mobile: size,
        tablet: sizeTablet,
        desktop: sizeDesktop,
      );
    } else {
      if (deviceType == frame.DeviceType.phone) {
        return size;
      } else if (deviceType == frame.DeviceType.tablet) {
        return sizeTablet ?? size;
      } else {
        return sizeDesktop ?? size;
      }
    }
  }

  FFontSize update(final double value, final BuildContext context,
      final frame.DeviceType deviceType) {
    if (deviceType == frame.DeviceType.phone) {
      return copyWith(size: value);
    } else if (deviceType == frame.DeviceType.tablet) {
      return copyWith(sizeTablet: value);
    } else {
      return copyWith(sizeDesktop: value);
    }
  }

  /// Instantiates [FFontSize] from Json
  static FFontSize fromJson(final dynamic json) {
    try {
      var sizeMobile = 16.0;
      double? sizeTablet;
      double? sizeDesktop;
      if (double.tryParse('$json') != null) {
        sizeMobile = double.tryParse('$json') ?? 16;
        sizeTablet;
        sizeDesktop;
      } else {
        sizeMobile = double.parse('${json['s']}');
        sizeTablet = double.tryParse('${json['st']}');
        sizeDesktop = double.tryParse('${json['sd']}');
      }
      return FFontSize(
        size: sizeMobile,
        sizeTablet: sizeTablet,
        sizeDesktop: sizeDesktop,
      );
    } catch (e) {
      Logger.printError('Error fromJson in FFontSize, error: $e');
      return const FFontSize();
    }
  }

  /// Returns double to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        's': size,
        'st': sizeTablet,
        'sd': sizeDesktop,
        'u': EnumToString.convertToString(unit),
      };

  FFontSize copyWith({
    final double? size,
    final double? sizeTablet,
    final double? sizeDesktop,
  }) {
    return FFontSize(
      size: size ?? this.size,
      sizeTablet: sizeTablet ?? this.sizeTablet,
      sizeDesktop: sizeDesktop ?? this.sizeDesktop,
    );
  }
}
