// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamEntity _$TeamEntityFromJson(Map<String, dynamic> json) {
  return _TeamEntity.fromJson(json);
}

/// @nodoc
mixin _$TeamEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_uid')
  String get authorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamEntityCopyWith<TeamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEntityCopyWith<$Res> {
  factory $TeamEntityCopyWith(
          TeamEntity value, $Res Function(TeamEntity) then) =
      _$TeamEntityCopyWithImpl<$Res, TeamEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? website,
      @JsonKey(name: 'author_uid') String authorId});
}

/// @nodoc
class _$TeamEntityCopyWithImpl<$Res, $Val extends TeamEntity>
    implements $TeamEntityCopyWith<$Res> {
  _$TeamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? website = freezed,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamEntityCopyWith<$Res>
    implements $TeamEntityCopyWith<$Res> {
  factory _$$_TeamEntityCopyWith(
          _$_TeamEntity value, $Res Function(_$_TeamEntity) then) =
      __$$_TeamEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? website,
      @JsonKey(name: 'author_uid') String authorId});
}

/// @nodoc
class __$$_TeamEntityCopyWithImpl<$Res>
    extends _$TeamEntityCopyWithImpl<$Res, _$_TeamEntity>
    implements _$$_TeamEntityCopyWith<$Res> {
  __$$_TeamEntityCopyWithImpl(
      _$_TeamEntity _value, $Res Function(_$_TeamEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? website = freezed,
    Object? authorId = null,
  }) {
    return _then(_$_TeamEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamEntity implements _TeamEntity {
  _$_TeamEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.website,
      @JsonKey(name: 'author_uid') required this.authorId});

  factory _$_TeamEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TeamEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? website;
  @override
  @JsonKey(name: 'author_uid')
  final String authorId;

  @override
  String toString() {
    return 'TeamEntity(id: $id, name: $name, description: $description, website: $website, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, website, authorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamEntityCopyWith<_$_TeamEntity> get copyWith =>
      __$$_TeamEntityCopyWithImpl<_$_TeamEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamEntityToJson(
      this,
    );
  }
}

abstract class _TeamEntity implements TeamEntity {
  factory _TeamEntity(
          {required final String id,
          required final String name,
          required final String? description,
          required final String? website,
          @JsonKey(name: 'author_uid') required final String authorId}) =
      _$_TeamEntity;

  factory _TeamEntity.fromJson(Map<String, dynamic> json) =
      _$_TeamEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get website;
  @override
  @JsonKey(name: 'author_uid')
  String get authorId;
  @override
  @JsonKey(ignore: true)
  _$$_TeamEntityCopyWith<_$_TeamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
