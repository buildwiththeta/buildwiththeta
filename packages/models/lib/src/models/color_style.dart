// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/features/index.dart';

import 'index.dart';

class ColorStyleEntity extends Equatable {
  /// Constructor
  const ColorStyleEntity({
    this.id = '',
    required this.branchID,
    required this.name,
    required this.dark,
    required this.light,
  });

  final ID id;
  final BranchID branchID;
  final String name;
  final FFill dark;
  final FFill light;

  @override
  List<Object> get props => [id, branchID, name, dark, light];

  @override
  String toString() =>
      'ColorStyleModel { id: $id, branch_id: $branchID, name: $name }';
}
