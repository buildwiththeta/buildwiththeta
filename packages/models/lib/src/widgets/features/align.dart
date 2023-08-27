// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class FAlign extends Equatable {
  const FAlign({
    this.align = Alignment.topLeft,
    this.alignTablet,
    this.alignDesktop,
  });

  final Alignment? align;
  final Alignment? alignTablet;
  final Alignment? alignDesktop;

  static List<String> get dropdownList => [
        'Top Left',
        'Top Center',
        'Top Right',
        'Center Left',
        'Center',
        'Center Right',
        'Bottom Left',
        'Bottom Center',
        'Bottom Right'
      ];

  @override
  List<Object?> get props => [
        align,
        alignTablet,
        alignDesktop,
      ];

  Alignment get(
    final BuildContext context, {
    required final bool forPlay,
    final DeviceType deviceType = DeviceType.phone,
  }) {
    return align!;
  }

  String getStringForDropDown(
      final BuildContext context, final DeviceType deviceType) {
    if (deviceType == DeviceType.phone) {
      return convertValueToDropDown(align!);
    } else if (deviceType == DeviceType.tablet) {
      return convertValueToDropDown(alignTablet ?? align!);
    } else {
      return convertValueToDropDown(alignDesktop ?? align!);
    }
  }

  static FAlign fromJson(final dynamic json) {
    return FAlign(
      align: convertJsonToValue(json['m']),
      alignTablet: convertDropDownToValue(json['t'] ?? json['m'] ?? ''),
      alignDesktop: convertDropDownToValue(json['d'] ?? json['m'] ?? ''),
    );
  }

  Map<String, dynamic> toJson() => {
        'm': convertValueToJson(align!),
        't': convertValueToJson(alignTablet ?? align!),
        'd': convertValueToJson(alignDesktop ?? align!),
      };

  FAlign clone() => FAlign(
        align: align,
        alignTablet: alignTablet,
        alignDesktop: alignDesktop,
      );

  FAlign copyWith({
    final Alignment? align,
    final Alignment? alignTablet,
    final Alignment? alignDesktop,
  }) =>
      FAlign(
        align: align ?? this.align,
        alignTablet: alignTablet ?? this.alignTablet,
        alignDesktop: alignDesktop ?? this.alignDesktop,
      );

  static Alignment convertJsonToValue(final String key) {
    switch (key) {
      case 'tL':
        return Alignment.topLeft;
      case 'tC':
        return Alignment.topCenter;
      case 'tR':
        return Alignment.topRight;
      case 'cL':
        return Alignment.centerLeft;
      case 'c':
        return Alignment.center;
      case 'cR':
        return Alignment.centerRight;
      case 'bL':
        return Alignment.bottomLeft;
      case 'bC':
        return Alignment.bottomCenter;
      case 'bR':
        return Alignment.bottomRight;
      default:
        return Alignment.topLeft;
    }
  }

  static Alignment convertDropDownToValue(final String key) {
    var align = Alignment.topLeft;
    if (key == 'Top Center') align = Alignment.topCenter;
    if (key == 'Top Right') align = Alignment.topRight;
    if (key == 'Center Left') align = Alignment.centerLeft;
    if (key == 'Center') align = Alignment.center;
    if (key == 'Center Right') align = Alignment.centerRight;
    if (key == 'Bottom Left') align = Alignment.bottomLeft;
    if (key == 'Bottom Center') align = Alignment.bottomCenter;
    if (key == 'Bottom Right') align = Alignment.bottomRight;
    return align;
  }

  static String convertValueToDropDown(final Alignment key) {
    var align = 'Top Left';
    if (key == Alignment.topCenter) align = 'Top Center';
    if (key == Alignment.topRight) align = 'Top Right';
    if (key == Alignment.centerLeft) align = 'Center Left';
    if (key == Alignment.center) align = 'Center';
    if (key == Alignment.centerRight) align = 'Center Right';
    if (key == Alignment.bottomLeft) align = 'Bottom Left';
    if (key == Alignment.bottomCenter) align = 'Bottom Center';
    if (key == Alignment.bottomRight) align = 'Bottom Right';
    return align;
  }

  static String convertValueToJson(final Alignment value) {
    var result = 'tL';
    if (value == Alignment.topCenter) result = 'tC';
    if (value == Alignment.topRight) result = 'tR';
    if (value == Alignment.centerLeft) result = 'cL';
    if (value == Alignment.center) result = 'c';
    if (value == Alignment.centerRight) result = 'cR';
    if (value == Alignment.bottomLeft) result = 'bL';
    if (value == Alignment.bottomCenter) result = 'bC';
    if (value == Alignment.bottomRight) result = 'bR';
    return result;
  }

  static String convertValueToCode(final Alignment? value) {
    var result = 'Alignment.topLeft';
    if (value == Alignment.topCenter) result = 'Alignment.topCenter';
    if (value == Alignment.topRight) result = 'Alignment.topRight';
    if (value == Alignment.centerLeft) result = 'Alignment.centerLeft';
    if (value == Alignment.center) result = 'Alignment.center';
    if (value == Alignment.centerRight) result = 'Alignment.centerRight';
    if (value == Alignment.bottomLeft) result = 'Alignment.bottomLeft';
    if (value == Alignment.bottomCenter) result = 'Alignment.bottomCenter';
    if (value == Alignment.bottomRight) result = 'Alignment.bottomRight';
    return result;
  }
}


/// ma ora a noi ci serve
/// FAlign(align: ${convertValueToCode(align)})
