import 'package:camera/camera.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCamera extends NodeWidget {
  /// Returns a Camera widget in Teta
  const OpenWCamera({
    super.key,
    required super.nodeState,
    required this.controller,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput controller;

  @override
  Widget build(BuildContext context, TreeState state, WidgetState nodeState) {
    VariableObject? variable;
    if (controller.type == FTextTypeEnum.param) {
      variable = state.params
          .firstWhereOrNull((final e) => e.name == controller.paramName);
    } else {
      variable = state.states
          .firstWhereOrNull((final e) => e.name == controller.stateName);
    }
    return variable?.controller != null
        ? SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CameraPreview(variable!.controller!),
          )
        : const Center(
            child: TParagraph(
              'Camera Controller is not initialized yet',
            ),
          );
  }
}
