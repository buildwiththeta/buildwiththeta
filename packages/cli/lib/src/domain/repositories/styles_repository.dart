import 'package:either_dart/either.dart';

abstract class StylesRepository {
  Future<Either<Exception, String>> getStyles();
}
