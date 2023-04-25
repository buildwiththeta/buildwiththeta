import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

abstract class WidgetAdapter {
  const WidgetAdapter();

  dynamic toWidget({
    required final BuildContext context,
    required final WidgetState state,
  });
}
