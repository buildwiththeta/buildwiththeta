// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';

import '../widgets/features/font_size.dart';
import '../widgets/features/font_weight.dart';
import 'index.dart';

class TextStyleModel extends Equatable {
  /// Constructor
  const TextStyleModel({
    this.id = '',
    required this.channelId,
    required this.name,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
  });

  TextStyleModel.fromJson({
    required final Map<String, dynamic> json,
    final String? channelId,
  })  : id = json['_id'] as String? ?? json['id'] as String,
        channelId = channelId ?? json['channel_id'] as String,
        name = json['name'] as String,
        fontFamily = json['family'] as String,
        fontSize = json['size'] != null
            ? FFontSize.fromJson(json['size'])
            : const FFontSize(),
        fontWeight = FFontWeight.fromJson(
          '${json['weight']}',
        );

  const TextStyleModel.ready()
      : id = '',
        channelId = '',
        name = 'Text Style',
        fontFamily = 'Poppins',
        fontSize = const FFontSize(),
        fontWeight = const FFontWeight();

  TextStyleModel copyWith({
    final String? id,
    final String? channelId,
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

  final ID id;
  final ChannelID channelId;
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
