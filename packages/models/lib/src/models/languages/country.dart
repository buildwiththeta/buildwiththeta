class TetaCountry {
  const TetaCountry({
    required this.flagEmoji,
    required this.name,
    required this.languageCode,
  });

  TetaCountry.fromJson(final Map<String, dynamic> json)
      : flagEmoji = json['flag'] as String? ?? '',
        name = json['name'] as String,
        languageCode = json['lang'] as String;

  final String flagEmoji;
  final String name;
  final String languageCode;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'flag': flagEmoji,
        'name': name,
        'lang': languageCode,
      };
}

final getTetaCountries = [
  const TetaCountry(languageCode: 'af', name: 'Afrikaans', flagEmoji: '🇿🇦'),
  const TetaCountry(languageCode: 'am', name: 'Amharic', flagEmoji: '🇪🇹'),
  const TetaCountry(languageCode: 'ar', name: 'Arabic', flagEmoji: '🇦🇪'),
  const TetaCountry(languageCode: 'as', name: 'Assamese', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'az', name: 'Azerbaijani', flagEmoji: '🇦🇿'),
  const TetaCountry(languageCode: 'be', name: 'Belarusian', flagEmoji: '🇧🇾'),
  const TetaCountry(languageCode: 'bg', name: 'Bulgarian', flagEmoji: '🇧🇬'),
  const TetaCountry(
      languageCode: 'bn', name: 'Bengali Bangla', flagEmoji: '🇧🇩'),
  const TetaCountry(languageCode: 'bs', name: 'Bosnian', flagEmoji: '🇧🇦'),
  const TetaCountry(
      languageCode: 'ca', name: 'Catalan Valencian', flagEmoji: '🇪🇸'),
  const TetaCountry(languageCode: 'cs', name: 'Czech', flagEmoji: '🇨🇿'),
  const TetaCountry(languageCode: 'da', name: 'Danish', flagEmoji: '🇩🇰'),
  const TetaCountry(languageCode: 'de', name: 'German', flagEmoji: '🇩🇪'),
  const TetaCountry(
      languageCode: 'el', name: 'Modern Greek', flagEmoji: '🇬🇷'),
  const TetaCountry(languageCode: 'en', name: 'English', flagEmoji: '🇺🇸'),
  const TetaCountry(
      languageCode: 'es', name: 'Spanish Castilian', flagEmoji: '🇪🇸'),
  const TetaCountry(languageCode: 'et', name: 'Estonian', flagEmoji: '🇪🇪'),
  const TetaCountry(languageCode: 'eu', name: 'Basque', flagEmoji: '🇪🇸'),
  const TetaCountry(languageCode: 'fa', name: 'Persian', flagEmoji: '🇮🇷'),
  const TetaCountry(languageCode: 'fi', name: 'Finnish', flagEmoji: '🇫🇮'),
  const TetaCountry(
    languageCode: 'fil',
    name: 'Filipino Pilipino',
    flagEmoji: '🇵🇭',
  ),
  const TetaCountry(languageCode: 'fr', name: 'French', flagEmoji: '🇫🇷'),
  const TetaCountry(languageCode: 'gl', name: 'Galician', flagEmoji: '🇪🇸'),
  const TetaCountry(
    languageCode: 'gsw',
    name: 'Swiss German Alemannic Alsatian',
    flagEmoji: '🇨🇭',
  ),
  const TetaCountry(languageCode: 'gu', name: 'Gujarati', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'he', name: 'Hebrew', flagEmoji: '🇮🇱'),
  const TetaCountry(languageCode: 'hi', name: 'Hindi', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'hr', name: 'Croatian', flagEmoji: '🇭🇷'),
  const TetaCountry(languageCode: 'hu', name: 'Hungarian', flagEmoji: '🇭🇺'),
  const TetaCountry(languageCode: 'hy', name: 'Armenian', flagEmoji: '🇦🇲'),
  const TetaCountry(languageCode: 'id', name: 'Indonesian', flagEmoji: '🇮🇩'),
  const TetaCountry(languageCode: 'is', name: 'Icelandic', flagEmoji: '🇮🇸'),
  const TetaCountry(languageCode: 'it', name: 'Italian', flagEmoji: '🇮🇹'),
  const TetaCountry(languageCode: 'ja', name: 'Japanese', flagEmoji: '🇯🇵'),
  const TetaCountry(languageCode: 'ka', name: 'Georgian', flagEmoji: '🇬🇪'),
  const TetaCountry(languageCode: 'kk', name: 'Kazakh', flagEmoji: '🇰🇿'),
  const TetaCountry(
    languageCode: 'km',
    name: 'Khmer Central Khmer',
    flagEmoji: '🇰🇭',
  ),
  const TetaCountry(languageCode: 'kn', name: 'Kannada', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'ko', name: 'Korean', flagEmoji: '🇰🇷'),
  const TetaCountry(
      languageCode: 'ky', name: 'Kirghiz Kyrgyz', flagEmoji: '🇰🇬'),
  const TetaCountry(languageCode: 'lo', name: 'Lao', flagEmoji: '🇱🇦'),
  const TetaCountry(languageCode: 'lt', name: 'Lithuanian', flagEmoji: '🇱🇹'),
  const TetaCountry(languageCode: 'lv', name: 'Latvian', flagEmoji: '🇱🇻'),
  const TetaCountry(languageCode: 'mk', name: 'Macedonian', flagEmoji: '🇲🇰'),
  const TetaCountry(languageCode: 'ml', name: 'Malayalam', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'mn', name: 'Mongolian', flagEmoji: '🇲🇳'),
  const TetaCountry(languageCode: 'mr', name: 'Marathi', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'ms', name: 'Malay', flagEmoji: '🇲🇾'),
  const TetaCountry(languageCode: 'my', name: 'Burmese', flagEmoji: '🇲🇲'),
  const TetaCountry(
      languageCode: 'nb', name: 'Norwegian Bokmål', flagEmoji: '🇳🇴'),
  const TetaCountry(languageCode: 'ne', name: 'Nepali', flagEmoji: '🇳🇵'),
  const TetaCountry(
      languageCode: 'nl', name: 'Dutch Flemish', flagEmoji: '🇳🇱'),
  const TetaCountry(languageCode: 'no', name: 'Norwegian', flagEmoji: '🇳🇴'),
  const TetaCountry(languageCode: 'or', name: 'Oriya', flagEmoji: '🇮🇳'),
  const TetaCountry(
      languageCode: 'pa', name: 'Panjabi Punjabi', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'pl', name: 'Polish', flagEmoji: '🇵🇱'),
  const TetaCountry(
      languageCode: 'ps', name: 'Pushto Pashto', flagEmoji: '🇦🇫'),
  const TetaCountry(languageCode: 'pt', name: 'Portuguese', flagEmoji: '🇵🇹'),
  const TetaCountry(
    languageCode: 'ro',
    name: 'Romanian Moldavian Moldovan',
    flagEmoji: '🇷🇴',
  ),
  const TetaCountry(languageCode: 'ru', name: 'Russian', flagEmoji: '🇷🇺'),
  const TetaCountry(
      languageCode: 'si', name: 'Sinhala Sinhalese', flagEmoji: '🇱🇰'),
  const TetaCountry(languageCode: 'sk', name: 'Slovak', flagEmoji: '🇸🇰'),
  const TetaCountry(languageCode: 'sl', name: 'Slovenian', flagEmoji: '🇸🇮'),
  const TetaCountry(languageCode: 'sq', name: 'Albanian', flagEmoji: '🇦🇱'),
  const TetaCountry(languageCode: 'sr', name: 'Serbian', flagEmoji: '🇷🇸'),
  const TetaCountry(languageCode: 'sv', name: 'Swedish', flagEmoji: '🇸🇪'),
  const TetaCountry(languageCode: 'sw', name: 'Swahili', flagEmoji: '🇰🇪'),
  const TetaCountry(languageCode: 'ta', name: 'Tamil', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'te', name: 'Telugu', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'th', name: 'Thai', flagEmoji: '🇹🇭'),
  const TetaCountry(languageCode: 'tl', name: 'Tagalog', flagEmoji: '🇵🇭'),
  const TetaCountry(languageCode: 'tr', name: 'Turkish', flagEmoji: '🇹🇷'),
  const TetaCountry(languageCode: 'uk', name: 'Ukrainian', flagEmoji: '🇺🇦'),
  const TetaCountry(languageCode: 'ur', name: 'Urdu', flagEmoji: '🇮🇳'),
  const TetaCountry(languageCode: 'uz', name: 'Uzbek', flagEmoji: '🇺🇿'),
  const TetaCountry(languageCode: 'vi', name: 'Vietnamese', flagEmoji: '🇻🇳'),
  const TetaCountry(languageCode: 'zh', name: 'Chinese', flagEmoji: '🇨🇳'),
  const TetaCountry(languageCode: 'zu', name: 'Zulu', flagEmoji: '🇿🇦'),
];

List<TetaCountry> get getTetaCountriesPerName => getTetaCountries..sort();
