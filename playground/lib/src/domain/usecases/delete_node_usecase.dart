import 'package:either_dart/either.dart';
import 'package:playground/src/data/models/delete_node_response.dart';
import 'package:playground/src/domain/repositories/node_repository.dart';
import 'package:playground/src/domain/usecases/base_usecase.dart';
import 'package:theta_models/theta_models.dart';

class DeleteNodeUseCase
    implements UseCase<Exception, DeleteNodeResponse, DeleteNodeUseCaseParams> {
  const DeleteNodeUseCase(this._nodeRepository);

  final NodeRepository _nodeRepository;

  @override
  Future<Either<Exception, DeleteNodeResponse>> call(
          DeleteNodeUseCaseParams params) =>
      _nodeRepository.deleteNode(
        node: params.node,
        parent: params.parent,
      );
}

class DeleteNodeUseCaseParams extends Params {
  const DeleteNodeUseCaseParams({
    required this.node,
    required this.parent,
    required this.pageId,
  });

  final CNode node;
  final CNode parent;
  final String pageId;
}
