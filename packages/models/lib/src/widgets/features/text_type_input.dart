import 'package:collection/collection.dart';
import 'package:device_frame/device_frame.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:theta_models/theta_models.dart';

/// Set of func to use text string in Teta's widgets
enum FTextTypeEnum { text, imageUrl, param, state, combined, languages }

/// Result type of [FTextTypeInput]
enum ResultTypeEnum {
  string,
  dateTime,
  int,
  double,
  bool,
}

/// Type of [FTextTypeInput] for [ResultTypeEnum.dateTime]
enum TypeDateTimeFormat {
  dateWithTime,
  dateWithoutTime,
}

/// Set of func to use text string in Teta's widgets
@dynamicAttributeKey
@AttributeKey(DBKeys.cmsCollection)
@AttributeKey(DBKeys.actionValue)
@AttributeKey(DBKeys.adMobAdAndroidUnitId)
@AttributeKey(DBKeys.adMobAdIosUnitId)
@AttributeKey(DBKeys.image)
@AttributeKey(DBKeys.textAlign)
@AttributeKey(DBKeys.textDecoration)
@AttributeKey(DBKeys.textStyle)
@AttributeKey(DBKeys.textStyle2)
@AttributeKey(DBKeys.value)
@AttributeKey(DBKeys.audioPlayerCurrentDataset)
@AttributeKey(DBKeys.googleMapsController)
@AttributeKey(DBKeys.googleMapsCubitController)
@AttributeKey(DBKeys.rotateX)
@AttributeKey(DBKeys.rotateY)
@AttributeKey(DBKeys.rotateZ)
@AttributeKey(DBKeys.tranX)
@AttributeKey(DBKeys.tranY)
@AttributeKey(DBKeys.duration)
@AttributeKey(DBKeys.mapInitialPositionLng)
@AttributeKey(DBKeys.mapCustomInitialZoomLevel)
@AttributeKey(DBKeys.mapInitialPositionLat)
@AttributeKey(DBKeys.valueOfCondition)
@AttributeKey(DBKeys.customHttpRequestURL)
@AttributeKey(DBKeys.apiCallsResponseName)
@AttributeKey(DBKeys.cmsPage)
@AttributeKey(DBKeys.cmsLimit)
@AttributeKey(DBKeys.cmsLikeKey)
@AttributeKey(DBKeys.cmsLikeValue)
@AttributeKey(DBKeys.supabaseFrom)
@AttributeKey(DBKeys.supabaseSelect)
@AttributeKey(DBKeys.supabaseStream)
@AttributeKey(DBKeys.supabaseFromRange)
@AttributeKey(DBKeys.supabaseToRange)
@AttributeKey(DBKeys.supabaseNumberPage)
@AttributeKey(DBKeys.supabaseOrder)
@AttributeKey(DBKeys.supabaseEqName)
@AttributeKey(DBKeys.supabaseEqValue)
@AttributeKey(DBKeys.supabaseSearchName)
@AttributeKey(DBKeys.supabaseSearchValue)
@AttributeKey(DBKeys.mainAxisSpacing)
@AttributeKey(DBKeys.crossAxisCount)
@AttributeKey(DBKeys.crossAxisSpacing)
@AttributeKey(DBKeys.maxLines)
@AttributeKey(DBKeys.minLines)
@AttributeKey(DBKeys.maxLenght)
@AttributeKey(DBKeys.bordersSize)
@AttributeKey(DBKeys.childAspectRatio)
@AttributeKey(DBKeys.latitude)
@AttributeKey(DBKeys.longitude)
@AttributeKey(DBKeys.labelText)
@AttributeKey(DBKeys.xRotation)
@AttributeKey(DBKeys.yRotation)
@AttributeKey(DBKeys.zRotation)
@AttributeKey(DBKeys.xOffset)
@AttributeKey(DBKeys.yOffset)
@AttributeKey(DBKeys.rotation)
@AttributeKey(DBKeys.xPerspective)
@AttributeKey(DBKeys.yPerspective)
@AttributeKey(DBKeys.zPerspective)
@AttributeKey(DBKeys.xTranslation)
@AttributeKey(DBKeys.yTranslation)
@AttributeKey(DBKeys.selectedItemName)
class FTextTypeInput {
  /// Set of func to use text string in Teta's widgets
  const FTextTypeInput({
    this.type = FTextTypeEnum.text,
    this.value = '',
    this.valueTablet = '',
    this.valueDesktop = '',
    this.paramName,
    this.stateName,
    this.datasetSubListData,
    this.datasetSubMapData,
    this.datasetLength,
    this.locale,
    this.combination,
    this.resultType = ResultTypeEnum.string,
    this.typeDateTimeFormat,
  });

  final FTextTypeEnum? type;
  final String? value;
  final String? valueTablet;
  final String? valueDesktop;
  final String? paramName;
  final String? stateName;
  final String? datasetLength;
  final String? datasetSubListData;
  final String? datasetSubMapData;
  final String? locale;
  final List<FTextTypeInput>? combination;
  final ResultTypeEnum resultType;
  final TypeDateTimeFormat? typeDateTimeFormat;

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

  String getStateValue(
    final Variables states,
  ) {
    if (type == FTextTypeEnum.state) {
      final state =
          states.firstWhereOrNull((final element) => element.name == stateName);
      return '${state?.get}';
    } else {
      return 'null';
    }
  }

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
    final dynamic result = getRaw(
      state: state,
      loop: loop,
      placeholder: placeholder,
      context: context,
    );

    if (result.runtimeType == String) {
      switch (resultType) {
        case ResultTypeEnum.string:
          return result;
        case ResultTypeEnum.int:
          return int.tryParse(result as String) ??
              'Impossible to convert to int type';
        case ResultTypeEnum.double:
          return double.tryParse(result as String) ??
              'Impossible to convert to double type';
        case ResultTypeEnum.bool:
          return (result as String?) == 'true'
              ? true
              : result == 'false'
                  ? false
                  : 'Impossible to convert to double type';
        case ResultTypeEnum.dateTime:
          {
            final date = DateTime.tryParse(result as String);
            if (date != null) {
              if (typeDateTimeFormat == TypeDateTimeFormat.dateWithoutTime) {
                return DateFormat('yyyy-MM-dd').format(date);
              }
              if (typeDateTimeFormat == TypeDateTimeFormat.dateWithTime) {
                return DateFormat('yyyy-MM-dd hh:mm:ss').format(date);
              }
            }
            return 'Impossible to convert to DateTime type';
          }
      }
    }
  }

  dynamic getRaw({
    required final TreeState state,
    required final int loop,
    required final String placeholder,
    required final BuildContext context,
  }) {
    if (type == FTextTypeEnum.param) {
      try {
        final variable = state.params
            .firstWhereOrNull((final element) => element.name == paramName);

        return variable?.get;
      } catch (_) {}
    }
    if (type == FTextTypeEnum.state) {
      final variable = state.states
          .firstWhereOrNull((final element) => element.name == stateName);

      return variable?.get;
    }
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
      return getValueForScreenType<String>(
        context: context,
        mobile: value ?? '',
        tablet: valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '',
        desktop: valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '',
      );
    } else {
      if (state.deviceType == DeviceType.phone) {
        return value ?? '';
      } else if (state.deviceType == DeviceType.tablet) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
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
      return getValueForScreenType<String>(
        context: context,
        mobile: value ?? '',
        tablet: valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '',
        desktop: valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '',
      );
    } else {
      if (deviceType == DeviceType.phone) {
        return value ?? '';
      } else if (deviceType == DeviceType.tablet) {
        return valueTablet != '' ? valueTablet ?? value ?? '' : value ?? '';
      } else {
        return valueDesktop != '' ? valueDesktop ?? value ?? '' : value ?? '';
      }
    }
  }

  FTextTypeInput copyWith({
    String? value,
    String? valueTablet,
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
      valueDesktop: valueDesktop ?? this.valueDesktop,
      type: type ?? this.type,
      paramName: paramName ?? this.paramName,
      stateName: stateName ?? this.stateName,
      datasetSubMapData: datasetSubMapData ?? this.datasetSubMapData,
      datasetSubListData: datasetSubListData ?? this.datasetSubListData,
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
        valueDesktop: json?['vd'] as String?,
        paramName: json?['pN'] as String?,
        stateName: json?['sN'] as String?,
        datasetSubListData: json?['dAO'] as String?,
        datasetSubMapData: json?['dAT'] as String?,
        datasetLength: json?['dL'] as String?,
        locale: json?['kTrans'] as String?,
        combination: json?['cmb'] != null
            ? (json?['cmb'] as List<dynamic>)
                .map(
                  (final dynamic e) =>
                      FTextTypeInput.fromJson(e as Map<String, dynamic>),
                )
                .toList()
            : [],
        resultType: EnumToString.fromString(
              ResultTypeEnum.values,
              json?['rType'] as String? ?? 'string',
            ) ??
            ResultTypeEnum.string,
        typeDateTimeFormat: EnumToString.fromString(
              TypeDateTimeFormat.values,
              json?['tDateTime'] as String? ??
                  EnumToString.convertToString(TypeDateTimeFormat.dateWithTime),
            ) ??
            TypeDateTimeFormat.dateWithTime,
      );
    } catch (e) {
      return const FTextTypeInput();
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        't': EnumToString.convertToString(type),
        'v': value,
        'vt': valueTablet,
        'vd': valueDesktop,
        'pN': paramName,
        'sN': stateName,
        'dAO': datasetSubListData,
        'dAT': datasetSubMapData,
        'dL': datasetLength,
        'kTrans': locale,
        'cmb': combination?.map((final e) => e.toJson()).toList(),
        'rType': EnumToString.convertToString(resultType),
        'tDateTime': typeDateTimeFormat != null
            ? EnumToString.convertToString(typeDateTimeFormat)
            : EnumToString.convertToString(TypeDateTimeFormat.dateWithTime),
      }..removeWhere((final String key, final dynamic value) => value == null);

  /*String toCode(
          BuildContext context,
          List<VariableObject> params,
          List<VariableObject> states,
          List<DatasetObject> dataset,
          bool forPlay,
          int? loop,) =>
      calc(params, states, dataset, forPlay, loop, '');*/

  String convertType(
    final String original, {
    required final ResultTypeEnum resType,
  }) {
    var code = original;
    if (original.contains("'")) {
      code = '$original ';
    }
    return code;
  }
}
