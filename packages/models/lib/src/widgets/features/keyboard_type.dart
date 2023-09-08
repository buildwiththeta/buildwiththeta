// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';

/// Set of funcs to use [KeyboardType] in Theta
@immutable
class FKeyboardType extends Equatable {
  /// Constructor
  const FKeyboardType({
    this.type = TextInputType.text,
  });

  /// Value of [FKeyboardType]
  final TextInputType type;

  @override
  List<Object?> get props => [type];

  /// Instantiate [FKeyboardType] from Json
  static FKeyboardType fromJson(final String json) {
    try {
      return FKeyboardType(
        type: _convertJsonToValue(json),
      );
    } catch (e) {
      return const FKeyboardType();
    }
  }

  /// Returns Json based on current value
  String toJson() {
    return _convertValueToJson(type);
  }

  static TextInputType _convertJsonToValue(final String key) {
    if (key == 't') return TextInputType.text;
    if (key == 'n') return TextInputType.name;
    if (key == 'e') return TextInputType.emailAddress;
    if (key == 'p') return TextInputType.phone;
    if (key == 'nm') return TextInputType.number;
    if (key == 'r') return TextInputType.url;
    if (key == 'v') return TextInputType.visiblePassword;
    if (key == 'm') return TextInputType.multiline;
    return TextInputType.text;
  }

  static String _convertValueToJson(final TextInputType value) {
    if (value == TextInputType.text) {
      return 't';
    } else if (value == TextInputType.name) {
      return 'n';
    } else if (value == TextInputType.emailAddress) {
      return 'e';
    } else if (value == TextInputType.phone) {
      return 'p';
    } else if (value == TextInputType.number) {
      return 'nm';
    } else if (value == TextInputType.url) {
      return 'r';
    } else if (value == TextInputType.visiblePassword) {
      return 'v';
    } else if (value == TextInputType.multiline) {
      return 'm';
    }
    return 't';
  }

  static String _convertValueToCode(final TextInputType value) {
    if (value == TextInputType.text) {
      return 'TextInputType.text';
    } else if (value == TextInputType.name) {
      return 'TextInputType.name';
    } else if (value == TextInputType.emailAddress) {
      return 'TextInputType.emailAddress';
    } else if (value == TextInputType.phone) {
      return 'TextInputType.phone';
    } else if (value == TextInputType.number) {
      return 'TextInputType.number';
    } else if (value == TextInputType.url) {
      return 'TextInputType.url';
    } else if (value == TextInputType.visiblePassword) {
      return 'TextInputType.visiblePassword';
    } else if (value == TextInputType.multiline) {
      return 'TextInputType.multiline';
    }
    return 'TextInputType.text';
  }

  /// Returns code value
  /// e.g.
  /// ```dart
  /// "TextInputType.text"
  /// ```
  String toCode() => _convertValueToCode(type);
}
