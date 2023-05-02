// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InviteEntity _$$_InviteEntityFromJson(Map<String, dynamic> json) =>
    _$_InviteEntity(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      teamId: json['team_id'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_InviteEntityToJson(_$_InviteEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'team_id': instance.teamId,
      'email': instance.email,
    };
