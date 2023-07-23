import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/models/get_styles_response.dart';
import 'package:theta_cli/src/domain/repositories/styles_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class GetStylesUseCase
    implements UseCase<Exception, GetStylesResponseEntity, EmptyParams> {
  const GetStylesUseCase(this._stylesRepository);

  final StylesRepository _stylesRepository;

  @override
  Future<Either<Exception, GetStylesResponseEntity>> call(Params params) =>
      _stylesRepository.getStyles();
}
