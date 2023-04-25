import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class Workflow extends Equatable {
  const Workflow(
    this.nodeIdenfier,
    this.trigger,
    this.method,
  );

  final String nodeIdenfier;
  final Trigger trigger;
  final Function() method;

  @override
  List<Object> get props => [nodeIdenfier, trigger, method];

  @override
  String toString() =>
      'Action { nodeIdenfier: $nodeIdenfier, trigger: $trigger, method: $method }';
}
