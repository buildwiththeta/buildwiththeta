import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class WidgetConfiguration {
  final String type;
  final Map<String, dynamic> properties;
  final Function(BuildContext, WidgetState) toWidget;

  WidgetConfiguration({
    required this.type,
    required this.properties,
    required this.toWidget,
  });
}
