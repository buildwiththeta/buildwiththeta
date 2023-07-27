import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/datasources/directory_service.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';

class DirectoryRepositoryImpl implements DirectoryRepository {
  const DirectoryRepositoryImpl(
    this._directoryService,
  );

  final DirectoryService _directoryService;

  @override
  Future<Either<Exception, void>> writePreloadFile(
      String key, String json) async {
    try {
      return Right(await _directoryService.writePreloadFile(key, json));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
