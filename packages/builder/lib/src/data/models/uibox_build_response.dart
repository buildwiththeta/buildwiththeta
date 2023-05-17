import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class UIBoxBuildResponse {
  UIBoxBuildResponse({
    required this.colorStyles,
    required this.textStyles,
    required this.child,
  });

  final ColorStyles colorStyles;
  final TextStyles textStyles;
  final Widget child;
}
