// ignore_for_file: public_member_api_docs, avoid_dynamic_calls

// Project imports:

import 'package:theta_models/theta_models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class TeamEntity with _$TeamEntity {
  factory TeamEntity({
    required TeamID id,
    required String name,
    required String? description,
    required String? website,
    @JsonKey(name: 'author_uid') required UserID authorId,
  }) = _TeamEntity;

  factory TeamEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamEntityFromJson(json);
}
