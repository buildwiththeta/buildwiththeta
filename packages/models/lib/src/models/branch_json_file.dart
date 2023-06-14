import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Entity for a branch json file.
/// Uses BranchJsonFileMapper to serialize/deserialize.
class BranchJsonFileEntity extends Equatable {
  const BranchJsonFileEntity({
    required this.pages,
    required this.nodes,
    required this.colorStyles,
    required this.textStyles,
  });

  final Pages pages;
  final Nodes nodes;
  final ColorStyles colorStyles;
  final TextStyles textStyles;

  @override
  List<Object?> get props => [
        pages,
        nodes,
        colorStyles,
        textStyles,
      ];
}
