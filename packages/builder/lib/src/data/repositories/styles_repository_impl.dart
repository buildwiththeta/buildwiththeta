import 'package:either_dart/either.dart';
import 'package:theta/src/data/datasources/custom_fonts_service.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/datasources/local_styles_service.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';
import 'package:theta/theta.dart';

class StylesRepositoryImpl implements StylesRepository {
  const StylesRepositoryImpl(
    this._stylesService,
    this._customFontsService,
    this._localStylesService,
  );

  final StylesService _stylesService;
  final CustomFontsService _customFontsService;
  final LocalStylesService _localStylesService;

  Future<void> loadFonts(List<CustomFontEntity> customFonts) async =>
      await _customFontsService.fetchFonts(customFonts);

  @override
  Future<Either<Exception, GetStylesResponseEntity>> getStyles(
      bool preloadAllowed) async {
    try {
      if (preloadAllowed) {
        try {
          final res = await _localStylesService.getPreloadedStyles();
          await loadFonts(res.customFonts);
          return Right(res);
        } catch (e) {
          return Left(
              Exception('Error preloading styles, message: ${e.toString()}'));
        }
      }

      final res = await _stylesService.fetch();
      await loadFonts(res.customFonts);
      return Right(res);
    } catch (e) {
      try {
        final res = await _stylesService.fetch();
        await loadFonts(res.customFonts);
        return Right(res);
      } catch (e) {
        return Left(Exception(e.toString()));
      }
    }
  }
}
