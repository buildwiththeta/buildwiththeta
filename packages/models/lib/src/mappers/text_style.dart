import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class TextStylesMapper {
  const TextStylesMapper();
  static const _idKey = 'id';
  static const _typeKey = 'type';
  static const _branchKey = 'branch_id';
  static const _propertiesKey = 'properties';
  static const _nameKey = 'name';
  static const _familyKey = 'family';
  static const _sizeKey = 'size';
  static const _weightKey = 'weight';

  /// For a single instance
  TextStyleEntity fromJson(final Map<String, dynamic> json) => TextStyleEntity(
      id: json[_idKey],
      branchID: json[_branchKey],
      name: json[_nameKey],
      fontFamily: json[_propertiesKey][_familyKey],
      fontSize: json[_propertiesKey][_sizeKey] != null
          ? FFontSize.fromJson(json[_propertiesKey][_sizeKey])
          : const FFontSize(),
      fontWeight: FFontWeight.fromJson(
        '${json[_propertiesKey][_weightKey]}',
      ));

  /// Get a list of color styles from json
  List<TextStyleEntity> listFromJson(final List<dynamic> list) {
    return list.map((e) => fromJson(e)).toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final TextStyleEntity e) => {
        _typeKey: 'text',
        _branchKey: e.branchID,
        _nameKey: e.name,
        _propertiesKey: {
          _familyKey: e.fontFamily,
          _sizeKey: e.fontSize.toJson(),
          _weightKey: e.fontWeight.toJson()
        }
      };

  TextStyleEntity copyWith(final TextStyleEntity e,
          {final String? id,
          final String? branchID,
          final String? name,
          final String? fontFamily,
          final FFontSize? fontSize,
          final FFontWeight? fontWeight}) =>
      TextStyleEntity(
          id: id ?? e.id,
          branchID: branchID ?? e.branchID,
          name: name ?? e.name,
          fontFamily: fontFamily ?? e.fontFamily,
          fontSize: fontSize ?? e.fontSize,
          fontWeight: fontWeight ?? e.fontWeight);
}
