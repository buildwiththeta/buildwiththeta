// Dart imports:

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import 'index.dart';

class PageEntity extends Equatable {
  const PageEntity({
    required this.id,
    required this.branchID,
    required this.name,
  });

  final PageID id;
  final BranchID branchID;
  final String name;

  PageEntity copyWith({
    final String? id,
    final String? branchID,
    final String? name,
  }) =>
      PageEntity(
        id: id ?? this.id,
        branchID: branchID ?? this.branchID,
        name: name ?? this.name,
      );

  @override
  List<Object?> get props => [
        id,
        branchID,
        name,
      ];

  @override
  String toString() =>
      'PageEntity { id: $id, name: $name, branch_id: $branchID }';
}
