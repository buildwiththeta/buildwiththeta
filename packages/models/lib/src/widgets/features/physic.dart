// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.physic)
class FPhysic extends Equatable {
  const FPhysic({this.physics = const AlwaysScrollableScrollPhysics()});

  final ScrollPhysics? physics;

  @override
  List<Object?> get props => [physics];

  static List<String> get physicsList => [
        'AlwaysScrollableScrollPhysics',
        'NeverScrollableScrollPhysics',
        'BouncingScrollPhysics',
      ];

  ScrollPhysics get(final BuildContext context) {
    return physics!;
  }

  String getStringForDropDown(final BuildContext context) {
    return convertValueToDropDown(physics!);
  }

  static FPhysic fromJson(final String json) {
    try {
      return FPhysic(
        physics: convertJsonToValue(json),
      );
    } catch (e) {
      return const FPhysic();
    }
  }

  String toJson() {
    return convertValueToJson(physics!);
  }

  FPhysic clone() => FPhysic(physics: physics);

  FPhysic copyWith({final ScrollPhysics? physic}) =>
      // ignore: unnecessary_this
      FPhysic(physics: physic ?? this.physics);

  static ScrollPhysics convertJsonToValue(final String key) {
    // ignore: prefer_const_constructors
    ScrollPhysics phy = AlwaysScrollableScrollPhysics();
    if (key == 'assP') phy = const AlwaysScrollableScrollPhysics();
    if (key == 'nssP') phy = const NeverScrollableScrollPhysics();
    if (key == 'bsP') phy = const BouncingScrollPhysics();
    return phy;
  }

  static ScrollPhysics convertDropDownToValue(final String key) {
    // ignore: prefer_const_constructors
    ScrollPhysics phy = AlwaysScrollableScrollPhysics();
    if (key == 'NeverScrollableScrollPhysics') {
      phy = const NeverScrollableScrollPhysics();
    }
    if (key == 'BouncingScrollPhysics') phy = const BouncingScrollPhysics();
    return phy;
  }

  static String convertValueToDropDown(final ScrollPhysics key) {
    var phy = 'AlwaysScrollableScrollPhysics';
    if (key is NeverScrollableScrollPhysics) {
      phy = 'NeverScrollableScrollPhysics';
    }
    if (key is BouncingScrollPhysics) phy = 'BouncingScrollPhysics';
    return phy;
  }

  static String convertValueToJson(final ScrollPhysics value) {
    var result = 'assP';
    if (value is NeverScrollableScrollPhysics) result = 'nssP';
    if (value is BouncingScrollPhysics) result = 'bsP';
    return result;
  }

  static String convertValueToCode(final ScrollPhysics? value) {
    var result = 'const AlwaysScrollableScrollPhysics()';
    if (value is NeverScrollableScrollPhysics) {
      result = 'const  NeverScrollableScrollPhysics()';
    }
    if (value is BouncingScrollPhysics) {
      result = 'const BouncingScrollPhysics()';
    }
    return result;
  }

  String toCode() => convertValueToCode(physics);
}
