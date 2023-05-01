// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamEntity _$$_TeamEntityFromJson(Map<String, dynamic> json) =>
    _$_TeamEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      website: json['website'] as String?,
      authorId: json['author_uid'] as String,
    );

Map<String, dynamic> _$$_TeamEntityToJson(_$_TeamEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'website': instance.website,
      'author_uid': instance.authorId,
    };
