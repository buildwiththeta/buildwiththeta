// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InviteEntity _$InviteEntityFromJson(Map<String, dynamic> json) {
  return _InviteEntity.fromJson(json);
}

/// @nodoc
mixin _$InviteEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  String get teamId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InviteEntityCopyWith<InviteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEntityCopyWith<$Res> {
  factory $InviteEntityCopyWith(
          InviteEntity value, $Res Function(InviteEntity) then) =
      _$InviteEntityCopyWithImpl<$Res, InviteEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'team_id') String teamId,
      String email});
}

/// @nodoc
class _$InviteEntityCopyWithImpl<$Res, $Val extends InviteEntity>
    implements $InviteEntityCopyWith<$Res> {
  _$InviteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? teamId = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InviteEntityCopyWith<$Res>
    implements $InviteEntityCopyWith<$Res> {
  factory _$$_InviteEntityCopyWith(
          _$_InviteEntity value, $Res Function(_$_InviteEntity) then) =
      __$$_InviteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'team_id') String teamId,
      String email});
}

/// @nodoc
class __$$_InviteEntityCopyWithImpl<$Res>
    extends _$InviteEntityCopyWithImpl<$Res, _$_InviteEntity>
    implements _$$_InviteEntityCopyWith<$Res> {
  __$$_InviteEntityCopyWithImpl(
      _$_InviteEntity _value, $Res Function(_$_InviteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? teamId = null,
    Object? email = null,
  }) {
    return _then(_$_InviteEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InviteEntity implements _InviteEntity {
  _$_InviteEntity(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'team_id') required this.teamId,
      required this.email});

  factory _$_InviteEntity.fromJson(Map<String, dynamic> json) =>
      _$$_InviteEntityFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'team_id')
  final String teamId;
  @override
  final String email;

  @override
  String toString() {
    return 'InviteEntity(id: $id, userId: $userId, teamId: $teamId, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InviteEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, teamId, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InviteEntityCopyWith<_$_InviteEntity> get copyWith =>
      __$$_InviteEntityCopyWithImpl<_$_InviteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InviteEntityToJson(
      this,
    );
  }
}

abstract class _InviteEntity implements InviteEntity {
  factory _InviteEntity(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'team_id') required final String teamId,
      required final String email}) = _$_InviteEntity;

  factory _InviteEntity.fromJson(Map<String, dynamic> json) =
      _$_InviteEntity.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'team_id')
  String get teamId;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_InviteEntityCopyWith<_$_InviteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
