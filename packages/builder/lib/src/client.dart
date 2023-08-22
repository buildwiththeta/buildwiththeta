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
  final Map<String, Either<Exception, GetPageResponseEntity>> components = {};

  Future<void> initialize(
    List<String> componentNames,
    String? branchName,
    bool preloadedAllowed,
  ) async =>
      await Future.wait([
        _fetchStyles(preloadAllowed: preloadedAllowed).then((res) {
          res.fold(
            (l) {
              Logger.printError('Error fetching styles: $l');
              throw Exception('Error fetching styles: $l');
            },
            (r) => styles = r,
          );
        }),
        ...componentNames.map(
          (e) => _fetchComponent(
            e,
            preloadedAllowed,
            branchName,
          ).then(
            (res) => components[e] = res,
          ),
        )
      ]);

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
      components[componentName] ??
      await _fetchComponent(componentName, preloadAllowed, branchName);
}
