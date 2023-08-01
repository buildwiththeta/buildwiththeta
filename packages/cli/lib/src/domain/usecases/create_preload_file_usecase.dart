import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class CreatePreLoadFileUseCase
    implements UseCase<Exception, void, CreatePreLoadFileUseCaseParams> {
  const CreatePreLoadFileUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    CreatePreLoadFileUseCaseParams params,
  ) =>
      _directoryRepository.writePreloadFile(
          anonKey: params.anonKey,
          jsonKey: params.jsonKey,
          content: params.content);
}

class CreatePreLoadFileUseCaseParams extends Params {
  const CreatePreLoadFileUseCaseParams({
    required this.anonKey,
    required this.jsonKey,
    required this.content,
  });

  final String anonKey;
  final String jsonKey;
  final String content;
}
