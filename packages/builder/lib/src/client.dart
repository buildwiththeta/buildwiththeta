import 'package:either_dart/either.dart';
import 'package:http/http.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/custom_fonts_service.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/datasources/local_component_service.dart';
import 'package:theta/src/data/datasources/local_styles_service.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/token.dart';
import 'package:theta/src/data/models/urls.dart';
import 'package:theta/src/data/repositories/component_repository_impl.dart';
import 'package:theta/src/data/repositories/styles_repository_impl.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';
import 'package:theta/src/domain/usecases/get_styles_usecase.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart'
    deferred as theta_open_widgets;

class ThetaClient {
  ThetaClient(this.anonKey)
      : _getComponentUseCase = GetComponentUseCase(
          ComponentRepositoryImpl(
            ComponentService(
                ClientToken(anonKey), Client(), const DefaultCustomURLs()),
            LocalComponentService(
              ClientToken(anonKey),
            ),
          ),
        ),
        _getStylesUseCase = GetStylesUseCase(
          StylesRepositoryImpl(
            StylesService(
                ClientToken(anonKey), Client(), const DefaultCustomURLs()),
            CustomFontsService(Client()),
            LocalStylesService(
              ClientToken(anonKey),
            ),
          ),
        );

  final String anonKey;
  final GetComponentUseCase _getComponentUseCase;
  final GetStylesUseCase _getStylesUseCase;

  GetStylesResponseEntity? styles;
  final Map<String, Either<Exception, GetPageResponseEntity>> components = {};

  Future<void> initialize() async {
    await theta_open_widgets.loadLibrary();
    await theta_open_widgets.ThetaOpenWidgets.initialize();
    final res = await _fetchStyles();
    res.fold(
      (l) {
        Logger.printError('Error fetching styles: $l');
        throw Exception('Error fetching styles: $l');
      },
      (r) => styles = r,
    );
  }

  Future<Either<Exception, GetStylesResponseEntity>> _fetchStyles() async =>
      await _getStylesUseCase(
          const GetStylesUseCaseParams(preloadAllowed: true));

  Future<Either<Exception, GetPageResponseEntity>> _fetchComponent(
    final String componentName,
    bool preloadAllowed,
    String? branchName,
  ) async =>
      _getComponentUseCase(GetComponentUseCaseParams(
        componentName: componentName,
        preloadAllowed: preloadAllowed,
        branchName: branchName,
      ));

  Future<Either<Exception, GetPageResponseEntity>> build(
    String componentName, {
    bool preloadAllowed = true,
    String? branchName,
  }) async {
    if (components.containsKey(componentName)) {
      return components[componentName]!;
    }
    return await _fetchComponent(componentName, preloadAllowed, branchName);
  }
}
