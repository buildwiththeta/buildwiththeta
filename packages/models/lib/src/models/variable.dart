import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

enum VariableType {
  int,
  double,
  string,
  bool,
  json,
}

/// Entity for a variable inside a project.
/// Uses a Mapper to serialize/deserialize.
class VariableEntity extends Equatable {
  const VariableEntity({
    required this.id,
    required this.pageID,
    required this.type,
    required this.name,
    this.value,
    this.defaultValue,
  });

  final ID id;
  final PageID pageID;
  final VariableType type;
  final String name;
  final dynamic value;
  final dynamic defaultValue;

  dynamic get get => value ?? defaultValue;

  @override
  List<Object?> get props => [id, type, name, value, defaultValue];

  @override
  String toString() =>
      'VariableEntity { id: $id, page_id: $pageID, name: $name, value: $get }';
}
