import 'package:either_dart/either.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';

class StylesRepositoryImpl implements StylesRepository {
  const StylesRepositoryImpl(
    this._stylesService,
    this._baseUrl,
    this._token,
  );

  final StylesService _stylesService;
  final String _baseUrl;
  final String _token;

  @override
  Future<Either<Exception, GetStylesResponseEntity>> getStyles() async {
    try {
      final res = await _stylesService.fetch(_baseUrl, _token);
      return Right(res);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
