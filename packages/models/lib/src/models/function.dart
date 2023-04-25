// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';
// Project imports:
import 'package:theta_models/src/models/variable.dart';

class FunctionObject {
  const FunctionObject({
    required this.name,
    required this.code,
    required this.type,
    required this.params,
  });

  FunctionObject.empty()
      : name = 'Untitled',
        code = '',
        type = VariableType.string,
        params = <VariableObject>[];

  final String name;
  final String code;
  final VariableType type;
  final List<VariableObject> params;

  // ignore: prefer_constructors_over_static_methods
  static FunctionObject fromJson(final Map<String, dynamic>? json) {
    final params = <VariableObject>[];
    if (json?['params'] != null) {
      for (final e in json!['params'] ?? <dynamic>[]) {
        params.add(VariableObject.fromJson(e as Map<String, dynamic>));
      }
    }
    return FunctionObject(
      name: json?['n'] as String? ?? 'Untitled',
      code: json?['c'] as String? ?? '',
      type: EnumToString.fromString(
            VariableType.values,
            json?['t'] as String? ?? 'string',
          ) ??
          VariableType.string,
      params: params,
    );
  }

  Map<String, dynamic> toJson() {
    final params = this.params.map((final e) => e.toJson()).toList();
    return <String, dynamic>{
      'n': name,
      'c': code,
      'type': EnumToString.convertToString(type),
      'params': params,
    };
  }
}
