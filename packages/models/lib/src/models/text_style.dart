// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../widgets/features/font_size.dart';
import '../widgets/features/font_weight.dart';
import 'index.dart';

/// Entity for a text style.
/// Uses a Mapper to serialize/deserialize.
class TextStyleEntity extends Equatable {
  const TextStyleEntity({
    this.id = '',
    required this.branchID,
    required this.name,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    this.stabilID = '',
  });

  const TextStyleEntity.ready()
      : id = '',
        branchID = '',
        stabilID = '',
        name = 'Text Style',
        fontFamily = 'Poppins',
        fontSize = const FFontSize(),
        fontWeight = const FFontWeight();

  final ID id;
  final ID stabilID;
  final BranchID branchID;
  final String name;
  final String fontFamily;
  final FFontSize fontSize;
  final FFontWeight fontWeight;

  @override
  List<Object?> get props =>
      [id, stabilID, name, branchID, fontFamily, fontSize, fontWeight];

  @override
  String toString() =>
      'TextStyleModel { id: $id, stabilID:$stabilID, channel_id: $branchID, name: $name, font_family: $fontFamily, font_size: ${fontSize.toCode()},font_weight ${fontWeight.toCode()} }';
}
