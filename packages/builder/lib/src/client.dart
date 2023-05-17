import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';

class ThetaClient {
  ThetaClient(this._getComponentUseCase);

  final GetComponentUseCase _getComponentUseCase;

  Future<Either<Exception, GetPageResponseEntity>> _fetchComponent(
          final String componentName) async =>
      _getComponentUseCase(
          GetComponentUseCaseParams(componentName: componentName));

  Future<Either<Exception, GetPageResponseEntity>> build(
          String componentName) async =>
      await _fetchComponent(componentName);
}
