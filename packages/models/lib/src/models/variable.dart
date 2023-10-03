import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class VariableEntity extends Equatable {
  const VariableEntity({
    required this.name,
    this.defaultValue,
    this.value,
  });

  final String name;
  final dynamic value;
  final dynamic defaultValue;

  VariableEntity copyWith({
    String? name,
    dynamic value,
    dynamic defaultValue,
  });

  static VariableEntity fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  static List<VariableEntity> fromJsonList(List<dynamic> json) =>
      json.map((e) => fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
        'name': name,
        'default_value': defaultValue,
      };

  @override
  List<Object> get props => [];
}

class ColorVariableEntity extends VariableEntity {
  const ColorVariableEntity({
    required String name,
    Color? defaultValue,
    Color? value,
  }) : super(name: name, defaultValue: defaultValue, value: value);

  @override
  VariableEntity copyWith({
    String? name,
    dynamic value,
    dynamic defaultValue,
  }) =>
      ColorVariableEntity(
        name: name ?? this.name,
        defaultValue: defaultValue ?? this.defaultValue,
        value: value ?? this.value,
      );

  static VariableEntity fromJson(Map<String, dynamic> json) =>
      ColorVariableEntity(
        name: json['name'],
        defaultValue: json['default_value'],
        value: json['default_value'],
      );
}
