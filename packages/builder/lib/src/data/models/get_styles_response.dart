import 'package:theta_models/theta_models.dart';

class GetStylesResponseEntity {
  GetStylesResponseEntity({
    required this.colorStyles,
    required this.textStyles,
  });

  static const _colorMapper = ColorStylesMapper();
  static const _textMapper = TextStylesMapper();

  final ColorStyles colorStyles;
  final TextStyles textStyles;

  static GetStylesResponseEntity fromJson(Map<String, dynamic> json) =>
      GetStylesResponseEntity(
        colorStyles: _colorMapper.listFromJson(json['colors']),
        textStyles: _textMapper.listFromJson(json['texts']),
      );

  Map<String, dynamic> toJson() => {
        'colors': colorStyles.map((e) => _colorMapper.toJsonWithId(e)).toList(),
        'texts': textStyles.map((e) => _textMapper.toJsonWithId(e)).toList(),
      };
}
