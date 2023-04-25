// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// [FCrossAxisAlignment] is a set of functions to save use CrossAxisAlignment within Teta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.crossAxisAlignment)
class FCrossAxisAlignment extends Equatable {
  /// Constructor for [FCrossAxisAlignment]
  const FCrossAxisAlignment({
    required this.value,
  });

  /// The value in [CrossAxisAlignment] of [FCrossAxisAlignment]
  final CrossAxisAlignment value;

  @override
  List<Object?> get props => [value];

  String getString(final BuildContext context) =>
      _convertValueToDropDown(value);

  void set(final String value) => _convertDropDownToValue(value);

  //FCrossAxisAlignment set(BuildContext context, String text) => copyWith(value: )

  static FCrossAxisAlignment fromJson(final String? json) {
    if (json != null) {
      return FCrossAxisAlignment(
        value: _convertJsonToValue(json),
      );
    } else {
      return const FCrossAxisAlignment(
        value: CrossAxisAlignment.start,
      );
    }
  }

  String toJson() => _convertValueToJson(value);

  FCrossAxisAlignment clone() => FCrossAxisAlignment(value: value);

  FCrossAxisAlignment copyWith({final CrossAxisAlignment? value}) =>
      FCrossAxisAlignment(value: value ?? this.value);

  static CrossAxisAlignment _convertJsonToValue(final String key) {
    switch (key) {
      case 'e':
        return CrossAxisAlignment.end;
      case 'c':
        return CrossAxisAlignment.center;
      case 'st':
        return CrossAxisAlignment.stretch;
      case 'b':
        return CrossAxisAlignment.baseline;
      default:
        return CrossAxisAlignment.start;
    }
  }

  String _convertValueToJson(final CrossAxisAlignment value) {
    switch (value) {
      case CrossAxisAlignment.end:
        return 'e';
      case CrossAxisAlignment.center:
        return 'c';
      case CrossAxisAlignment.stretch:
        return 'st';
      case CrossAxisAlignment.baseline:
        return 'b';
      case CrossAxisAlignment.start:
        return 's';
    }
  }

  String _convertValueToDropDown(final CrossAxisAlignment value) {
    switch (value) {
      case CrossAxisAlignment.end:
        return 'End';
      case CrossAxisAlignment.center:
        return 'Center';
      case CrossAxisAlignment.stretch:
        return 'Stretch';
      case CrossAxisAlignment.baseline:
        return 'Baseline';
      case CrossAxisAlignment.start:
        return 'Start';
    }
  }

  FCrossAxisAlignment _convertDropDownToValue(final String newValue) {
    switch (newValue) {
      case 'Start':
        return copyWith(value: CrossAxisAlignment.start);
      case 'End':
        return copyWith(value: CrossAxisAlignment.end);
      case 'Center':
        return copyWith(value: CrossAxisAlignment.center);
      case 'Stretch':
        return copyWith(value: CrossAxisAlignment.stretch);
      case 'Baseline':
        return copyWith(value: CrossAxisAlignment.baseline);
      default:
        return copyWith(value: CrossAxisAlignment.start);
    }
  }

  String _convertValueToCode(final CrossAxisAlignment? value) {
    switch (value) {
      case CrossAxisAlignment.end:
        return 'CrossAxisAlignment.end';
      case CrossAxisAlignment.center:
        return 'CrossAxisAlignment.center';
      case CrossAxisAlignment.stretch:
        return 'CrossAxisAlignment.stretch';
      case CrossAxisAlignment.baseline:
        return 'CrossAxisAlignment.baseline';
      case CrossAxisAlignment.start:
        return 'CrossAxisAlignment.start';
      case null:
        return 'CrossAxisAlignment.start';
    }
  }

  String toCode() => _convertValueToCode(value);

  /*String toCode() =>
      "FCrossAxisAlignment(aligns: [${convertValueToCode(aligns?[0])},${convertValueToCode(aligns?[1])},${convertValueToCode(aligns?[2])}])";*/
}
