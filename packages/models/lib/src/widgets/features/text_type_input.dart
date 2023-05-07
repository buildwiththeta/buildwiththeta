import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:collection/collection.dart';
import 'package:device_frame/device_frame.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';
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

    if (result.runtimeType == XFile ||
        result.runtimeType.toString().contains('Map')) {
      return result;
    } else if (result.runtimeType == String) {
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
    if (type == FTextTypeEnum.languages) {
      if (locale != null) {
        return state.localization.translate(locale!);
      }
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

  String toCode(
    final int? loop, {
    required final ResultTypeEnum resultType,
    final String? defaultValue,
    final bool? whiteSpace,
    final bool? wrapInString,
  }) {
    if (type == FTextTypeEnum.languages) {
      return "FlutterLocalization.instance.translate('''$locale''')";
    }

    final code =
        getRawToCode(loop, resultType: resultType, defaultValue: defaultValue);

    if (type == FTextTypeEnum.combined || whiteSpace == false) {
      return code;
    }

    return convertType(code, resType: resultType);
  }

  String _calcStringType(final String? value) {
    const ls = LineSplitter();
    final masForUsing = ls.convert(value ?? '');
    if (masForUsing.length == 1) {
      if ((value ?? '').contains("'")) {
        return '"$value"';
      }
      return "'$value'";
    } else {
      if ((value ?? '').contains("'''")) {
        return '"""$value"""';
      }
      return "'''$value'''";
    }
  }

  String getRawToCode(
    final int? loop, {
    required final ResultTypeEnum resultType,
    final String? defaultValue,
  }) {
    // The value is a hard coded text
    if (type == FTextTypeEnum.text) {
      final v = (value?.replaceAll(' ', '').isNotEmpty ?? false)
          ? value
          : (defaultValue ?? '0');
      final vT = valueTablet != null && valueTablet != ''
          ? (valueTablet?.replaceAll(' ', '').isNotEmpty ?? false)
              ? valueTablet
              : v ?? (defaultValue ?? '0')
          : (value?.replaceAll(' ', '').isNotEmpty ?? false)
              ? value
              : v ?? (defaultValue ?? '0');
      final vD = valueDesktop != null && valueDesktop != ''
          ? (valueDesktop?.replaceAll(' ', '').isNotEmpty ?? false)
              ? valueDesktop
              : v ?? (defaultValue ?? '0')
          : (value?.replaceAll(' ', '').isNotEmpty ?? false)
              ? value
              : v ?? (defaultValue ?? '0');

      if (resultType == ResultTypeEnum.string) {
        final type = defaultValue != 'null' && defaultValue != null
            ? 'String'
            : 'String?';
        if (v == vT && v == vD) {
          return _calcStringType(v);
        }
        return '''
getValueForScreenType<$type>(
  context: context,
  mobile: ${_calcStringType(v)},
  tablet: ${_calcStringType(vT)},
  desktop: ${_calcStringType(vD)},
)''';
      } else if (resultType == ResultTypeEnum.int) {
        final type =
            defaultValue != 'null' && defaultValue != null ? 'int' : 'int?';
        if (v == vT && v == vD) {
          return int.tryParse('$v') != null ? '$v' : (defaultValue ?? '1');
        }
        return """
getValueForScreenType<$type>(
  context: context,
  mobile:  ${int.tryParse('$v') != null ? '$v' : (defaultValue ?? '1')},
  tablet: ${int.tryParse('$vT') != null ? '$vT' : (defaultValue ?? '1')},
  desktop: ${int.tryParse('$vD') != null ? '$vD' : (defaultValue ?? '1')},
)""";
      } else if (resultType == ResultTypeEnum.double) {
        final type = defaultValue != 'null' && defaultValue != null
            ? 'double'
            : 'double?';
        if (v == vT && v == vD) {
          return double.tryParse('$v') != null ? '$v' : (defaultValue ?? '1');
        }
        return """
getValueForScreenType<double>(
  context: context,
  mobile: ${double.tryParse('$v') != null ? '$v' : (defaultValue ?? '1')},
  tablet: ${double.tryParse('$vT') != null ? '$vT' : (defaultValue ?? '1')},
  desktop: ${double.tryParse('$vD') != null ? '$vD' : (defaultValue ?? '1')},
)""";
      } else if (resultType == ResultTypeEnum.bool) {
        final type =
            defaultValue != 'null' && defaultValue != null ? 'bool' : 'bool?';
        if (v == vT && v == vD) {
          return '$v'.toLowerCase() == 'true' || '$v'.toLowerCase() == 'false'
              ? '$v'.toLowerCase()
              : "'$v' == 'true'".toLowerCase();
        }
        return """
getValueForScreenType<$type>(
  context: context,
  mobile: ${'$v'.toLowerCase() == 'true' || '$v'.toLowerCase() == 'false' ? '$v'.toLowerCase() : "'$v' == 'true'".toLowerCase()},
  tablet: ${'$vT'.toLowerCase() == 'true' || '$vT'.toLowerCase() == 'false' ? '$vT'.toLowerCase() : "'$vT' == 'true'".toLowerCase()},
  desktop: ${'$vD'.toLowerCase() == 'true' || '$vD'.toLowerCase() == 'false' ? '$vD'.toLowerCase() : "'$vD' == 'true'".toLowerCase()},
)""";
      }
    }
    // The value is a param
    if (type == FTextTypeEnum.param) {
      if (paramName?.isEmpty ?? true) return "''";
      final param = ReCase(paramName ?? '');
      if (resultType == ResultTypeEnum.string) {
        return "'''\${widget.${param.camelCase}}'''";
      } else if (resultType == ResultTypeEnum.int) {
        return "int.tryParse('\${widget.${param.camelCase}}') ?? ${defaultValue ?? '0'}";
      } else if (resultType == ResultTypeEnum.double) {
        return "double.tryParse('\${widget.${param.camelCase}}') ?? ${defaultValue ?? '0.0'}";
      } else if (resultType == ResultTypeEnum.bool) {
        return "'\${widget.${param.camelCase}}' == 'true'";
      } else {
        return "'''\${widget.${param.camelCase}}'''";
      }
    }
    // The value is a state
    if (type == FTextTypeEnum.state) {
      if (stateName?.isEmpty ?? true) return "''";
      final state = ReCase(stateName ?? '');
      if (resultType == ResultTypeEnum.string) {
        return "'\${${state.camelCase}}'";
      } else if (resultType == ResultTypeEnum.int) {
        return "int.tryParse('\${${state.camelCase}}') ?? ${defaultValue ?? '0'}";
      } else if (resultType == ResultTypeEnum.double) {
        return "double.tryParse('\${${state.camelCase}}') ?? ${defaultValue ?? '0.0'}";
      } else if (resultType == ResultTypeEnum.bool) {
        return "'\${${state.camelCase}}' == 'true'";
      } else {
        return '\$${state.camelCase}';
      }
    }
    if (type == FTextTypeEnum.combined) {
      if (resultType == ResultTypeEnum.string) {
        final string = StringBuffer("'''");
        for (final element in combination ?? <FTextTypeInput>[]) {
          final code = convertType(
            element
                .toCode(loop, resultType: resultType, wrapInString: false)
                .replaceAll("'''", '')
                .replaceAll("' ", '')
                .replaceAll("'", ''),
            resType: resultType,
          ).replaceAll("'''", '');
          string.write(code);
        }
        string.write("'''");
        return string.toString();
      } else if (resultType == ResultTypeEnum.int) {
        return '0';
      } else if (resultType == ResultTypeEnum.double) {
        return '0.0';
      } else if (resultType == ResultTypeEnum.bool) {
        return 'true';
      }
    }
    return value ?? '';
  }

  String convertType(
    final String original, {
    required final ResultTypeEnum resType,
  }) {
    var code = original;
    if (original.contains("'")) {
      code = '$original ';
    }
    if (resultType == ResultTypeEnum.string) {
      switch (resultType) {
        case ResultTypeEnum.dateTime:
          if (typeDateTimeFormat == TypeDateTimeFormat.dateWithoutTime) {
            return "'\${DateFormat('yyyy-MM-dd').format(DateTime.tryParse($code) ?? DateTime.now())}'";
          }
          if (typeDateTimeFormat == TypeDateTimeFormat.dateWithTime) {
            return "'\${DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.tryParse($code) ?? DateTime.now())}'";
          }
      }
    }
    return code;
  }
}
