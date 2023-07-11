import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PressedKeysCubit extends Cubit<PressedKeysState> {
  PressedKeysCubit() : super(const PressedKeysState(pressedKeys: {}));

  void update(Set<LogicalKeyboardKey> keys) =>
      emit(state.copyWith(pressedKeys: keys));

  void add(LogicalKeyboardKey key) {
    final keys = {...state.pressedKeys};
    keys.add(key);
    emit(state.copyWith(pressedKeys: keys));
  }

  void remove(LogicalKeyboardKey key) {
    final keys = {...state.pressedKeys};
    keys.remove(key);
    emit(state.copyWith(pressedKeys: keys));
  }

  void clear() => emit(const PressedKeysState(pressedKeys: {}));
}

class PressedKeysState extends Equatable {
  const PressedKeysState({
    required this.pressedKeys,
  });

  final Set<LogicalKeyboardKey> pressedKeys;

  PressedKeysState copyWith({
    Set<LogicalKeyboardKey>? pressedKeys,
  }) =>
      PressedKeysState(
        pressedKeys: pressedKeys ?? this.pressedKeys,
      );

  @override
  List<Object> get props => [pressedKeys, pressedKeys.length];
}
