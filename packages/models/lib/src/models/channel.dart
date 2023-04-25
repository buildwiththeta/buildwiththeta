import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/typedefs.dart';

class ChannelObject extends Equatable {
  const ChannelObject({
    required this.prjId,
    required this.name,
    required this.id,
  });

  final ChannelID id;
  final ProjectID prjId;
  final String name;

  @override
  List<Object?> get props => [
        prjId,
        name,
        id,
      ];
}
