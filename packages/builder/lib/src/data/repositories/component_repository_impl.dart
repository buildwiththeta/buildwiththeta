import 'package:either_dart/either.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/local_component_service.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/theta.dart';

class ComponentRepositoryImpl implements ComponentRepository {
  const ComponentRepositoryImpl(
    this._preloadFile,
    this._componentService,
    this._localComponentService,
    this._isCacheEnabled,
  );

  final PreloadFile _preloadFile;
  final ComponentService _componentService;
  final LocalComponentService _localComponentService;
  final bool _isCacheEnabled;

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

  Future<Either<Exception, GetPageResponseEntity>> _getCached(
      String componentName, String? branchName) async {
    final cachedComponent = await _localComponentService.getLocalComponent(
        componentName, branchName);
    if (cachedComponent != null) {
      return Right(cachedComponent);
    }
    final res = await _get(componentName, branchName);
    await _localComponentService.saveResponse(componentName, branchName, res);
    return Right(res);
  }

  @override
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
    String componentName,
    bool preloadAllowed,
    String? branchName,
  ) async {
    try {
      if (_preloadFile.enabled && preloadAllowed) {
        return _getPreloaded(componentName, branchName);
      }

      if (!_isCacheEnabled) {
        final res = await _get(componentName, branchName);
        return Right(res);
      }

      return _getCached(componentName, branchName);
    } catch (e) {
      Logger.printError('Error fetching component: $e');

      await _localComponentService.clearCache();
      final res = await _get(componentName, branchName);
      return Right(res);
    }
  }

  @override
  Future<Either<Exception, void>> sendConversionEvent(
    ID eventID,
    ID? abTestID,
  ) async {
    try {
      await _componentService.sendConversionEvent(eventID, abTestID);
      return const Right(null);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
