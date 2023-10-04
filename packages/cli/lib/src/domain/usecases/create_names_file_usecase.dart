import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class CreateNamesFileUseCase
    implements UseCase<Exception, void, CreateNamesFileUseCaseParams> {
  const CreateNamesFileUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    CreateNamesFileUseCaseParams params,
  ) =>
      _directoryRepository.writeNamesFile(
        content: params.content,
        fileName: params.fileName,
      );
}

class CreateNamesFileUseCaseParams extends Params {
  const CreateNamesFileUseCaseParams({
    required this.content,
    required this.fileName,
  });

  final String content;
  final String fileName;
}
