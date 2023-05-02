import 'package:freezed_annotation/freezed_annotation.dart';

import 'index.dart';

part 'invite.freezed.dart';
part 'invite.g.dart';

@freezed
class InviteEntity with _$InviteEntity {
  /// Constructor
  factory InviteEntity({
    required ID id,
    @JsonKey(name: 'user_id') required UserID userId,
    @JsonKey(name: 'team_id') required TeamID teamId,
    required String email,
  }) = _InviteEntity;

  factory InviteEntity.fromJson(Map<String, dynamic> json) =>
      _$InviteEntityFromJson(json);
}
