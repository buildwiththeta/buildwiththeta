import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class WritePubspectThetaAssetsPathUseCase
    implements UseCase<Exception, bool, EmptyParams> {
  const WritePubspectThetaAssetsPathUseCase(this._directoryRepository);

  final DirectoryRepository _directoryRepository;

  @override
  Future<Either<Exception, bool>> call(
    EmptyParams params,
  ) =>
      _directoryRepository.writeIfThetaIsInPubspec();
}
