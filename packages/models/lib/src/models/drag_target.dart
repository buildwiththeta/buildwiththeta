// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import '../widgets/nodes/node.dart';
import 'index.dart';

//salva il vecchio valore di un attributo per poterlo ripristinare
//se l'utente vuole ritornare indietro di una o più azioni

abstract class DragTargetModel extends Equatable {
  const DragTargetModel();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'DragTargetModel {}';
}

class DragTargetSingleNodeModel extends DragTargetModel {
  const DragTargetSingleNodeModel(
    this.node,
  );

  final CNode node;

  @override
  List<Object> get props => [node];

  @override
  String toString() => 'DragTargetSingleNodeModel { node: ${node.type} }';
}

class DragTargetMoveSingleNodeModel extends DragTargetModel {
  const DragTargetMoveSingleNodeModel(
    this.node,
    this.originalParent,
  );

  final CNode node;
  final CNode originalParent;

  @override
  List<Object> get props => [node, originalParent];

  @override
  String toString() =>
      'DragTargetSingleNodeModel { node: ${node.type}, originalParent: ${originalParent.type} }';
}

class DragTargetSectionModel extends DragTargetModel {
  const DragTargetSectionModel(
    this.firstNodeId,
  );

  final NodeID firstNodeId;

  @override
  List<Object> get props => [firstNodeId];

  @override
  String toString() => 'DragTargetSectionModel { node: $firstNodeId }';
}

class DragTargetComponentModel extends DragTargetModel {
  const DragTargetComponentModel(
    this.componentName,
  );

  final String componentName;

  @override
  List<Object> get props => [componentName];

  @override
  String toString() => 'DragTargetComponentModel { component: $componentName }';
}
