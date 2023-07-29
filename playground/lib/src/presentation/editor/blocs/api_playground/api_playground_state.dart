part of 'api_playground_cubit.dart';

@freezed
class APIPlaygroundState with _$APIPlaygroundState {
  const factory APIPlaygroundState.unloaded() = _Unloaded;
  const factory APIPlaygroundState.loaded(String anonKey) = _Loaded;
}
