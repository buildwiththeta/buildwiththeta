// Dart imports:

// ignore_for_file: invalid_use_of_visible_for_testing_member

// Package imports:
import 'package:bloc/bloc.dart';
// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'index.dart';

/// Bloc to set the hover gesture
class HoverBloc extends Bloc<HoverEvent, int> {
  ///
  HoverBloc(this.context) : super(0) {
    on<OnHover>((final event, final emit) {
      emit(event.node.id);
    });
  }

  /// Context
  BuildContext context;
}
