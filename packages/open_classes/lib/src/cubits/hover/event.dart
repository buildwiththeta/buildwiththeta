// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/nodes/node.dart';

/// Event for HoverBloc
abstract class HoverEvent extends Equatable {
  ///
  const HoverEvent();

  @override
  List<Object> get props => [];
}

/// Hover a node
class OnHover extends HoverEvent {
  ///
  const OnHover({required this.node});

  /// The hovered node
  final CNode node;

  @override
  List<Object> get props => [node];
}
