// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/features/index.dart';

class ColorStyleModel extends Equatable {
  /// Constructor
  const ColorStyleModel({
    this.id = 0,
    required this.channelId,
    required this.name,
    required this.fill,
    required this.light,
  });

  final int id;
  final int channelId;
  final String name;
  final FFill fill;
  final FFill light;

  @override
  List<Object> get props => [id, channelId, name, fill, light];

  @override
  String toString() =>
      'ColorStyleModel { id: $id, channel_id: $channelId, name: $name, fill: ${fill.toString()} }';
}
