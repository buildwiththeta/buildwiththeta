import 'package:either_dart/either.dart';
import 'package:playground/src/data/models/add_node_between_response.dart';
import 'package:playground/src/domain/repositories/node_repository.dart';
import 'package:playground/src/domain/usecases/base_usecase.dart';
import 'package:theta_models/theta_models.dart';

class AddNodeBetweenUseCase
    implements
        UseCase<Exception, AddNodeBetweenResponse,
            AddNodeBetweenUseCaseParams> {
  const AddNodeBetweenUseCase(this._nodeRepository);

  final NodeRepository _nodeRepository;

  @override
  Future<Either<Exception, AddNodeBetweenResponse>> call(
          AddNodeBetweenUseCaseParams params) =>
      _nodeRepository.addBetween(
        pageID: params.pageID,
        parentID: params.parentID,
        parentChild: params.parentChild,
        newNode: params.newNode,
      );
}

class AddNodeBetweenUseCaseParams extends Params {
  const AddNodeBetweenUseCaseParams({
    required this.parentID,
    required this.parentChild,
    required this.newNode,
    required this.pageID,
  });

  final NodeID parentID;
  final CNode parentChild;
  final CNode newNode;
  final PageID pageID;
}
