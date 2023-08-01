import 'package:either_dart/either.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/datasources/local_styles_service.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';

class StylesRepositoryImpl implements StylesRepository {
  const StylesRepositoryImpl(
    this._preloadFile,
    this._stylesService,
    this._localStylesService,
    this._isCacheEnabled,
  );

  final PreloadFile _preloadFile;
  final StylesService _stylesService;
  final LocalStylesService _localStylesService;
  final bool _isCacheEnabled;

  @override
  Future<Either<Exception, GetStylesResponseEntity>> getStyles(
      bool preloadAllowed) async {
    try {
      if (_preloadFile.enabled && preloadAllowed) {
        try {
          return Right(await _localStylesService.getPreloadedStyles());
        } catch (e) {
          return Left(
              Exception('Error preloading styles, message: ${e.toString()}'));
        }
      }
      if (!_isCacheEnabled) {
        final res = await _stylesService.fetch();
        return Right(res);
      }

      final cachedStyles = await _localStylesService.getLocalStyles();
      if (cachedStyles != null) {
        return Right(cachedStyles);
      }
      final res = await _stylesService.fetch();
      await _localStylesService.saveResponse(res);
      return Right(res);
    } catch (e) {
      Logger.printError('Error fetching styles: $e');
      try {
        await _localStylesService.clearCache();
        final res = await _stylesService.fetch();
        return Right(res);
      } catch (e) {
        return Left(Exception(e.toString()));
      }
    }
  }
}
