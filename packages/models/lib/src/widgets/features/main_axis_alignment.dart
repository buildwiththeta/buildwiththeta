// Flutter imports:
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// Class to use MainAxisAlignment in Theta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.mainAxisAlignment)
class FMainAxisAlignment extends Equatable {
  /// Constructor
  const FMainAxisAlignment({
    this.align = MainAxisAlignment.start,
  });

  final MainAxisAlignment align;

  @override
  List<Object?> get props => [align];

  /// Returns a String value for DropDowns' value
  String get getString => _convertValueToDropDown(align);

  /// Instantiate [FMainAxisAlignment] from Json
  static FMainAxisAlignment fromJson(final String json) {
    try {
      return FMainAxisAlignment(
        align: _convertJsonToValue(json),
      );
    } catch (e) {
      return const FMainAxisAlignment();
    }
  }

  /// Returns Json from actual value
  String toJson() {
    return _convertValueToJson(align);
  }

  static MainAxisAlignment _convertJsonToValue(final String key) {
    if (key == 'e') return MainAxisAlignment.end;
    if (key == 'c') return MainAxisAlignment.center;
    if (key == 'sB') return MainAxisAlignment.spaceBetween;
    if (key == 'sA') return MainAxisAlignment.spaceAround;
    if (key == 'sE') return MainAxisAlignment.spaceEvenly;
    return MainAxisAlignment.start;
  }

  static String _convertValueToJson(final MainAxisAlignment value) {
    if (value == MainAxisAlignment.end) return 'e';
    if (value == MainAxisAlignment.center) return 'c';
    if (value == MainAxisAlignment.spaceBetween) return 'sB';
    if (value == MainAxisAlignment.spaceAround) return 'sA';
    if (value == MainAxisAlignment.spaceEvenly) return 'sE';
    return 's';
  }

  static String _convertValueToDropDown(final MainAxisAlignment value) {
    if (value == MainAxisAlignment.end) return 'End';
    if (value == MainAxisAlignment.center) return 'Center';
    if (value == MainAxisAlignment.spaceBetween) return 'Space Between';
    if (value == MainAxisAlignment.spaceAround) return 'Space Around';
    if (value == MainAxisAlignment.spaceEvenly) return 'Space Evenly';
    return 'Start';
  }

  static MainAxisAlignment _convertDropDownToValue(final String value) {
    if (value == 'End') return MainAxisAlignment.end;
    if (value == 'Center') return MainAxisAlignment.center;
    if (value == 'Space Between') return MainAxisAlignment.spaceBetween;
    if (value == 'Space Around') return MainAxisAlignment.spaceAround;
    if (value == 'Space Evenly') return MainAxisAlignment.spaceEvenly;
    return MainAxisAlignment.start;
  }

  static String _convertValueToCode(final MainAxisAlignment? value) {
    if (value == MainAxisAlignment.end) return 'MainAxisAlignment.end';
    if (value == MainAxisAlignment.center) return 'MainAxisAlignment.center';
    if (value == MainAxisAlignment.spaceBetween) {
      return 'MainAxisAlignment.spaceBetween';
    }
    if (value == MainAxisAlignment.spaceAround) {
      return 'MainAxisAlignment.spaceAround';
    }
    if (value == MainAxisAlignment.spaceEvenly) {
      return 'MainAxisAlignment.spaceEvenly';
    }
    return 'MainAxisAlignment.start';
  }

  /// Returns a code string from current value.
  /// e.g:
  /// ```dart
  /// 'MainAxisAlignment.start'
  /// ```
  String toCode() => _convertValueToCode(align);
}
