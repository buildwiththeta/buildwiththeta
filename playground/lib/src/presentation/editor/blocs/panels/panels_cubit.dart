import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'panels_cubit.freezed.dart';
part 'panels_state.dart';

enum PanelsEnum {
  closed,
  styles,
  tree,
  add,
}

class PanelsCubit extends Cubit<PanelsState> {
  PanelsCubit() : super(const PanelsState.closed());

  void update(PanelsEnum panel) {
    switch (panel) {
      case PanelsEnum.closed:
        emit(const PanelsState.closed());
        break;
      case PanelsEnum.add:
        emit(
          state.maybeMap(
            add: (x) => const PanelsState.closed(),
            orElse: () => const PanelsState.add(),
          ),
        );
        break;
      case PanelsEnum.styles:
        emit(
          state.maybeMap(
            styles: (x) => const PanelsState.closed(),
            orElse: () => const PanelsState.styles(),
          ),
        );
        break;
      case PanelsEnum.tree:
        emit(
          state.maybeMap(
            tree: (x) => const PanelsState.closed(),
            orElse: () => const PanelsState.tree(),
          ),
        );
        break;
    }
  }
}
