// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/widgets.dart';
import 'package:theta_models/theta_models.dart';

@dynamicAttributeKey
@AttributeKey(DBKeys.mainAxisSize)
class FMainAxisSize extends Equatable {
  /// Set of funcs for use [MainAxisSize] property in Teta
  const FMainAxisSize({
    required this.size,
  });

  final MainAxisSize size;

  @override
  List<Object?> get props => [size];

  MainAxisSize get get => size;

  /// Returns a String value for DropDowns' value
  String get getString => _convertValueToJson(size);

  static FMainAxisSize fromJson(final String? json) {
    if (json != null) {
      return FMainAxisSize(
        size: _convertJsonToValue(json),
      );
    } else {
      return const FMainAxisSize(size: MainAxisSize.max);
    }
  }

  FMainAxisSize copyWith({
    MainAxisSize? size,
  }) {
    return FMainAxisSize(
      size: size ?? this.size,
    );
  }

  String toJson() => _convertValueToJson(size);

  static MainAxisSize _convertJsonToValue(final String key) {
    if (key == 'Min') {
      return MainAxisSize.min;
    } else {
      return MainAxisSize.max;
    }
  }

  static String _convertValueToJson(final MainAxisSize value) {
    if (value == MainAxisSize.min) {
      return 'Min';
    } else {
      return 'Max';
    }
  }

  static String _convertValueToCode(final MainAxisSize? value) {
    if (value == MainAxisSize.min) return 'MainAxisSize.min';
    return 'MainAxisSize.max';
  }

  /// Returns a code string from current value.
  /// e.g:
  /// ```dart
  /// 'MainAxisSize.max'
  /// ```
  String toCode() => _convertValueToCode(size);
}
