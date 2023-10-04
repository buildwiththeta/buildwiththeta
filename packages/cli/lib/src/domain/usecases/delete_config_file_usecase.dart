import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class DeleteConfigFileUseCase implements UseCase<Exception, void, EmptyParams> {
  const DeleteConfigFileUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, void>> call(
    EmptyParams params,
  ) =>
      _directoryRepository.deleteConfigFile();
}
