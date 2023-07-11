part of 'pages_cubit.dart';

@freezed
class PagesState with _$PagesState {
  const factory PagesState.loading() = _Loading;
  const factory PagesState.loaded(Pages pages) = _Loaded;
  const factory PagesState.error(String errorMessage) = _Error;
}
