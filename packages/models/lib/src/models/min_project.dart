// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Package imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';
// Flutter imports:
// Project imports:

//ignore: must_be_immutable
class MinProjectModel extends Equatable {
  /// Constructor
  const MinProjectModel({
    required this.id,
    required this.name,
    required this.image,
    required this.updatedAt,
  });

  final ProjectID id;
  final String name;
  final String? image;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        updatedAt,
      ];

  @override
  String toString() => 'ProjectObject { id: $id, name: $name, image: $image, }';
}
