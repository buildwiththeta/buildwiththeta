// Dart imports:

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../enums/index.dart';
import 'index.dart';

/// Uses a Mapper to serialize/deserialize.
class AssetEntity extends Equatable {
  const AssetEntity({
    required this.id,
    required this.projectID,
    required this.type,
    required this.fileName,
    required this.url,
    required this.createdAt,
  });

  final PageID id;
  final ProjectID projectID;
  final AssetType type;
  final String fileName;
  final String url;
  final DateTime createdAt;

  AssetEntity copyWith({
    final String? id,
    final String? projectID,
    final AssetType? type,
    final String? fileName,
    final String? url,
    final DateTime? createdAt,
  }) =>
      AssetEntity(
        id: id ?? this.id,
        projectID: projectID ?? this.projectID,
        type: type ?? this.type,
        fileName: fileName ?? this.fileName,
        url: url ?? this.url,
        createdAt: createdAt ?? this.createdAt,
      );

  @override
  List<Object?> get props => [
        id,
        projectID,
        type,
        fileName,
        url,
        createdAt,
      ];

  @override
  String toString() =>
      'AssetEntity { id: $id, projectID: $projectID, type: $type, fileName: $fileName, url: $url, createdAt: $createdAt}';
}
