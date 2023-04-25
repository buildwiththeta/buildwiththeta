// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../widgets/features/font_size.dart';
import '../widgets/features/font_weight.dart';

class TextStyleModel extends Equatable {
  /// Constructor
  const TextStyleModel({
    this.id = 0,
    required this.channelId,
    required this.name,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
  });

  TextStyleModel.fromJson({
    required final Map<String, dynamic> json,
    final int? channelId,
  })  : id = json['_id'] as int? ?? json['id'] as int,
        channelId = channelId ?? json['channel_id'] as int,
        name = json['name'] as String,
        fontFamily = json['family'] as String,
        fontSize = json['size'] != null
            ? FFontSize.fromJson(json['size'])
            : const FFontSize(),
        fontWeight = FFontWeight.fromJson(
          '${json['weight']}',
        );

  const TextStyleModel.ready()
      : id = 0,
        channelId = 0,
        name = 'Text Style',
        fontFamily = 'Poppins',
        fontSize = const FFontSize(),
        fontWeight = const FFontWeight();

  TextStyleModel copyWith({
    final int? id,
    final int? channelId,
    final String? name,
    final String? fontFamily,
    final FFontSize? fontSize,
    final FFontWeight? fontWeight,
  }) =>
      TextStyleModel(
        id: id ?? this.id,
        channelId: channelId ?? this.channelId,
        name: name ?? this.name,
        fontFamily: fontFamily ?? this.fontFamily,
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
      );

  final int id;
  final int channelId;
  final String name;
  final String fontFamily;
  final FFontSize fontSize;
  final FFontWeight fontWeight;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'channel_id': channelId,
      'family': fontFamily,
      'size': fontSize.toJson(),
      'weight': fontWeight.toJson(),
    };
  }

  @override
  List<Object?> get props =>
      [id, name, channelId, fontFamily, fontSize, fontWeight];

  @override
  String toString() =>
      'TextStyleModel { id: $id, channel_id: $channelId, name: $name, font_family: $fontFamily, font_size: ${fontSize.toCode()},font_weight ${fontWeight.toCode()} }';
}
