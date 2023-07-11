import 'package:theta_models/theta_models.dart';

class AddNodeBetweenResponse {
  const AddNodeBetweenResponse({
    required this.node,
    required this.nodeChild,
  });

  final CNode node;
  final CNode nodeChild;
}
