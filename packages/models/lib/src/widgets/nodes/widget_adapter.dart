import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

abstract class WidgetAdapter {
  const WidgetAdapter();

  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  });
}
