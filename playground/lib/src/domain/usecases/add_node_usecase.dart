import 'package:either_dart/either.dart';
import 'package:playground/src/data/models/add_node_response.dart';
import 'package:playground/src/domain/repositories/node_repository.dart';
import 'package:playground/src/domain/usecases/base_usecase.dart';
import 'package:theta_models/theta_models.dart';

class AddNodeUseCase
    implements UseCase<Exception, AddNodeResponse, AddNodeUseCaseParams> {
  const AddNodeUseCase(this._nodeRepository);

  final NodeRepository _nodeRepository;

  @override
  Future<Either<Exception, AddNodeResponse>> call(
          AddNodeUseCaseParams params) =>
      _nodeRepository.add(
        pageId: params.pageId,
        parentID: params.parentID,
        newNode: params.newNode,
        customIndex: params.customIndex,
      );
}

class AddNodeUseCaseParams extends Params {
  const AddNodeUseCaseParams({
    required this.pageId,
    required this.parentID,
    required this.newNode,
    required this.customIndex,
  });

  final PageID pageId;
  final CNode newNode;
  final NodeID parentID;
  final double? customIndex;
}
