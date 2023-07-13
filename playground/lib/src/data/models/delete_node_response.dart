import 'package:theta_models/theta_models.dart';

class DeleteNodeResponse {
  const DeleteNodeResponse({
    required this.deletedNodes,
    required this.updatedNodes,
  });

  final Nodes deletedNodes;
  final Nodes updatedNodes;
}
