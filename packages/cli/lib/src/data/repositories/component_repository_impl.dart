import 'package:either_dart/either.dart';
import 'package:theta_cli/src/data/datasources/component_service.dart';
import 'package:theta_cli/src/domain/repositories/component_repository.dart';

class ComponentRepositoryImpl implements ComponentRepository {
  const ComponentRepositoryImpl(
    this._componentService,
  );

  final ComponentService _componentService;

  @override
  Future<Either<Exception, String>> getComponent(
    String componentName,
    String? branchName,
  ) async {
    try {
      return Right(
          await _componentService.getComponent(componentName, branchName));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
