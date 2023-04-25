// ignore_for_file: public_member_api_docs

// Package imports:
import '../widgets/features/text_type_input.dart';

class MapElement {
  const MapElement({
    required this.key,
    required this.value,
  });

  MapElement.fromJson(final Map<String, dynamic> json)
      : key = json['k'] != null ? json['k'] as String : '',
        value = FTextTypeInput.fromJson(json['v'] as Map<String, dynamic>?);

  final String key;
  final FTextTypeInput value;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'k': key,
        'v': value.toJson(),
      };

  MapElement copyWith({
    final String? key,
    final FTextTypeInput? value,
  }) =>
      MapElement(key: key ?? this.key, value: value ?? this.value);
}
