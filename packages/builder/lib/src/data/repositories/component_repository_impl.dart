import 'package:either_dart/either.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/local_component_service.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';

class ComponentRepositoryImpl implements ComponentRepository {
  const ComponentRepositoryImpl(
    this._componentService,
    this._localComponentService,
  );

  final ComponentService _componentService;
  final LocalComponentService _localComponentService;

  @override
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
    String componentName,
  ) async {
    try {
      final cachedComponent =
          await _localComponentService.getLocalComponent(componentName);
      if (cachedComponent != null) {
        return Right(cachedComponent);
      }
      final res = await _componentService.getComponent(componentName);
      _localComponentService.saveResponse(componentName, res);
      return Right(res);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
