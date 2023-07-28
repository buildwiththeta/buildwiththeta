import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class PreloadImagesUseCase
    implements UseCase<Exception, void, PreloadImagesUseCaseParams> {
  const PreloadImagesUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    PreloadImagesUseCaseParams params,
  ) =>
      _directoryRepository.preloadImages(params.json);
}

class PreloadImagesUseCaseParams extends Params {
  const PreloadImagesUseCaseParams({
    required this.json,
  });

  final Map<String, dynamic> json;
}
