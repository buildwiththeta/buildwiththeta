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
      {required String anonKey,
      required String jsonKey,
      required String content}) async {
    try {
      return Right(await _directoryService.writePreloadFile(
          anonKey: anonKey, jsonKey: jsonKey, content: content));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, void>> preloadImages(
      Map<String, dynamic> json) async {
    try {
      return Right(await _directoryService.preloadImages(json));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
