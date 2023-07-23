import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/styles_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class GetStylesUseCase implements UseCase<Exception, String, EmptyParams> {
  const GetStylesUseCase(this._stylesRepository);

  final StylesRepository _stylesRepository;

  @override
  Future<Either<Exception, String>> call(Params params) =>
      _stylesRepository.getStyles();
}
