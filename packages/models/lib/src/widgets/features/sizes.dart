import 'package:device_frame/device_frame.dart' as frame;
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';

enum SizeUnit {
  pixel,
  percent,
  width,
  height,
}

@dynamicAttributeKey
@AttributeKey(DBKeys.width)
@AttributeKey(DBKeys.widthFactor)
@AttributeKey(DBKeys.mainAxisExtend)
@AttributeKey(DBKeys.crossAxisExtend)
@AttributeKey(DBKeys.height)
@AttributeKey(DBKeys.heightFactor)
class FSize extends Equatable {
  const FSize({
    required this.size,
    required this.sizeTablet,
    required this.sizeDesktop,
  });

  final String size;
  final String? sizeTablet;
  final String? sizeDesktop;

  @override
  List<Object?> get props => [
        size,
        sizeTablet,
        sizeDesktop,
      ];

  static FSize ready() =>
      const FSize(size: '0', sizeTablet: null, sizeDesktop: null);

  double? get({
    required final TreeState state,
    required final BuildContext context,
    required final bool isWidth,
  }) {
    String? sizeValue;
    var inEditor = false;
    if (kIsWeb) {
      if (Uri.base.toString().contains('/editor/')) {
        inEditor = true;
      }
    }
    if (state.forPlay && !inEditor) {
      final width = MediaQuery.of(context).size.width;
      if (width < 600) {
        sizeValue = size;
      } else if (width < 1000) {
        sizeValue = sizeTablet ?? size;
      } else {
        sizeValue = sizeDesktop ?? size;
      }
    } else {
      if (state.deviceType == frame.DeviceType.phone) {
        sizeValue = size;
      } else if (state.deviceType == frame.DeviceType.tablet) {
        sizeValue = sizeTablet ?? size;
      } else {
        sizeValue = sizeDesktop ?? size;
      }
    }

    if (sizeValue.toLowerCase() == 'max' ||
        sizeValue.toLowerCase() == 'inf' ||
        sizeValue.toLowerCase() == '100%') {
      return double.maxFinite;
    } else if (sizeValue.toLowerCase() == 'null' ||
        sizeValue.toLowerCase() == 'auto') {
      return null;
    }
    final temp = sizeValue.replaceAll('%', '');
    final value = double.tryParse(temp) ?? 0;
    if (sizeValue.contains('%')) {
      if (state.forPlay && !inEditor) {
        if (isWidth) {
          return MediaQuery.of(context).size.width * (value / 100);
        } else {
          return MediaQuery.of(context).size.height * (value / 100);
        }
      } else {
        if (isWidth) {
          final side = state.deviceType != frame.DeviceType.phone &&
                  state.deviceType != frame.DeviceType.tablet
              ? 1920
              : state.deviceInfo.screenSize.width;
          return side * (value / 100);
        } else {
          final side = state.deviceType != frame.DeviceType.phone &&
                  state.deviceType != frame.DeviceType.tablet
              ? 1080
              : state.deviceInfo.screenSize.height;
          return side * (value / 100);
        }
      }
    }
    return value;
  }

  FSize copyWith({
    String? size,
    String? sizeTablet,
    String? sizeDesktop,
  }) =>
      FSize(
        size: size ?? this.size,
        sizeTablet: sizeTablet ?? this.sizeTablet,
        sizeDesktop: sizeDesktop ?? this.sizeDesktop,
      );

  FSize updateSize(
    final String newValue,
    final BuildContext context,
    final frame.DeviceType deviceType,
  ) {
    if (deviceType == frame.DeviceType.phone) {
      return copyWith(size: newValue);
    } else if (deviceType == frame.DeviceType.tablet) {
      return copyWith(sizeTablet: newValue);
    } else {
      return copyWith(sizeDesktop: newValue);
    }
  }

  static FSize fromJson(final Map<String, dynamic> json) {
    try {
      return FSize(
        size: json['s'] as String,
        sizeTablet: json['t'] as String?,
        sizeDesktop: json['d'] as String?,
      );
    } catch (e) {
      Logger.printError('Error in FSize fromJson: $e');
      return const FSize(size: '16', sizeTablet: null, sizeDesktop: null);
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        's': size,
        't': sizeTablet,
        'd': sizeDesktop,
      };

  static String convertListToCode(final String? value) {
    return value ?? '';
  }

  static String convertTypeToCode(final SizeUnit? unit) {
    if (unit == SizeUnit.pixel) return 'SizeUnit.pixel';
    return 'SizeUnit.percent';
  }

  @override
  String toString() => 'FSize { size: $size }';
}
