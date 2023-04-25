// Package imports:
// ignore_for_file: public_member_api_docs

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';

class ActiveActionsTimers extends Cubit<List<Timer>> {
  ActiveActionsTimers() : super([]);

  void cleanUp() {
    for (final e in state) {
      e.cancel();
    }
    emit([]);
  }

  void add(final Timer timer) {
    final currentState = state..add(timer);
    emit(currentState);
  }
}
