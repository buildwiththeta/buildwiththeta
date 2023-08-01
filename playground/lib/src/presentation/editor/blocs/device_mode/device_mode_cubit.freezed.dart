// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_mode_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceModeState {
  DeviceModeStateEntity get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModeStateEntity settings) phone,
    required TResult Function(DeviceModeStateEntity settings) tablet,
    required TResult Function(DeviceModeStateEntity settings) laptop,
    required TResult Function(DeviceModeStateEntity settings) desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModeStateEntity settings)? phone,
    TResult? Function(DeviceModeStateEntity settings)? tablet,
    TResult? Function(DeviceModeStateEntity settings)? laptop,
    TResult? Function(DeviceModeStateEntity settings)? desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModeStateEntity settings)? phone,
    TResult Function(DeviceModeStateEntity settings)? tablet,
    TResult Function(DeviceModeStateEntity settings)? laptop,
    TResult Function(DeviceModeStateEntity settings)? desktop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Phone value) phone,
    required TResult Function(_Tablet value) tablet,
    required TResult Function(_Laptop value) laptop,
    required TResult Function(_Desktop value) desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Tablet value)? tablet,
    TResult? Function(_Laptop value)? laptop,
    TResult? Function(_Desktop value)? desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Phone value)? phone,
    TResult Function(_Tablet value)? tablet,
    TResult Function(_Laptop value)? laptop,
    TResult Function(_Desktop value)? desktop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceModeStateCopyWith<DeviceModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModeStateCopyWith<$Res> {
  factory $DeviceModeStateCopyWith(
          DeviceModeState value, $Res Function(DeviceModeState) then) =
      _$DeviceModeStateCopyWithImpl<$Res, DeviceModeState>;
  @useResult
  $Res call({DeviceModeStateEntity settings});
}

/// @nodoc
class _$DeviceModeStateCopyWithImpl<$Res, $Val extends DeviceModeState>
    implements $DeviceModeStateCopyWith<$Res> {
  _$DeviceModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeviceModeStateEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneCopyWith<$Res>
    implements $DeviceModeStateCopyWith<$Res> {
  factory _$$_PhoneCopyWith(_$_Phone value, $Res Function(_$_Phone) then) =
      __$$_PhoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModeStateEntity settings});
}

/// @nodoc
class __$$_PhoneCopyWithImpl<$Res>
    extends _$DeviceModeStateCopyWithImpl<$Res, _$_Phone>
    implements _$$_PhoneCopyWith<$Res> {
  __$$_PhoneCopyWithImpl(_$_Phone _value, $Res Function(_$_Phone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_Phone(
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeviceModeStateEntity,
    ));
  }
}

/// @nodoc

class _$_Phone implements _Phone {
  const _$_Phone(this.settings);

  @override
  final DeviceModeStateEntity settings;

  @override
  String toString() {
    return 'DeviceModeState.phone(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phone &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      __$$_PhoneCopyWithImpl<_$_Phone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModeStateEntity settings) phone,
    required TResult Function(DeviceModeStateEntity settings) tablet,
    required TResult Function(DeviceModeStateEntity settings) laptop,
    required TResult Function(DeviceModeStateEntity settings) desktop,
  }) {
    return phone(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModeStateEntity settings)? phone,
    TResult? Function(DeviceModeStateEntity settings)? tablet,
    TResult? Function(DeviceModeStateEntity settings)? laptop,
    TResult? Function(DeviceModeStateEntity settings)? desktop,
  }) {
    return phone?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModeStateEntity settings)? phone,
    TResult Function(DeviceModeStateEntity settings)? tablet,
    TResult Function(DeviceModeStateEntity settings)? laptop,
    TResult Function(DeviceModeStateEntity settings)? desktop,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Phone value) phone,
    required TResult Function(_Tablet value) tablet,
    required TResult Function(_Laptop value) laptop,
    required TResult Function(_Desktop value) desktop,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Tablet value)? tablet,
    TResult? Function(_Laptop value)? laptop,
    TResult? Function(_Desktop value)? desktop,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Phone value)? phone,
    TResult Function(_Tablet value)? tablet,
    TResult Function(_Laptop value)? laptop,
    TResult Function(_Desktop value)? desktop,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class _Phone implements DeviceModeState {
  const factory _Phone(final DeviceModeStateEntity settings) = _$_Phone;

  @override
  DeviceModeStateEntity get settings;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TabletCopyWith<$Res>
    implements $DeviceModeStateCopyWith<$Res> {
  factory _$$_TabletCopyWith(_$_Tablet value, $Res Function(_$_Tablet) then) =
      __$$_TabletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModeStateEntity settings});
}

/// @nodoc
class __$$_TabletCopyWithImpl<$Res>
    extends _$DeviceModeStateCopyWithImpl<$Res, _$_Tablet>
    implements _$$_TabletCopyWith<$Res> {
  __$$_TabletCopyWithImpl(_$_Tablet _value, $Res Function(_$_Tablet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_Tablet(
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeviceModeStateEntity,
    ));
  }
}

/// @nodoc

class _$_Tablet implements _Tablet {
  const _$_Tablet(this.settings);

  @override
  final DeviceModeStateEntity settings;

  @override
  String toString() {
    return 'DeviceModeState.tablet(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tablet &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabletCopyWith<_$_Tablet> get copyWith =>
      __$$_TabletCopyWithImpl<_$_Tablet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModeStateEntity settings) phone,
    required TResult Function(DeviceModeStateEntity settings) tablet,
    required TResult Function(DeviceModeStateEntity settings) laptop,
    required TResult Function(DeviceModeStateEntity settings) desktop,
  }) {
    return tablet(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModeStateEntity settings)? phone,
    TResult? Function(DeviceModeStateEntity settings)? tablet,
    TResult? Function(DeviceModeStateEntity settings)? laptop,
    TResult? Function(DeviceModeStateEntity settings)? desktop,
  }) {
    return tablet?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModeStateEntity settings)? phone,
    TResult Function(DeviceModeStateEntity settings)? tablet,
    TResult Function(DeviceModeStateEntity settings)? laptop,
    TResult Function(DeviceModeStateEntity settings)? desktop,
    required TResult orElse(),
  }) {
    if (tablet != null) {
      return tablet(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Phone value) phone,
    required TResult Function(_Tablet value) tablet,
    required TResult Function(_Laptop value) laptop,
    required TResult Function(_Desktop value) desktop,
  }) {
    return tablet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Tablet value)? tablet,
    TResult? Function(_Laptop value)? laptop,
    TResult? Function(_Desktop value)? desktop,
  }) {
    return tablet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Phone value)? phone,
    TResult Function(_Tablet value)? tablet,
    TResult Function(_Laptop value)? laptop,
    TResult Function(_Desktop value)? desktop,
    required TResult orElse(),
  }) {
    if (tablet != null) {
      return tablet(this);
    }
    return orElse();
  }
}

abstract class _Tablet implements DeviceModeState {
  const factory _Tablet(final DeviceModeStateEntity settings) = _$_Tablet;

  @override
  DeviceModeStateEntity get settings;
  @override
  @JsonKey(ignore: true)
  _$$_TabletCopyWith<_$_Tablet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LaptopCopyWith<$Res>
    implements $DeviceModeStateCopyWith<$Res> {
  factory _$$_LaptopCopyWith(_$_Laptop value, $Res Function(_$_Laptop) then) =
      __$$_LaptopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModeStateEntity settings});
}

/// @nodoc
class __$$_LaptopCopyWithImpl<$Res>
    extends _$DeviceModeStateCopyWithImpl<$Res, _$_Laptop>
    implements _$$_LaptopCopyWith<$Res> {
  __$$_LaptopCopyWithImpl(_$_Laptop _value, $Res Function(_$_Laptop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_Laptop(
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeviceModeStateEntity,
    ));
  }
}

/// @nodoc

class _$_Laptop implements _Laptop {
  const _$_Laptop(this.settings);

  @override
  final DeviceModeStateEntity settings;

  @override
  String toString() {
    return 'DeviceModeState.laptop(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Laptop &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaptopCopyWith<_$_Laptop> get copyWith =>
      __$$_LaptopCopyWithImpl<_$_Laptop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModeStateEntity settings) phone,
    required TResult Function(DeviceModeStateEntity settings) tablet,
    required TResult Function(DeviceModeStateEntity settings) laptop,
    required TResult Function(DeviceModeStateEntity settings) desktop,
  }) {
    return laptop(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModeStateEntity settings)? phone,
    TResult? Function(DeviceModeStateEntity settings)? tablet,
    TResult? Function(DeviceModeStateEntity settings)? laptop,
    TResult? Function(DeviceModeStateEntity settings)? desktop,
  }) {
    return laptop?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModeStateEntity settings)? phone,
    TResult Function(DeviceModeStateEntity settings)? tablet,
    TResult Function(DeviceModeStateEntity settings)? laptop,
    TResult Function(DeviceModeStateEntity settings)? desktop,
    required TResult orElse(),
  }) {
    if (laptop != null) {
      return laptop(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Phone value) phone,
    required TResult Function(_Tablet value) tablet,
    required TResult Function(_Laptop value) laptop,
    required TResult Function(_Desktop value) desktop,
  }) {
    return laptop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Tablet value)? tablet,
    TResult? Function(_Laptop value)? laptop,
    TResult? Function(_Desktop value)? desktop,
  }) {
    return laptop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Phone value)? phone,
    TResult Function(_Tablet value)? tablet,
    TResult Function(_Laptop value)? laptop,
    TResult Function(_Desktop value)? desktop,
    required TResult orElse(),
  }) {
    if (laptop != null) {
      return laptop(this);
    }
    return orElse();
  }
}

abstract class _Laptop implements DeviceModeState {
  const factory _Laptop(final DeviceModeStateEntity settings) = _$_Laptop;

  @override
  DeviceModeStateEntity get settings;
  @override
  @JsonKey(ignore: true)
  _$$_LaptopCopyWith<_$_Laptop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DesktopCopyWith<$Res>
    implements $DeviceModeStateCopyWith<$Res> {
  factory _$$_DesktopCopyWith(
          _$_Desktop value, $Res Function(_$_Desktop) then) =
      __$$_DesktopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModeStateEntity settings});
}

/// @nodoc
class __$$_DesktopCopyWithImpl<$Res>
    extends _$DeviceModeStateCopyWithImpl<$Res, _$_Desktop>
    implements _$$_DesktopCopyWith<$Res> {
  __$$_DesktopCopyWithImpl(_$_Desktop _value, $Res Function(_$_Desktop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_Desktop(
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeviceModeStateEntity,
    ));
  }
}

/// @nodoc

class _$_Desktop implements _Desktop {
  const _$_Desktop(this.settings);

  @override
  final DeviceModeStateEntity settings;

  @override
  String toString() {
    return 'DeviceModeState.desktop(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Desktop &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DesktopCopyWith<_$_Desktop> get copyWith =>
      __$$_DesktopCopyWithImpl<_$_Desktop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModeStateEntity settings) phone,
    required TResult Function(DeviceModeStateEntity settings) tablet,
    required TResult Function(DeviceModeStateEntity settings) laptop,
    required TResult Function(DeviceModeStateEntity settings) desktop,
  }) {
    return desktop(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModeStateEntity settings)? phone,
    TResult? Function(DeviceModeStateEntity settings)? tablet,
    TResult? Function(DeviceModeStateEntity settings)? laptop,
    TResult? Function(DeviceModeStateEntity settings)? desktop,
  }) {
    return desktop?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModeStateEntity settings)? phone,
    TResult Function(DeviceModeStateEntity settings)? tablet,
    TResult Function(DeviceModeStateEntity settings)? laptop,
    TResult Function(DeviceModeStateEntity settings)? desktop,
    required TResult orElse(),
  }) {
    if (desktop != null) {
      return desktop(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Phone value) phone,
    required TResult Function(_Tablet value) tablet,
    required TResult Function(_Laptop value) laptop,
    required TResult Function(_Desktop value) desktop,
  }) {
    return desktop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Tablet value)? tablet,
    TResult? Function(_Laptop value)? laptop,
    TResult? Function(_Desktop value)? desktop,
  }) {
    return desktop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Phone value)? phone,
    TResult Function(_Tablet value)? tablet,
    TResult Function(_Laptop value)? laptop,
    TResult Function(_Desktop value)? desktop,
    required TResult orElse(),
  }) {
    if (desktop != null) {
      return desktop(this);
    }
    return orElse();
  }
}

abstract class _Desktop implements DeviceModeState {
  const factory _Desktop(final DeviceModeStateEntity settings) = _$_Desktop;

  @override
  DeviceModeStateEntity get settings;
  @override
  @JsonKey(ignore: true)
  _$$_DesktopCopyWith<_$_Desktop> get copyWith =>
      throw _privateConstructorUsedError;
}
