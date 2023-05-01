// Dart imports:

// ignore_for_file: invalid_use_of_visible_for_testing_member

// Package imports:
import 'package:bloc/bloc.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
// Project imports:
import 'index.dart';

/// Bloc to set the hover gesture
class HoverBloc extends Bloc<HoverEvent, NodeID?> {
  ///
  HoverBloc(this.context) : super(null) {
    on<OnHover>((final event, final emit) {
      emit(event.node.id);
    });
  }

  /// Context
  BuildContext context;
}
