import 'package:equatable/equatable.dart';

abstract class Feature<T> extends Equatable {
  const Feature({
    required T value,
  }) : _value = value;

  final T _value;

  T get value => _value;

  String get valueString => value.toString();

  Feature<T> copyWith({
    T? value,
  });

  String toJson();

  String toCode();

  @override
  List<Object?> get props => [value];
}

class FeatureWithEnum<T extends Enum> extends Feature<T> {
  const FeatureWithEnum({
    required super.value,
  });

  @override
  String get valueString => value.name;

  @override
  Feature<T> copyWith({T? value}) =>
      FeatureWithEnum(value: value ?? this.value);

  @override
  String toCode() => value.toString();

  @override
  String toJson() => value.name;

  @override
  List<Object?> get props => [value];
}
