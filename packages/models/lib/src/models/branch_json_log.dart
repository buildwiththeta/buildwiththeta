import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Entity for a Branch Json Log.
/// Uses BranchJsonLogMapper to serialize/deserialize.
class BranchJsonLogEntity extends Equatable {
  const BranchJsonLogEntity({
    this.id = '',
    required this.projectID,
    required this.action,
    required this.branch,
    required this.componentNames,
    required this.jsonFileUrl,
    required this.createdAt,
  });

  final BranchJsonLogID id;
  final ProjectID projectID;
  final BranchActionTypeEnum action;
  final BranchEntity branch;
  final String componentNames;
  final String jsonFileUrl;
  final DateTime createdAt;

  @override
  List<Object?> get props =>
      [id, projectID, action, branch, componentNames, jsonFileUrl, createdAt];
}
