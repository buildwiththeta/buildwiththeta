// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';

/// Name of the property for code generation
const codeNameAtt = 'WrapAlignment';

class FWrapAlignment extends Equatable {
  /// Set of funcs to use WrapAlignment within Teta
  FWrapAlignment({
    this.align = WrapAlignment.start,
  });

  static FWrapAlignment fromJson(final String? json) =>
      FWrapAlignment(align: _convertJsonToValue(json ?? ''));

  WrapAlignment align;

  @override
  List<Object?> get props => [align];

  WrapAlignment get get => align;

  String get getString => _convertValueToDropDown(align);

  void set(final String text) => align = _convertJsonToValue(text);

  String toJson() => _convertValueToJson(align);

  static WrapAlignment _convertJsonToValue(final String key) {
    if (key == 'e') return WrapAlignment.end;
    if (key == 'c') return WrapAlignment.center;
    if (key == 'sA') return WrapAlignment.spaceAround;
    if (key == 'sB') return WrapAlignment.spaceBetween;
    if (key == 'sE') return WrapAlignment.spaceEvenly;
    return WrapAlignment.start;
  }

  static String _convertValueToJson(final WrapAlignment value) {
    if (value == WrapAlignment.end) return 'e';
    if (value == WrapAlignment.center) return 'c';
    if (value == WrapAlignment.spaceAround) return 'sA';
    if (value == WrapAlignment.spaceBetween) return 'sB';
    if (value == WrapAlignment.spaceEvenly) return 'sE';
    return 's';
  }

  static String _convertValueToDropDown(final WrapAlignment value) {
    if (value == WrapAlignment.end) return 'End';
    if (value == WrapAlignment.center) return 'Center';
    if (value == WrapAlignment.spaceAround) return 'Space Around';
    if (value == WrapAlignment.spaceBetween) return 'Space Between';
    if (value == WrapAlignment.spaceEvenly) return 'Space Evenly';
    return 'Start';
  }

  static String _convertValueToCode(final WrapAlignment? value) {
    if (value == WrapAlignment.end) return 'end';
    if (value == WrapAlignment.center) return 'center';
    if (value == WrapAlignment.spaceAround) return 'spaceAround';
    if (value == WrapAlignment.spaceBetween) return 'spaceBetween';
    if (value == WrapAlignment.spaceEvenly) return 'spaceEvenly';
    return 'start';
  }

  String toCode() => '$codeNameAtt.${_convertValueToCode(align)}';
}
