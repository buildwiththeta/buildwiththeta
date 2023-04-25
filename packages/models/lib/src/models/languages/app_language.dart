// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:theta_models/src/models/languages/country.dart';

class AppLanguageObject {
  const AppLanguageObject({
    this.languages = const <TetaCountry>[
      TetaCountry(languageCode: 'en', name: 'English', flagEmoji: '🇺🇸'),
    ],
    this.defaultLanguage = const TetaCountry(
      languageCode: 'en',
      name: 'English',
      flagEmoji: '🇺🇸',
    ),
    this.terms = const <String, dynamic>{},
  });

  static AppLanguageObject fromJson(final Map<String, dynamic> json) {
    if (json['app_language'] is String) {
      json['app_language'] =
          jsonDecode(json['app_language'] as String) as Map<String, dynamic>;
    }
    try {
      if (json['app_language'] == null ||
          json['app_language']['lang'] == null) {
        return const AppLanguageObject();
      } else {
        return AppLanguageObject(
          languages:
              (json['app_language']['lang'] as List<dynamic>? ?? <dynamic>[])
                  .map(
                    (final dynamic e) =>
                        TetaCountry.fromJson(e as Map<String, dynamic>),
                  )
                  .toList(),
          defaultLanguage: json['app_language']['default'] != null
              ? TetaCountry.fromJson(
                  json['app_language']['default'] as Map<String, dynamic>,
                )
              : const TetaCountry(
                  languageCode: 'en',
                  name: 'English',
                  flagEmoji: '🇺🇸',
                ),
          terms: json['app_language']['terms'] as Map<String, dynamic>? ??
              <String, dynamic>{},
        );
      }
    } catch (e) {
      return const AppLanguageObject();
    }
  }

  final List<TetaCountry> languages;
  final Map<String, dynamic> terms;
  final TetaCountry defaultLanguage;

  Map<String, dynamic> get() {
    return terms;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'app_language': <String, dynamic>{
          'lang': languages.map((final e) => e.toJson()).toList(),
          'terms': terms,
          'default': defaultLanguage.toJson(),
        },
      };

  AppLanguageObject copyWith({
    final List<TetaCountry>? languages,
    final Map<String, dynamic>? terms,
    final TetaCountry? defaultLanguage,
  }) =>
      AppLanguageObject(
        languages: languages ?? this.languages,
        terms: terms ?? this.terms,
        defaultLanguage: defaultLanguage ?? this.defaultLanguage,
      );
}
