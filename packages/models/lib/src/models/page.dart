// Dart imports:

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import 'index.dart';

/// Entity for a page inside a project.
/// Uses a Mapper to serialize/deserialize.
class PageEntity extends Equatable {
  const PageEntity({
    required this.id,
    required this.branchID,
    required this.name,
    required this.stabilID,
  });

  final PageID id;
  final BranchID branchID;
  final String name;
  final PageID? stabilID;

  PageEntity copyWith({
    final String? id,
    final String? branchID,
    final String? name,
    final String? refPageId,
    final String? stabilID,
  }) =>
      PageEntity(
        id: id ?? this.id,
        branchID: branchID ?? this.branchID,
        name: name ?? this.name,
        stabilID: stabilID ?? this.stabilID,
      );

  @override
  List<Object?> get props => [
        id,
        branchID,
        name,
        stabilID,
      ];

  @override
  String toString() =>
      'PageEntity { id: $id, name: $name, branch_id: $branchID, stabil_id: $stabilID }';
}
