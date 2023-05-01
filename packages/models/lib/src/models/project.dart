// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Package imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Project Entity.
/// Identifies a project in [buildwiththeta.com](https://buildwiththeta.com).
///
/// Read [internal docs](https://github.com/buildwiththeta/backend/blob/main/docs/supabase_db/tables.md#projects) about projects structure. Need a team access.
class ProjectEntity extends Equatable {
  const ProjectEntity({
    required this.id,
    required this.slug,
    required this.teamId,
    required this.name,
    required this.updatedAt,
    required this.createdAt,
  });

  final ProjectID id;
  final TeamID teamId;
  final String name;
  final String slug;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        teamId,
        createdAt,
        updatedAt,
      ];

  @override
  String toString() =>
      'ProjectObject { id: $id, slug: $slug, team_id: $teamId }';
}
