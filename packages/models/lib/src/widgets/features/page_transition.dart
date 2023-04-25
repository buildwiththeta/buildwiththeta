// Flutter imports:
// ignore_for_file: public_member_api_docs, library_prefixes

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
// Package imports:
import 'package:transition/transition.dart' as T;

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.pageTransition)
class FPageTransition extends Equatable {
  const FPageTransition({
    this.transitionEffect = T.TransitionEffect.RIGHT_TO_LEFT,
  });

  final T.TransitionEffect? transitionEffect;

  @override
  List<Object?> get props => [transitionEffect];

  T.TransitionEffect get(final BuildContext context) {
    return transitionEffect!;
  }

  static FPageTransition fromJson(final String json) {
    try {
      var transitionEffect = T.TransitionEffect.RIGHT_TO_LEFT;
      if (json == 'lTR') transitionEffect = T.TransitionEffect.LEFT_TO_RIGHT;
      if (json == 'tTB') transitionEffect = T.TransitionEffect.TOP_TO_BOTTOM;
      if (json == 'bTT') transitionEffect = T.TransitionEffect.BOTTOM_TO_TOP;
      if (json == 'f') transitionEffect = T.TransitionEffect.FADE;
      if (json == 's') transitionEffect = T.TransitionEffect.SCALE;
      return FPageTransition(transitionEffect: transitionEffect);
    } catch (e) {
      return const FPageTransition();
    }
  }

  String toJson() {
    return convertValueToJson(transitionEffect!);
  }

  static String convertValueToJson(final T.TransitionEffect value) {
    var result = 'rTL';
    if (value == T.TransitionEffect.LEFT_TO_RIGHT) result = 'lTR';
    if (value == T.TransitionEffect.TOP_TO_BOTTOM) result = 'tTB';
    if (value == T.TransitionEffect.BOTTOM_TO_TOP) result = 'bTT';
    if (value == T.TransitionEffect.FADE) result = 'f';
    if (value == T.TransitionEffect.SCALE) result = 's';
    return result;
  }

  static String convertValueToCode(final T.TransitionEffect? value) {
    var result = 'RIGHT_TO_LEFT';
    if (value == T.TransitionEffect.LEFT_TO_RIGHT) result = 'LEFT_TO_RIGHT';
    if (value == T.TransitionEffect.TOP_TO_BOTTOM) result = 'TOP_TO_BOTTOM';
    if (value == T.TransitionEffect.BOTTOM_TO_TOP) result = 'BOTTOM_TO_TOP';
    if (value == T.TransitionEffect.FADE) result = 'FADE';
    if (value == T.TransitionEffect.SCALE) result = 'SCALE';
    return result;
  }

  String toCode() => "'${convertValueToCode(transitionEffect)}'";
}
