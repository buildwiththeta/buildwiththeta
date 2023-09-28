import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class ReadConfigFileUseCase
    implements UseCase<Exception, String, ReadConfigFileUseCaseParams> {
  const ReadConfigFileUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, String>> call(
    ReadConfigFileUseCaseParams params,
  ) =>
      _directoryRepository.readConfigFile(jsonKey: params.jsonKey);
}

class ReadConfigFileUseCaseParams extends Params {
  const ReadConfigFileUseCaseParams({
    required this.jsonKey,
  });

  final String jsonKey;
}
