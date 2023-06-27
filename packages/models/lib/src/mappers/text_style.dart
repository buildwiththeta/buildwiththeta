import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class TextStylesMapper extends Mapper<TextStyleEntity> {
  const TextStylesMapper();
  static const idKey = 'id';
  static const typeKey = 'type';
  static const branchKey = 'branch_id';
  static const propertiesKey = 'properties';
  static const nameKey = 'name';
  static const familyKey = 'family';
  static const sizeKey = 'size';
  static const weightKey = 'weight';
  static const _stabilID = 'stabil_id';

  /// For a single instance
  @override
  TextStyleEntity fromJson(final Map<String, dynamic> json) => TextStyleEntity(
      id: json[idKey],
      stabilID: json[_stabilID],
      branchID: json[branchKey],
      name: json[nameKey],
      fontFamily: json[propertiesKey][familyKey],
      fontSize: json[propertiesKey][sizeKey] != null
          ? FFontSize.fromJson(json[propertiesKey][sizeKey])
          : const FFontSize(),
      fontWeight: FFontWeight.fromJson(
        '${json[propertiesKey][weightKey]}',
      ));

  /// Get a list of color styles from json
  @override
  List<TextStyleEntity> listFromJson(final List<dynamic> list) {
    return list.map((e) => fromJson(e)).toList();
  }

  /// Return a json from this instance
  @override
  Map<String, dynamic> toJson(final TextStyleEntity e) => {
        typeKey: 'text',
        branchKey: e.branchID,
        nameKey: e.name,
        propertiesKey: {
          familyKey: e.fontFamily,
          sizeKey: e.fontSize.toJson(),
          weightKey: e.fontWeight.toJson()
        }
      };

  Map<String, dynamic> toJsonWithId(final TextStyleEntity e) => {
        idKey: e.id,
        _stabilID: e.stabilID,
        typeKey: 'text',
        branchKey: e.branchID,
        nameKey: e.name,
        propertiesKey: {
          familyKey: e.fontFamily,
          sizeKey: e.fontSize.toJson(),
          weightKey: e.fontWeight.toJson()
        }
      };

  Map<String, dynamic> toJsonWithStabilID(final TextStyleEntity e) => {
        _stabilID: e.stabilID,
        typeKey: 'text',
        branchKey: e.branchID,
        nameKey: e.name,
        propertiesKey: {
          familyKey: e.fontFamily,
          sizeKey: e.fontSize.toJson(),
          weightKey: e.fontWeight.toJson()
        }
      };

  TextStyleEntity copyWith(final TextStyleEntity e,
          {final String? id,
          final String? stabilID,
          final String? branchID,
          final String? name,
          final String? fontFamily,
          final FFontSize? fontSize,
          final FFontWeight? fontWeight}) =>
      TextStyleEntity(
          id: id ?? e.id,
          stabilID: stabilID ?? e.stabilID,
          branchID: branchID ?? e.branchID,
          name: name ?? e.name,
          fontFamily: fontFamily ?? e.fontFamily,
          fontSize: fontSize ?? e.fontSize,
          fontWeight: fontWeight ?? e.fontWeight);
}
