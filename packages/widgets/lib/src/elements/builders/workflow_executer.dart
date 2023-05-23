import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class WorkflowExecuter extends Equatable {
  const WorkflowExecuter({
    required this.nodeID,
    required this.nodeName,
    required this.workflows,
  });

  final String nodeName;
  final NodeID nodeID;
  final List<Workflow> workflows;

  @override
  List<Object?> get props => [nodeName, workflows];

  void execute(final Trigger trigger) {
    final workflow = workflows.firstWhereOrNull((element) =>
        (element.nodeIdenfier == nodeName || element.nodeIdenfier == nodeID) &&
        element.trigger == trigger);
    if (workflow == null) return;
    workflow.method.call();
  }
}
