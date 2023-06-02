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
    required this.refPageId,
  });

  final PageID id;
  final BranchID branchID;
  final String name;
  final PageID? refPageId;

  PageEntity copyWith({
    final String? id,
    final String? branchID,
    final String? name,
    final String? refPageId,
  }) =>
      PageEntity(
        id: id ?? this.id,
        branchID: branchID ?? this.branchID,
        name: name ?? this.name,
        refPageId: refPageId ?? this.refPageId,
      );

  @override
  List<Object?> get props => [
        id,
        branchID,
        name,
        refPageId,
      ];

  @override
  String toString() =>
      'PageEntity { id: $id, name: $name, branch_id: $branchID, ref_page_id: $refPageId }';
}
