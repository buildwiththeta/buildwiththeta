// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_localization/flutter_localization.dart';

class TranslatorGeneratorCubit extends Cubit<TranslatorState> {
  TranslatorGeneratorCubit()
      : super(
          TranslatorState(
            FlutterLocalization.instance,
            FlutterLocalization.instance.currentLocale?.languageCode ?? 'en',
          ),
        );

  void update(final TranslatorState value) => emit(value);
}

class TranslatorState extends Equatable {
  const TranslatorState(
    this.instance,
    this.languageCode,
  );

  final FlutterLocalization instance;
  final String languageCode;

  @override
  List<Object> get props => [
        instance,
        languageCode,
      ];
}
