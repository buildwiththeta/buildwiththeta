import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/page_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class LoadPagesUseCase
    implements UseCase<Exception, List<String>, LoadPagesUseCaseParams> {
  const LoadPagesUseCase(this._pageRepository);

  final PageRepository _pageRepository;

  @override
  Future<Either<Exception, List<String>>> call(
    LoadPagesUseCaseParams params,
  ) =>
      _pageRepository.getPagesNames(params.branchName);
}

class LoadPagesUseCaseParams extends Params {
  const LoadPagesUseCaseParams({
    required this.branchName,
  });

  final String branchName;
}
