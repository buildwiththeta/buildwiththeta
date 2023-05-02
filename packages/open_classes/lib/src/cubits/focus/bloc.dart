// Dart imports:

// Package imports:
import 'package:bloc/bloc.dart';
// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';
import 'index.dart';

///
class FocusBloc extends Bloc<FocusEvent, List<NodeID>> {
  ///
  FocusBloc(this.context) : super([]) {
    on<OnFocus>((final event, final emit) {
      if (event.node is NNull) {
        emit([]);
      } else {
        emit([event.node.id]);
      }
    });
    on<AddNodeOnFocus>((final event, final emit) {
      if (!state.contains(event.node.id)) {
        emit([...state, event.node.id]);
      } else {
        emit([...state]..remove(event.node.id));
      }
    });
    on<AddNodesOnFocus>((final event, final emit) {
      emit(event.nodes.map((final e) => e.id).toList());
    });
  }

  /// Context
  BuildContext context;
}
