import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theta/theta.dart';

part 'api_playground_cubit.freezed.dart';
part 'api_playground_state.dart';

class APIPlaygroundCubit extends Cubit<APIPlaygroundState> {
  APIPlaygroundCubit() : super(const APIPlaygroundState.unloaded());

  Future<void> update(bool value, String? anonKey) async {
    if (value) {
      if (anonKey == null) {
        emit(const APIPlaygroundState.unloaded());
      } else {
        try {
          await Theta.initialize(anonKey: anonKey);
        } catch (e) {
          debugPrint(e.toString());
        }
        emit(APIPlaygroundState.loaded(anonKey));
      }
    } else {
      emit(const APIPlaygroundState.unloaded());
    }
  }
}
