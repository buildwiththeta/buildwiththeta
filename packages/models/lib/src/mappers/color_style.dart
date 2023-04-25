import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ColorStylesMapper {
  const ColorStylesMapper();
  static const _idKey = '_id';
  static const _channelKey = 'channel_id';
  static const _nameKey = 'name';
  static const _darkKey = 'value';
  static const _lightKey = 'light';

  /// For a single instance
  ColorStyleModel fromJson({required final Map<String, dynamic> json}) =>
      ColorStyleModel(
        id: json[_idKey] as int,
        channelId: json[_channelKey] as int,
        name: json[_nameKey] as String,
        fill: json[_darkKey] != null
            ? FFill.fromJson(json[_darkKey] as Map<String, dynamic>)
            : const FFill(),
        light: json[_lightKey] != null
            ? FFill.fromJson(json[_lightKey] as Map<String, dynamic>)
            : json[_darkKey] != null
                ? FFill.fromJson(json[_darkKey] as Map<String, dynamic>)
                : const FFill(),
      );

  /// Get a list of color styles from json
  List<ColorStyleModel> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(json: e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final ColorStyleModel model) => <String, dynamic>{
        _channelKey: model.channelId,
        _nameKey: model.name,
        _darkKey: model.fill.toJson(),
        _lightKey: model.light.toJson(),
      };
}
