import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Entity for a component json file.
/// Uses ComponentJsonFileMapper to serialize/deserialize.
class ComponentJsonFileEntity extends Equatable {
  const ComponentJsonFileEntity({
    required this.pages,
    required this.nodes,
  });

  final Pages pages;
  final Nodes nodes;

  @override
  List<Object?> get props => [
        pages,
        nodes,
      ];
}
