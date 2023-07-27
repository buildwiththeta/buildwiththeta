import 'package:equatable/equatable.dart';

class Var extends Equatable {
  const Var(
    this.name, {
    required this.value,
  });

  final String name;
  final dynamic value;

  @override
  String toString() => 'Var { name: $name, value: $value, }';

  @override
  List<Object?> get props => [
        name,
        value,
      ];
}
