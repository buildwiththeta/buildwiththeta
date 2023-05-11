import 'package:either_dart/either.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';

class ComponentRepositoryImpl implements ComponentRepository {
  const ComponentRepositoryImpl(
    this._componentService,
    this._baseUrl,
    this._token,
  );

  final ComponentService _componentService;
  final String _baseUrl;
  final String _token;

  @override
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
    String componentName,
  ) async {
    try {
      final res =
          await _componentService.getComponent(_baseUrl, _token, componentName);
      return Right(res);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
