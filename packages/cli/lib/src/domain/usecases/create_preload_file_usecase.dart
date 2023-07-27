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
      _directoryRepository.writePreloadFile(params.key, params.content);
}

class CreatePreLoadFileUseCaseParams extends Params {
  const CreatePreLoadFileUseCaseParams({
    required this.key,
    required this.content,
  });

  final String key;
  final String content;
}
