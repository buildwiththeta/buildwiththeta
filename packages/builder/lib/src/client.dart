import 'package:either_dart/either.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';
import 'package:theta/src/domain/usecases/get_styles_usecase.dart';

class ThetaClient {
  ThetaClient(this._getComponentUseCase, this._getStylesUseCase);

  final GetComponentUseCase _getComponentUseCase;
  final GetStylesUseCase _getStylesUseCase;

  late GetStylesResponseEntity styles;

  Future<void> initialize() async => await _fetchStyles().then((res) {
        res.fold(
          (l) {
            Logger.printError('Error fetching styles: $l');
            throw Exception('Error fetching styles: $l');
          },
          (r) => styles = r,
        );
      });

  Future<Either<Exception, GetStylesResponseEntity>> _fetchStyles(
          {bool preloadAllowed = true}) async =>
      _getStylesUseCase(GetStylesUseCaseParams(preloadAllowed: preloadAllowed));

  Future<Either<Exception, GetPageResponseEntity>> _fetchComponent(
          final String componentName,
          bool preloadAllowed,
          String? branchName) async =>
      _getComponentUseCase(GetComponentUseCaseParams(
        componentName: componentName,
        preloadAllowed: preloadAllowed,
        branchName: branchName,
      ));

  Future<Either<Exception, GetPageResponseEntity>> build(String componentName,
          {bool preloadAllowed = true, String? branchName}) async =>
      await _fetchComponent(componentName, preloadAllowed, branchName);
}
