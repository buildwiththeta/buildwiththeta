import 'package:theta_models/src/mappers/mapper.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ColorStylesMapper extends Mapper<ColorStyleEntity> {
  const ColorStylesMapper();
  static const _idKey = '_id';
  static const _branchKey = 'branch_id';
  static const _nameKey = 'name';
  static const _propertiesKey = 'properties';
  static const _darkKey = 'value';
  static const _lightKey = 'light';
  static const _typeKey = 'type';

  /// For a single instance
  @override
  ColorStyleEntity fromJson(Map<String, dynamic> json) => ColorStyleEntity(
        id: json[_idKey],
        branchID: json[_branchKey],
        name: json[_nameKey],
        dark: json[_propertiesKey][_darkKey] != null
            ? FFill.fromJson(json[_propertiesKey][_darkKey])
            : const FFill(),
        light: json[_propertiesKey][_lightKey] != null
            ? FFill.fromJson(json[_propertiesKey][_lightKey])
            : json[_propertiesKey][_darkKey] != null
                ? FFill.fromJson(json[_propertiesKey][_darkKey])
                : const FFill(),
      );

  /// Return a json from this instance
  @override
  Map<String, dynamic> toJson(ColorStyleEntity model) => {
        _typeKey: 'color',
        _branchKey: model.branchID,
        _nameKey: model.name,
        _propertiesKey: {
          _darkKey: model.dark.toJson(),
          _lightKey: model.light.toJson(),
        }
      };

  ColorStyleEntity copyWith(final ColorStyleEntity e,
          {final String? id,
          final String? branchID,
          final String? name,
          final FFill? light,
          final FFill? fill}) =>
      ColorStyleEntity(
        id: id ?? e.id,
        branchID: branchID ?? e.branchID,
        name: name ?? e.name,
        dark: fill ?? e.dark,
        light: light ?? e.light,
      );
}
