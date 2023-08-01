part of 'panels_cubit.dart';

@freezed
class PanelsState with _$PanelsState {
  const factory PanelsState.closed() = _Closed;
  const factory PanelsState.styles() = _Styles;
  const factory PanelsState.tree() = _Tree;
  const factory PanelsState.add() = _Add;
}
