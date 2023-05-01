import 'package:enum_to_string/enum_to_string.dart';
import 'package:theta_models/theta_models.dart';

class VariableMapper {
  const VariableMapper();

  static const _idField = 'id';
  static const _pageIdField = 'page_id';
  static const _nameField = 'name';
  static const _typeField = 'type';
  static const _defaultValueField = 'default_value';

  /// For a single instance
  VariableEntity fromJson(final Map<String, dynamic> json) => VariableEntity(
        id: json[_idField],
        pageID: json[_pageIdField],
        type: EnumToString.fromString(
          VariableType.values,
          json[_typeField],
        )!,
        name: json[_nameField],
        defaultValue: json[_defaultValueField],
      );

  /// Get a list of color styles from json
  List<VariableEntity> listFromJson(final List<dynamic> list) => list
      .map(
        (final e) => fromJson(e),
      )
      .toList();

  Map<String, dynamic> toJson(VariableEntity e) => {
        _idField: e.id,
        _typeField: EnumToString.convertToString(e.type),
        _nameField: e.name,
        _defaultValueField: e.defaultValue,
      };

  VariableEntity copyWith(
    final VariableEntity e, {
    final ID? id,
    final PageID? pageID,
    final VariableType? type,
    final String? name,
    final dynamic value,
    final String? defaultValue,
  }) =>
      VariableEntity(
        id: id ?? e.id,
        pageID: pageID ?? e.pageID,
        name: name ?? e.name,
        type: type ?? e.type,
        value: value ?? e.value,
        defaultValue: defaultValue ?? e.defaultValue,
      );
}
