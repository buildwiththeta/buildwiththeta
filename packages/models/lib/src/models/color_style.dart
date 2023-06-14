// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/features/index.dart';

import 'index.dart';

/// Entity for a color style.
/// Uses a Mapper to serialize/deserialize.
class ColorStyleEntity extends Equatable {
  /// Constructor
  const ColorStyleEntity({
    this.id = '',
    required this.branchID,
    required this.name,
    required this.dark,
    required this.light,
    this.stabilID = '',
  });

  final ID id;
  final BranchID branchID;
  final String name;
  final FFill dark;
  final FFill light;
  final ID stabilID;

  @override
  List<Object> get props => [id, stabilID, branchID, name, dark, light];

  @override
  String toString() =>
      'ColorStyleModel { id: $id, stabilID:$stabilID branch_id: $branchID, name: $name }';
}
