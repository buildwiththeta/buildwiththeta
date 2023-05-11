import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_styles_response.dart';

abstract class StylesRepository {
  Future<Either<Exception, GetStylesResponseEntity>> getStyles();
}
