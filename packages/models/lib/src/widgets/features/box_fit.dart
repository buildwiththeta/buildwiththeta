// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// [FBoxFit] is a set of functions to use [BoxFit] in widgets in Teta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.boxFit)
class FBoxFit extends Equatable {
  /// Constructor
  const FBoxFit({required this.fit});

  /// The value in [BoxFit] of [FBoxFit]
  final BoxFit fit;

  @override
  List<Object?> get props => [fit];

  /// The list of optios for dropdown
  static List<String> get dropdownList => [
        'cover',
        'contain',
        'fill',
        'fitHeight',
        'fitWidth',
        'scaleDown',
      ];

  /// Convert [fit] to String value
  /// Includes optionality checks
  String get getString => _convertValueToDropDown(fit);

  /// Returns a css string value
  String get getCSS => _convertValueToCSS(fit);

  /// Instantiate a [FBoxFit] from Json
  static FBoxFit fromJson(final String json) {
    try {
      return FBoxFit(
        fit: convertJsonToValue(json),
      );
    } catch (e) {
      return const FBoxFit(fit: BoxFit.cover);
    }
  }

  /// Returns a Json from current object
  String toJson() => _convertValueToJson(fit);

  /// Clone [FBoxFit] (deep copy)
  FBoxFit clone() => FBoxFit(fit: fit);

  /// Clone [FBoxFit] (deep copy) with optional [fit] attribute
  FBoxFit copyWith({final BoxFit? fit}) => FBoxFit(fit: fit ?? this.fit);

  static BoxFit convertDropdownToValue(final String key) {
    switch (key) {
      case 'contain':
        return BoxFit.contain;
      case 'fill':
        return BoxFit.fill;
      case 'fitHeight':
        return BoxFit.fitHeight;
      case 'fitWidth':
        return BoxFit.fitWidth;
      case 'scaleDown':
        return BoxFit.scaleDown;
      default:
        return BoxFit.cover;
    }
  }

  /// Convert a String value to [BoxFit] value
  /// ```dart
  /// if (key == 'cn') fit = BoxFit.contain;
  /// ```
  static BoxFit convertJsonToValue(final String key) {
    switch (key) {
      case 'cn':
        return BoxFit.contain;
      case 'f':
        return BoxFit.fill;
      case 'fH':
        return BoxFit.fitHeight;
      case 'fW':
        return BoxFit.fitWidth;
      case 's':
        return BoxFit.scaleDown;
      default:
        return BoxFit.cover;
    }
  }

  static String _convertValueToJson(final BoxFit value) {
    switch (value) {
      case BoxFit.contain:
        return 'cn';
      case BoxFit.fill:
        return 'f';
      case BoxFit.fitHeight:
        return 'fH';
      case BoxFit.fitWidth:
        return 'fW';
      case BoxFit.scaleDown:
        return 's';
      case BoxFit.cover:
        return 'cv';
      case BoxFit.none:
        return 'cv';
    }
  }

  static String _convertValueToDropDown(final BoxFit value) {
    switch (value) {
      case BoxFit.contain:
        return 'contain';
      case BoxFit.fill:
        return 'fill';
      case BoxFit.fitHeight:
        return 'fitHeight';
      case BoxFit.fitWidth:
        return 'fitWidth';
      case BoxFit.scaleDown:
        return 'scaleDown';
      case BoxFit.cover:
        return 'cover';
      case BoxFit.none:
        return 'cover';
    }
  }

  static String _convertValueToCSS(final BoxFit value) {
    switch (value) {
      case BoxFit.cover:
        return 'cover';
      case BoxFit.contain:
        return 'contain';
      case BoxFit.fill:
        return 'fill';
      case BoxFit.fitHeight:
        return 'contain';
      case BoxFit.fitWidth:
        return 'contain';
      case BoxFit.scaleDown:
        return 'scale-down';
      case BoxFit.none:
        return 'cover';
    }
  }

  static BoxFit convertCSSToValue(final String? value) {
    switch (value) {
      case 'cover':
        return BoxFit.cover;
      case 'contain':
        return BoxFit.contain;
      case 'fill':
        return BoxFit.fill;
      case 'scale-down':
        return BoxFit.scaleDown;
      default:
        return BoxFit.cover;
    }
  }

  static String _convertValueToCode(final BoxFit value) {
    switch (value) {
      case BoxFit.contain:
        return 'BoxFit.contain';
      case BoxFit.fill:
        return 'BoxFit.fill';
      case BoxFit.fitHeight:
        return 'BoxFit.fitHeight';
      case BoxFit.fitWidth:
        return 'BoxFit.fitWidth';
      case BoxFit.scaleDown:
        return 'BoxFit.scaleDown';
      case BoxFit.cover:
        return 'BoxFit.cover';
      case BoxFit.none:
        return 'BoxFit.cover';
    }
  }

  /// Export code String
  /// ```dart
  /// if (type == BoxFit.cover) return 'BoxFit.cover'
  /// ```
  String toCode() => _convertValueToCode(fit);
}
