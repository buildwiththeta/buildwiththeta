import 'package:equatable/equatable.dart';

class CustomLinkObject extends Equatable {
  const CustomLinkObject({
    required this.id,
    required this.name,
    required this.password,
    required this.prjId,
    required this.isValid,
    required this.visits,
  });

  factory CustomLinkObject.fromJson(final Map<String, dynamic> json) =>
      CustomLinkObject(
        id: json['id'] as int,
        name: json['name'] as String,
        password: json['password'] as String?,
        prjId: json['prj_id'] as int,
        isValid: json['is_valid'] as bool,
        visits: json['visits'] as int,
      );

  final int id;
  final String name;
  final String? password;
  final int prjId;
  final bool isValid;
  final int visits;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'password': password,
        'is_valid': isValid,
      };

  CustomLinkObject copyWith({
    final int? id,
    final String? name,
    final String? password,
    final int? prjId,
    final bool? isValid,
    final int? visits,
  }) =>
      CustomLinkObject(
        id: id ?? this.id,
        name: name ?? this.name,
        password: password ?? this.password,
        prjId: prjId ?? this.prjId,
        isValid: isValid ?? this.isValid,
        visits: visits ?? this.visits,
      );

  @override
  List<Object?> get props => [id, name, password, prjId, isValid, visits];
}
