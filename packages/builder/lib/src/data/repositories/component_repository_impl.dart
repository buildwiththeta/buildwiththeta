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

  Future<GetPageResponseEntity> _get(
          String componentName, String? branchName) async =>
      await _componentService.getComponent(componentName, branchName);

  Future<Either<Exception, GetPageResponseEntity>> _getPreloaded(
      String componentName, String? branchName) async {
    try {
      return Right(
          await _localComponentService.getPreloadedComponent(componentName));
    } catch (e) {
      return Left(
          Exception('Error preloading component, message: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
    String componentName,
    bool preloadAllowed,
    String? branchName,
  ) async {
    try {
      if (preloadAllowed) {
        return _getPreloaded(componentName, branchName);
      }

      return Right(await _get(componentName, branchName));
    } catch (e) {
      return Right(await _get(componentName, branchName));
    }
  }
}
