import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/models/get_styles_response.dart';

abstract class StylesRepository {
  Future<Either<Exception, GetStylesResponseEntity>> getStyles();
}
