// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Package imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Project Entity.
/// Identifies a project in [buildwiththeta.com](https://buildwiththeta.com).
///
/// Read [internal docs](https://github.com/buildwiththeta/backend/blob/main/docs/supabase_db/tables.md#projects) about projects structure. Need a team access.
///
/// Uses a Mapper to serialize/deserialize.
class ProjectEntity extends Equatable {
  const ProjectEntity({
    required this.id,
    required this.teamId,
    required this.defaultBranchId,
    required this.name,
    required this.updatedAt,
    required this.createdAt,
    required this.isPublic,
  });

  final ProjectID id;
  final TeamID teamId;
  final BranchID? defaultBranchId;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isPublic;

  @override
  List<Object?> get props => [
        id,
        name,
        teamId,
        defaultBranchId,
        createdAt,
        updatedAt,
        isPublic,
      ];

  @override
  String toString() => 'ProjectObject { id: $id, team_id: $teamId }';
}
