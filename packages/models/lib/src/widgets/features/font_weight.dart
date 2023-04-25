// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.fontWeight)
class FFontWeight extends Equatable {
  /// Constructor
  const FFontWeight({
    this.weight = FontWeight.w400,
  });

  /// The value [weight] of [FFontWeight]
  final FontWeight weight;

  @override
  List<Object?> get props => [weight];

  /// Returns a [FontWeight] value
  FontWeight get get => weight;

  /// Returns a String based on [weight] value
  String get getString => _convertValueToDropDown(weight);

  /// Returns a [FFontWeight] from Json
  static FFontWeight fromJson(final String json) {
    try {
      return FFontWeight(
        weight: _convertJsonToValue(json),
      );
    } catch (e) {
      return const FFontWeight();
    }
  }

  /// Returns a String with weight value
  String toJson() {
    return _convertValueToJson(weight);
  }

  static List<String> get getListDropDown => [
        '100 - Thin',
        '200 - Extralight',
        '300 - Light',
        '400 - Regular',
        '500 - Medium',
        '600 - Semibold',
        '700 - Bold',
        '800 - Extrabold',
        '900 - Black',
      ];

  static FontWeight _convertDropDownToValue(final String key) {
    switch (key) {
      case '100 - Thin':
        return FontWeight.w100;
      case '200 - Extralight':
        return FontWeight.w200;
      case '300 - Light':
        return FontWeight.w300;
      case '400 - Regular':
        return FontWeight.w400;
      case '500 - Medium':
        return FontWeight.w500;
      case '600 - Semibold':
        return FontWeight.w600;
      case '700 - Bold':
        return FontWeight.w700;
      case '800 - Extrabold':
        return FontWeight.w800;
      case '900 - Black':
        return FontWeight.w900;
      default:
        return FontWeight.w400;
    }
  }

  static String _convertValueToDropDown(final FontWeight key) {
    // ignore: exhaustive_cases
    switch (key) {
      case FontWeight.w100:
        return '100 - Thin';
      case FontWeight.w200:
        return '200 - Extralight';
      case FontWeight.w300:
        return '300 - Light';
      case FontWeight.w400:
        return '400 - Regular';
      case FontWeight.w500:
        return '500 - Medium';
      case FontWeight.w600:
        return '600 - Semibold';
      case FontWeight.w700:
        return '700 - Bold';
      case FontWeight.w800:
        return '800 - Extrabold';
      case FontWeight.w900:
        return '900 - Black';
    }
    return '400 - Regular';
  }

  static String _convertValueToJson(final FontWeight value) {
    // ignore: exhaustive_cases
    switch (value) {
      case FontWeight.w100:
        return '1';
      case FontWeight.w200:
        return '2';
      case FontWeight.w300:
        return '3';
      case FontWeight.w400:
        return '4';
      case FontWeight.w500:
        return '5';
      case FontWeight.w600:
        return '6';
      case FontWeight.w700:
        return '7';
      case FontWeight.w800:
        return '8';
      case FontWeight.w900:
        return '9';
    }
    return '4';
  }

  static FontWeight _convertJsonToValue(final String key) {
    switch (key) {
      case '1':
        return FontWeight.w100;
      case '2':
        return FontWeight.w200;
      case '3':
        return FontWeight.w300;
      case '4':
        return FontWeight.w400;
      case '5':
        return FontWeight.w500;
      case '6':
        return FontWeight.w600;
      case '7':
        return FontWeight.w700;
      case '8':
        return FontWeight.w800;
      case '9':
        return FontWeight.w900;
      default:
        return FontWeight.w400;
    }
  }

  static String _convertValueToCode(final FontWeight? value) {
    if (value == FontWeight.w100) return 'FontWeight.w100';
    if (value == FontWeight.w200) return 'FontWeight.w200';
    if (value == FontWeight.w300) return 'FontWeight.w300';
    if (value == FontWeight.w400) return 'FontWeight.w400';
    if (value == FontWeight.w500) return 'FontWeight.w500';
    if (value == FontWeight.w600) return 'FontWeight.w600';
    if (value == FontWeight.w700) return 'FontWeight.w700';
    if (value == FontWeight.w800) return 'FontWeight.w800';
    if (value == FontWeight.w900) return 'FontWeight.w900';
    return 'FontWeight.w400';
  }

  /// Returns code string from [weight]
  String toCode() => _convertValueToCode(weight);
}
