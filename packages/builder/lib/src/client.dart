import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/usecases/base_usecase.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';
import 'package:theta/src/domain/usecases/get_styles_usecase.dart';

class ThetaClient {
  ThetaClient(this._getComponentUseCase, this._getStylesUseCase);

  final GetComponentUseCase _getComponentUseCase;
  final GetStylesUseCase _getStylesUseCase;

  late GetStylesResponseEntity styles;

  Future<void> initialize() async => await _fetchStyles().then((res) {
        res.fold(
          (l) => throw Exception('Error fetching styles: $l'),
          (r) => styles = r,
        );
      });

  Future<Either<Exception, GetStylesResponseEntity>> _fetchStyles() async =>
      _getStylesUseCase(Params.empty);

  Future<Either<Exception, GetPageResponseEntity>> _fetchComponent(
          final String componentName) async =>
      _getComponentUseCase(
          GetComponentUseCaseParams(componentName: componentName));

  Future<Either<Exception, GetPageResponseEntity>> build(
          String componentName) async =>
      await _fetchComponent(componentName);
}
