import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/datasources/get_styles_service.dart';
import 'package:theta_cli/src/domain/repositories/styles_repository.dart';

class StylesRepositoryImpl implements StylesRepository {
  const StylesRepositoryImpl(
    this._stylesService,
  );

  final StylesService _stylesService;

  @override
  Future<Either<Exception, String>> getStyles() async {
    try {
      return Right(await _stylesService.fetch());
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
