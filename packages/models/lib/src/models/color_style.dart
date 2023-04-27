// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/features/index.dart';

import 'index.dart';

class ColorStyleModel extends Equatable {
  /// Constructor
  const ColorStyleModel({
    this.id = '',
    required this.channelId,
    required this.name,
    required this.fill,
    required this.light,
  });

  final ID id;
  final ChannelID channelId;
  final String name;
  final FFill fill;
  final FFill light;

  @override
  List<Object> get props => [id, channelId, name, fill, light];

  @override
  String toString() =>
      'ColorStyleModel { id: $id, channel_id: $channelId, name: $name, fill: ${fill.toString()} }';
}
