part of 'styles_cubit.dart';

@freezed
class StylesState with _$StylesState {
  const factory StylesState.loading() = _Loading;
  const factory StylesState.loaded(
    ColorStyles colorStyles,
    TextStyles textStyles,
    ThemeMode themeMode,
  ) = _Loaded;
  const factory StylesState.error(String errorMessage) = _Error;
}
