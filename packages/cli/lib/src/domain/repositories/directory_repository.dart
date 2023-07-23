import 'package:either_dart/either.dart';

abstract class DirectoryRepository {
  Future<Either<Exception, void>> writePreloadFile(String key, String json);
}
