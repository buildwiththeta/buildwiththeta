// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Package imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Team Component Sharing Entity.
///
/// Uses a Mapper to serialize/deserialize.
class ComponentSharingEntity extends Equatable {
  const ComponentSharingEntity({
    required this.id,
    required this.teamId,
    required this.projectId,
    required this.jsonFileUrl,
    required this.description,
    required this.title,
    required this.image,
    required this.pageStabilId,
    required this.createdAt,
  });

  final ID id;
  final TeamID teamId;
  final ProjectID projectId;
  final String jsonFileUrl;
  final String? description;
  final String title;
  final String image;
  final String pageStabilId;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        teamId,
        projectId,
        jsonFileUrl,
        description,
        title,
        image,
        pageStabilId,
        createdAt,
      ];

  @override
  String toString() => ' ComponentSharingEntity { id: $id, team_id: $teamId, '
      'project_id: $projectId, json_file_url: $jsonFileUrl, '
      'description: $description, title: $title, image: $image, '
      'page_stabil_id: $pageStabilId, created_at: $createdAt}';
}
