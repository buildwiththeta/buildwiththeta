// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../widgets/features/font_size.dart';
import '../widgets/features/font_weight.dart';
import 'index.dart';

class TextStyleEntity extends Equatable {
  const TextStyleEntity({
    this.id = '',
    required this.branchID,
    required this.name,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
  });

  const TextStyleEntity.ready()
      : id = '',
        branchID = '',
        name = 'Text Style',
        fontFamily = 'Poppins',
        fontSize = const FFontSize(),
        fontWeight = const FFontWeight();

  final ID id;
  final BranchID branchID;
  final String name;
  final String fontFamily;
  final FFontSize fontSize;
  final FFontWeight fontWeight;

  @override
  List<Object?> get props =>
      [id, name, branchID, fontFamily, fontSize, fontWeight];

  @override
  String toString() =>
      'TextStyleModel { id: $id, channel_id: $branchID, name: $name, font_family: $fontFamily, font_size: ${fontSize.toCode()},font_weight ${fontWeight.toCode()} }';
}
