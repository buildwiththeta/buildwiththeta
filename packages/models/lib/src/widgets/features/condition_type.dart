// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.conditionType)
class FConditionType extends Equatable {
  /// Constructor
  const FConditionType({
    this.value = ConditionType.equal,
  });

  /// The value in [ConditionType] of [FConditionType]
  final ConditionType value;

  @override
  List<Object?> get props => [value];

  String getString(final BuildContext context) =>
      _convertValueToDropDown(value);

  FConditionType set(final String value) => _convertDropDownToValue(value);

  static FConditionType fromJson(final String? json) {
    if (json != null) {
      return FConditionType(
        value: _convertJsonToValue(json),
      );
    } else {
      return const FConditionType();
    }
  }

  String toJson() => _convertValueToJson(value);

  FConditionType clone() => FConditionType(value: value);

  FConditionType copyWith({final ConditionType? value}) =>
      FConditionType(value: value ?? this.value);

  static ConditionType _convertJsonToValue(final String key) {
    switch (key) {
      case 'equal':
        return ConditionType.equal;
      case 'notEqual':
        return ConditionType.notEqual;
      case 'isNull':
        return ConditionType.isNull;
      case 'notNull':
        return ConditionType.notNull;
      case 'greaterThan':
        return ConditionType.greaterThan;
      case 'greaterOrEqualThan':
        return ConditionType.greaterOrEqualThan;
      case 'lessThan':
        return ConditionType.lessThan;
      case 'lessOrEqualThan':
        return ConditionType.lessOrEqualThan;
      case 'contains':
        return ConditionType.contains;
      case 'endsWith':
        return ConditionType.endsWith;
      case 'startsWith':
        return ConditionType.startsWith;
      default:
        return ConditionType.equal;
    }
  }

  String _convertValueToJson(final ConditionType value) {
    switch (value) {
      case ConditionType.equal:
        return 'equal';
      case ConditionType.notEqual:
        return 'notEqual';
      case ConditionType.isNull:
        return 'isNull';
      case ConditionType.notNull:
        return 'notNull';
      case ConditionType.greaterThan:
        return 'greaterThan';
      case ConditionType.greaterOrEqualThan:
        return 'greaterOrEqualThan';
      case ConditionType.lessThan:
        return 'lessThan';
      case ConditionType.lessOrEqualThan:
        return 'lessOrEqualThan';
      case ConditionType.contains:
        return 'contains';
      case ConditionType.startsWith:
        return 'startsWith';
      case ConditionType.endsWith:
        return 'endsWith';
    }
  }

  String _convertValueToDropDown(final ConditionType value) {
    switch (value) {
      case ConditionType.equal:
        return 'Equal';
      case ConditionType.notEqual:
        return 'Not equal';
      case ConditionType.isNull:
        return 'Is null';
      case ConditionType.notNull:
        return 'Not null';
      case ConditionType.greaterThan:
        return 'Greater than';
      case ConditionType.greaterOrEqualThan:
        return 'Greater or equal than';
      case ConditionType.lessThan:
        return 'Less than';
      case ConditionType.lessOrEqualThan:
        return 'Less or equal than';
      case ConditionType.contains:
        return 'Contains';
      case ConditionType.startsWith:
        return 'Starts with';
      case ConditionType.endsWith:
        return 'Ends with';
    }
  }

  FConditionType _convertDropDownToValue(final String newValue) {
    switch (newValue) {
      case 'Equal':
        return copyWith(value: ConditionType.equal);
      case 'Not equal':
        return copyWith(value: ConditionType.notEqual);
      case 'Is null':
        return copyWith(value: ConditionType.isNull);
      case 'Not null':
        return copyWith(value: ConditionType.notNull);
      case 'Greater than':
        return copyWith(value: ConditionType.greaterThan);
      case 'Greater or equal than':
        return copyWith(value: ConditionType.greaterOrEqualThan);
      case 'Less than':
        return copyWith(value: ConditionType.lessThan);
      case 'Less or equal than':
        return copyWith(value: ConditionType.lessOrEqualThan);
      case 'Contains':
        return copyWith(value: ConditionType.contains);
      case 'Ends with':
        return copyWith(value: ConditionType.endsWith);
      case 'Starts with':
        return copyWith(value: ConditionType.startsWith);
      default:
        return copyWith(value: ConditionType.equal);
    }
  }
}
