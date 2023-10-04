import 'package:either_dart/either.dart';

abstract class PageRepository {
  Future<Either<Exception, List<String>>> getPagesNames(String branchName);
}
