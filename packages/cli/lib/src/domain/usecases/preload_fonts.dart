import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class PreloadFontsUseCase
    implements UseCase<Exception, void, PreloadFontsUseCaseParams> {
  const PreloadFontsUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    PreloadFontsUseCaseParams params,
  ) =>
      _directoryRepository.preloadFonts(params.json);
}

class PreloadFontsUseCaseParams extends Params {
  const PreloadFontsUseCaseParams({
    required this.json,
  });

  final Map<String, dynamic> json;
}
