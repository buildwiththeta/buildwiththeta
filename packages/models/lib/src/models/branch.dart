import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/typedefs.dart';

/// Entity for a branch.
/// Uses BranchMapper to serialize/deserialize.
class BranchEntity extends Equatable {
  const BranchEntity({
    required this.id,
    required this.projectID,
    required this.entryPointPageID,
    required this.name,
    required this.description,
    required this.createdAt,
  });

  final BranchID id;
  final ProjectID projectID;
  final PageID? entryPointPageID;
  final String name;
  final String? description;
  final DateTime createdAt;

  @override
  List<Object?> get props =>
      [id, projectID, entryPointPageID, name, description, createdAt];
}
