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
}
