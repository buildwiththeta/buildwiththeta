import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/datasources/page_service.dart';
import 'package:theta_cli/src/domain/repositories/page_repository.dart';

class PageRepositoryImpl implements PageRepository {
  const PageRepositoryImpl(
    this._pageService,
  );

  final PageService _pageService;

  @override
  Future<Either<Exception, List<String>>> getPagesNames(
      String branchName) async {
    try {
      return Right(await _pageService.getPagesNames(branchName));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
