import 'package:either_dart/either.dart';

abstract class DirectoryRepository {
  Future<Either<Exception, void>> writePreloadFile(
      {required String anonKey,
      required String jsonKey,
      required String content});
}
