import 'package:equatable/equatable.dart';

///Declare Global const.
class ConstantsModel extends Equatable {
  ///Declare Global const
  const ConstantsModel({
    required this.type,
    required this.name,
    required this.value,
    required this.isStringValue,
  });

  /// Ex String
  final String type;

  /// Const name
  final String name;

  /// Ex 'Hello'
  final String value;

  /// Specifies if value is string or not
  final bool isStringValue;

  ///Complete variable
  String get buildConstant => isStringValue
      ? "const $type $name = ''' $value ''' ;"
      : 'const $type $name = $value;';

  @override
  List<Object?> get props => [type, name, value, isStringValue];
}
