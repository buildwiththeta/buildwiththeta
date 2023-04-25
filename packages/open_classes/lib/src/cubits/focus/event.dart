// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/nodes/node.dart';

/// Events of FocusBloc
abstract class FocusEvent extends Equatable {
  ///
  const FocusEvent();

  @override
  List<Object> get props => [];
}

/// Focus a new node
class OnFocus extends FocusEvent {
  ///
  const OnFocus({required this.node});

  final CNode node;

  @override
  List<Object> get props => [node];
}

class AddNodeOnFocus extends FocusEvent {
  ///
  const AddNodeOnFocus({required this.node});

  final CNode node;

  @override
  List<Object> get props => [node];
}

class AddNodesOnFocus extends FocusEvent {
  ///
  const AddNodesOnFocus({required this.nodes});

  final List<CNode> nodes;

  @override
  List<Object> get props => [nodes];
}
