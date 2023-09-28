import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class CreateConfigFileUseCase
    implements UseCase<Exception, void, CreateConfigFileUseCaseParams> {
  const CreateConfigFileUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    CreateConfigFileUseCaseParams params,
  ) =>
      _directoryRepository.writeConfigFile(
          jsonKey: params.jsonKey, content: params.content);
}

class CreateConfigFileUseCaseParams extends Params {
  const CreateConfigFileUseCaseParams({
    required this.jsonKey,
    required this.content,
  });

  final String jsonKey;
  final String content;
}
