// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
// Project imports:
import 'control_type.dart';
import '../widgets/features/index.dart';
import 'package:theta_models/theta_models.dart';

abstract class ControlModel extends Equatable {
  const ControlModel();

  @override
  List<Object?> get props => [];

  @override
  String toString() => 'ControlModel { }';
}

class ControlObject extends ControlModel {
  const ControlObject({
    required this.type,
    required this.key,
    required this.value,
    required this.valueType,
    this.title,
    this.description,
    this.flag,
    this.list,
    this.ignoreDeviceTypeValue = false,
  });

  final ControlType type;
  final String key;
  final dynamic value;
  final String? title;
  final String? description;
  final bool? flag;
  final VariableType valueType;
  final List<String>? list;
  final bool? ignoreDeviceTypeValue;

  @override
  List<Object?> get props =>
      [type, key, value, title, valueType, list, ignoreDeviceTypeValue];

  @override
  String toString() =>
      'ControlObject { type: $type, key: $key, value: $value, title: $title ,ignoreDeviceTypeValue: $ignoreDeviceTypeValue }';
}

class SizeControlObject extends ControlModel {
  const SizeControlObject({
    required this.type,
    required this.key,
    required this.title,
    required this.isWidth,
    required this.value,
  });

  final ControlType type;
  final String key;
  final String title;
  final bool isWidth;
  final FSize value;

  @override
  List<Object?> get props => [];
}

class SizesControlObject extends ControlModel {
  const SizesControlObject({
    required this.keys,
    required this.values,
  });

  final List<String> keys;
  final List<FSize> values;

  @override
  List<Object?> get props => [keys, values];
}

class FlagControlObject extends ControlModel {
  const FlagControlObject({
    required this.title,
    required this.key,
    required this.value,
    required this.description,
  });

  final String title;
  final String key;
  final dynamic value;
  final String? description;

  @override
  List<Object?> get props => [title, key, value];
}

class FillControlObject extends ControlModel {
  const FillControlObject({
    required this.title,
    required this.key,
    required this.value,
    required this.isStyled,
    required this.isImageEnabled,
    required this.isNoneEnabled,
    required this.isOnlySolid,
  });

  final String title;
  final String key;
  final FFill value;
  final bool isStyled;
  final bool isImageEnabled;
  final bool isNoneEnabled;
  final bool isOnlySolid;

  @override
  List<Object?> get props => [key, value, isStyled];
}

class BoxFitControlObject extends ControlModel {
  const BoxFitControlObject({
    required this.key,
    required this.value,
  });

  final String key;
  final FBoxFit value;

  @override
  List<Object?> get props => [key, value];
}

class FirestorePathControlObject extends ControlModel {
  const FirestorePathControlObject({
    required this.key,
    required this.value,
  });

  final String key;
  final FFirestorePath value;

  @override
  List<Object?> get props => [key, value];
}
