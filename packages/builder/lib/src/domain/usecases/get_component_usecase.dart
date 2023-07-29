import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/src/domain/usecases/base_usecase.dart';

class GetComponentUseCase
    implements
        UseCase<Exception, GetPageResponseEntity, GetComponentUseCaseParams> {
  const GetComponentUseCase(this._componentRepository);

  final ComponentRepository _componentRepository;

  @override
  Future<Either<Exception, GetPageResponseEntity>> call(
          GetComponentUseCaseParams params) =>
      _componentRepository.getComponent(
        params.componentName,
        params.preloadAllowed,
        params.branchName,
      );
}

class GetComponentUseCaseParams extends Params {
  const GetComponentUseCaseParams({
    required this.componentName,
    required this.branchName,
    required this.preloadAllowed,
  });

  final String componentName;
  final String? branchName;
  final bool preloadAllowed;
}
