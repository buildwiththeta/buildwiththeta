import 'package:theta_models/theta_models.dart';

class GetStylesResponseEntity {
  GetStylesResponseEntity({
    required this.colorStyles,
    required this.textStyles,
    required this.customFonts,
  });

  static const _colorMapper = ColorStylesMapper();
  static const _textMapper = TextStylesMapper();

  final ColorStyles colorStyles;
  final TextStyles textStyles;
  final List<CustomFontEntity> customFonts;

  static GetStylesResponseEntity fromJson(Map<String, dynamic> json) =>
      GetStylesResponseEntity(
        colorStyles: _colorMapper.listFromJson(json['colors']),
        textStyles: _textMapper.listFromJson(json['texts']),
        customFonts: (json['fonts'] as List<dynamic>? ?? [])
            .map<CustomFontEntity>((e) => CustomFontEntity.fromJson(e))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'colors': colorStyles.map((e) => _colorMapper.toJsonWithId(e)).toList(),
        'texts': textStyles.map((e) => _textMapper.toJsonWithId(e)).toList(),
        'fonts': customFonts.map((e) => e.toJson()).toList(),
      };
}
