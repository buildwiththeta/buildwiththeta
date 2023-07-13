import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_logger/light_logger.dart';
import 'package:playground/src/core/constants/projects.dart';
import 'package:theta_models/theta_models.dart';
import 'package:uuid/uuid.dart';

part 'styles_cubit.freezed.dart';
part 'styles_state.dart';

class StylesCubit extends Cubit<StylesState> {
  StylesCubit() : super(const StylesState.loading());

  static const _colorMapper = ColorStylesMapper();
  static const _textMapper = TextStylesMapper();

  void load(ThemeMode startingTheme) => emit(StylesState.loaded(
        defaultColorStyles,
        defaultTextStyles,
        startingTheme,
      ));

  _addColorToState(ColorStyleEntity colorStyle) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      emit(StylesState.loaded([...colors, colorStyle], texts, theme));
    });
  }

  _addTextToState(TextStyleEntity textStyle) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      emit(StylesState.loaded(colors, [...texts, textStyle], theme));
    });
  }

  _updateColorToState(ColorStyleEntity colorStyle) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      final newColors = [...colors];
      newColors[newColors.indexWhere((e) => e.id == colorStyle.id)] =
          colorStyle;
      emit(StylesState.loaded(newColors, texts, theme));
    });
  }

  _updateTextToState(TextStyleEntity textStyle) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      final newTexts = [...texts];
      newTexts[newTexts.indexWhere((e) => e.id == textStyle.id)] = textStyle;
      emit(StylesState.loaded(colors, newTexts, theme));
    });
  }

  _removeColorFromState(ID id) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      emit(StylesState.loaded(
          [...colors]..removeWhere((e) => e.id == id), texts, theme));
    });
  }

  _removeTextFromState(ID id) {
    state.whenOrNull(loaded: (colors, texts, theme) {
      emit(StylesState.loaded(
          colors, [...texts]..removeWhere((e) => e.id == id), theme));
    });
  }

  void onColorStyleAdded(ColorStyleEntity colorStyle) => _addColorToState(
      _colorMapper.copyWith(colorStyle, id: const Uuid().v4()));

  void onTextStyleAdded(TextStyleEntity textStyle) =>
      _addTextToState(_textMapper.copyWith(textStyle, id: const Uuid().v4()));

  void onColorStyleUpdated(ColorStyleEntity colorStyle) =>
      _updateColorToState(_colorMapper.copyWith(colorStyle));

  void onTextStyleUpdated(TextStyleEntity textStyle) =>
      _updateTextToState(_textMapper.copyWith(textStyle));

  void onColorStyleDeleted(ID colorStyleID) =>
      _removeColorFromState(colorStyleID);

  void onTextStyleDeleted(ID textStyleID) => _removeTextFromState(textStyleID);

  void onThemeSwitched(ThemeMode theme) {
    state.whenOrNull(loaded: (colors, texts, _) {
      emit(StylesState.loaded(colors, texts, theme));
    });
  }

  @override
  void onChange(Change<StylesState> change) {
    super.onChange(change);
    change.nextState.maybeWhen(
      error: (errorMessage) => Logger.printError(errorMessage),
      orElse: () => null,
    );
  }
}
