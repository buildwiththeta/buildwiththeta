import 'package:theta_models/src/models/min_project.dart';

/// Mapper for color styles
class MinProjectModelMapper {
  const MinProjectModelMapper();

  static const _idKey = 'id';
  static const _nameKey = 'name';
  static const _iconUrlKey = 'icon_url';
  static const _updatedAtKey = 'updated_at';

  /// For a single instance
  MinProjectModel fromJson({required final Map<String, dynamic> json}) =>
      MinProjectModel(
        id: json[_idKey] as int,
        name: json[_nameKey] as String,
        image: json[_iconUrlKey] as String?,
        updatedAt: DateTime.tryParse(json[_updatedAtKey] as String? ?? '') ??
            DateTime.now(),
      );

  /// Get a list of color styles from json
  List<MinProjectModel> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(json: e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final MinProjectModel e) => <String, dynamic>{
        _idKey: e.id,
        _nameKey: e.name,
        _iconUrlKey: e.image,
        _updatedAtKey: e.updatedAt.toIso8601String()
      };

  /// Copy with new values
  MinProjectModel copyWith({
    required final MinProjectModel originalModel,
    final int? id,
    final String? name,
    final String? image,
    final DateTime? updatedAt,
  }) {
    return MinProjectModel(
      id: id ?? originalModel.id,
      name: name ?? originalModel.name,
      image: image ?? originalModel.image,
      updatedAt: updatedAt ?? originalModel.updatedAt,
    );
  }
}
