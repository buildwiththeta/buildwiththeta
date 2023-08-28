import 'package:device_frame/device_frame.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// Set of func to use text string in Teta's widgets
enum FTextTypeEnum { text, imageUrl, combined, languages }

/// Set of func to use text string in Teta's widgets
class FTextTypeInput {
  /// Set of func to use text string in Teta's widgets
  const FTextTypeInput({
    this.type = FTextTypeEnum.text,
    this.value = '',
    this.valueTablet = '',
    this.valueLaptop = '',
    this.valueDesktop = '',
    this.locale,
    this.combination,
  });

  final FTextTypeEnum? type;
  final String? value;
  final String? valueTablet;
  final String? valueLaptop;
  final String? valueDesktop;
  final String? locale;
  final List<FTextTypeInput>? combination;

  /// Returns value for texts
  String get({
    required final TreeState state,
    required final BuildContext context,
    required final int loop,
  }) =>
      calc(
        state: state,
        loop: loop,
        placeholder: '',
        context: context,
      ).toString();

  /// Returns value for images
  dynamic getImage({
    required final TreeState state,
    required final BuildContext context,
    required final int loop,
  }) =>
      calc(
        loop: loop,
        state: state,
        placeholder: 'https://source.unsplash.com/random',
        context: context,
      );

  /// Returns the value calculated based on params, states and dataset
  dynamic calc({
    required final TreeState state,
    required final String placeholder,
    required final BuildContext context,
    required final int loop,
  }) {
    if (type == FTextTypeEnum.combined) {
      final string = StringBuffer();
      for (final element in combination ?? <FTextTypeInput>[]) {
        string.write(
          element.get(
            loop: loop,
            state: state,
            context: context,
          ),
        );
      }
      return string.toString();
    }
    if (state.forPlay) {
      final width = MediaQuery.of(context).size.width;
      if (width < 600) {
        return value ?? '';
      } else if (width < 900) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
      } else if (width < 1200) {
        return valueLaptop != '' ? valueLaptop ?? value ?? '' : value ?? '';
      } else {
        return valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '';
      }
    } else {
      if (state.deviceType == DeviceType.phone) {
        return value ?? '';
      } else if (state.deviceType == DeviceType.tablet) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
      } else if (state.deviceType == DeviceType.laptop) {
        return valueLaptop != ''
            ? valueLaptop ??
                (valueDesktop != '' ? valueDesktop : value) ??
                value ??
                ''
            : value ?? '';
      } else {
        return valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '';
      }
    }
  }

  String getValue(
    final BuildContext context, {
    required final bool forPlay,
    required final DeviceType deviceType,
  }) {
    if (forPlay) {
      final width = MediaQuery.of(context).size.width;
      if (width < 600) {
        return value ?? '';
      } else if (width < 900) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
      } else if (width < 1200) {
        return valueLaptop != '' ? valueLaptop ?? value ?? '' : value ?? '';
      } else {
        return valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '';
      }
    } else {
      if (deviceType == DeviceType.phone) {
        return value ?? '';
      } else if (deviceType == DeviceType.tablet) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
      } else if (deviceType == DeviceType.laptop) {
        return valueLaptop != '' ? valueLaptop ?? value ?? '' : value ?? '';
      } else {
        return valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '';
      }
    }
  }

  FTextTypeInput copyWith({
    String? value,
    String? valueTablet,
    String? valueLaptop,
    String? valueDesktop,
    FTextTypeEnum? type,
    String? paramName,
    String? stateName,
    String? datasetSubMapData,
    String? datasetSubListData,
    String? locale,
    List<FTextTypeInput>? combination,
  }) {
    return FTextTypeInput(
      value: value ?? this.value,
      valueTablet: valueTablet ?? this.valueTablet,
      valueLaptop: valueLaptop ?? this.valueLaptop,
      valueDesktop: valueDesktop ?? this.valueDesktop,
      type: type ?? this.type,
      locale: locale ?? this.locale,
      combination: combination ?? this.combination,
    );
  }

  FTextTypeInput updateValue(
    final String val,
    final BuildContext context, {
    final bool ignoreDeviceTypeValue = false,
    required final DeviceType deviceType,
  }) {
    if (ignoreDeviceTypeValue) {
      return copyWith(value: val, valueTablet: val, valueDesktop: val);
    }

    if (deviceType == DeviceType.phone) {
      return copyWith(value: val);
    } else if (deviceType == DeviceType.tablet) {
      return copyWith(valueTablet: val);
    } else if (deviceType == DeviceType.laptop) {
      return copyWith(valueLaptop: val);
    } else {
      return copyWith(valueDesktop: val);
    }
  }

  static FTextTypeInput fromJson(final Map<String, dynamic>? json) {
    try {
      return FTextTypeInput(
        type: EnumToString.fromString(FTextTypeEnum.values, json?['t']),
        value: json?['v'] as String?,
        valueTablet: json?['vt'] as String?,
        valueLaptop: json?['vl'] as String?,
        valueDesktop: json?['vd'] as String?,
        locale: json?['kTrans'] as String?,
        combination: json?['cmb'] != null
            ? (json?['cmb'] as List<dynamic>)
                .map(
                  (final dynamic e) =>
                      FTextTypeInput.fromJson(e as Map<String, dynamic>),
                )
                .toList()
            : [],
      );
    } catch (e) {
      return const FTextTypeInput();
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        't': EnumToString.convertToString(type),
        'v': value,
        'vt': valueTablet,
        'vl': valueLaptop,
        'vd': valueDesktop,
        'kTrans': locale,
        'cmb': combination?.map((final e) => e.toJson()).toList(),
      }..removeWhere((final String key, final dynamic value) => value == null);
}
