// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_playground_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$APIPlaygroundState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function(String anonKey) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unloaded,
    TResult? Function(String anonKey)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function(String anonKey)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unloaded value)? unloaded,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIPlaygroundStateCopyWith<$Res> {
  factory $APIPlaygroundStateCopyWith(
          APIPlaygroundState value, $Res Function(APIPlaygroundState) then) =
      _$APIPlaygroundStateCopyWithImpl<$Res, APIPlaygroundState>;
}

/// @nodoc
class _$APIPlaygroundStateCopyWithImpl<$Res, $Val extends APIPlaygroundState>
    implements $APIPlaygroundStateCopyWith<$Res> {
  _$APIPlaygroundStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnloadedCopyWith<$Res> {
  factory _$$_UnloadedCopyWith(
          _$_Unloaded value, $Res Function(_$_Unloaded) then) =
      __$$_UnloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnloadedCopyWithImpl<$Res>
    extends _$APIPlaygroundStateCopyWithImpl<$Res, _$_Unloaded>
    implements _$$_UnloadedCopyWith<$Res> {
  __$$_UnloadedCopyWithImpl(
      _$_Unloaded _value, $Res Function(_$_Unloaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unloaded implements _Unloaded {
  const _$_Unloaded();

  @override
  String toString() {
    return 'APIPlaygroundState.unloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function(String anonKey) loaded,
  }) {
    return unloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unloaded,
    TResult? Function(String anonKey)? loaded,
  }) {
    return unloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function(String anonKey)? loaded,
    required TResult orElse(),
  }) {
    if (unloaded != null) {
      return unloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return unloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unloaded value)? unloaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return unloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (unloaded != null) {
      return unloaded(this);
    }
    return orElse();
  }
}

abstract class _Unloaded implements APIPlaygroundState {
  const factory _Unloaded() = _$_Unloaded;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String anonKey});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$APIPlaygroundStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anonKey = null,
  }) {
    return _then(_$_Loaded(
      null == anonKey
          ? _value.anonKey
          : anonKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.anonKey);

  @override
  final String anonKey;

  @override
  String toString() {
    return 'APIPlaygroundState.loaded(anonKey: $anonKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.anonKey, anonKey) || other.anonKey == anonKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anonKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function(String anonKey) loaded,
  }) {
    return loaded(anonKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unloaded,
    TResult? Function(String anonKey)? loaded,
  }) {
    return loaded?.call(anonKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function(String anonKey)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(anonKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unloaded value)? unloaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements APIPlaygroundState {
  const factory _Loaded(final String anonKey) = _$_Loaded;

  String get anonKey;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
