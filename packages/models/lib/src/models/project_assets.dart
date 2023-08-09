// Dart imports:

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../enums/index.dart';
import 'index.dart';

/// Uses a Mapper to serialize/deserialize.
class ProjectAssetsEntity extends Equatable {
  const ProjectAssetsEntity({
    required this.id,
    required this.projectID,
    required this.type,
    required this.folderName,
    required this.url,
  });

  final PageID id;
  final ProjectID projectID;
  final AssetsType type;
  final String folderName;
  final String url;

  ProjectAssetsEntity copyWith({
    final String? id,
    final String? projectID,
    final AssetsType? type,
    final String? folderName,
    final String? url,
  }) =>
      ProjectAssetsEntity(
        id: id ?? this.id,
        projectID: projectID ?? this.projectID,
        type: type ?? this.type,
        folderName: folderName ?? this.folderName,
        url: url ?? this.url,
      );

  @override
  List<Object?> get props => [
        id,
        projectID,
        type,
        folderName,
        url,
      ];

  @override
  String toString() =>
      'ProjectAssetsEntity { id: $id, projectID: $projectID, type: $type, folderName: $folderName, url: $url }';
}
