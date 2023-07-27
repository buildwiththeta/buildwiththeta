import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';
import 'package:theta/src/domain/usecases/base_usecase.dart';

class GetStylesUseCase
    implements
        UseCase<Exception, GetStylesResponseEntity, GetStylesUseCaseParams> {
  const GetStylesUseCase(this._stylesRepository);

  final StylesRepository _stylesRepository;

  @override
  Future<Either<Exception, GetStylesResponseEntity>> call(
          GetStylesUseCaseParams params) =>
      _stylesRepository.getStyles(params.preloadAllowed);
}

class GetStylesUseCaseParams extends Params {
  const GetStylesUseCaseParams({
    required this.preloadAllowed,
  });

  final bool preloadAllowed;
}
