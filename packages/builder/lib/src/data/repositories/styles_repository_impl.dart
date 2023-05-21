import 'package:either_dart/either.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/datasources/local_styles_service.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';

class StylesRepositoryImpl implements StylesRepository {
  const StylesRepositoryImpl(
    this._stylesService,
    this._localStylesService,
  );

  final StylesService _stylesService;
  final LocalStylesService _localStylesService;

  @override
  Future<Either<Exception, GetStylesResponseEntity>> getStyles() async {
    try {
      final cachedStyles = await _localStylesService.getLocalStyles();
      if (cachedStyles != null) {
        return Right(cachedStyles);
      }
      final res = await _stylesService.fetch();
      _localStylesService.saveResponse(res);
      return Right(res);
    } catch (e) {
      _localStylesService.clearCache();
      return Left(Exception(e.toString()));
    }
  }
}
