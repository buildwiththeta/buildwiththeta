import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/core/connection_mode.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/datasources/local_component_service.dart';
import 'package:theta/src/data/datasources/local_styles_service.dart';
import 'package:theta/src/data/models/client_mapper.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/data/repositories/component_repository_impl.dart';
import 'package:theta/src/data/repositories/styles_repository_impl.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';
import 'package:theta/src/domain/usecases/get_styles_usecase.dart';
import 'package:theta/src/domain/usecases/send_conversion_event.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

GetIt get getIt => GetIt.instance;

Future<void> initializeDependencyInjection(
  String key,
  int cacheExtension,
  ConnectionMode connectionMode,
  Map<String, dynamic>? customPreloadFile,
) async {
  getIt.registerLazySingleton(() => PreloadFile(
      connectionMode == ConnectionMode.preloaded, customPreloadFile));
  getIt.registerLazySingleton(() => const NodesParse());
  getIt.registerLazySingleton(() => const ColorStylesMapper());
  getIt.registerLazySingleton(() => const TextStylesMapper());
  getIt.registerLazySingleton(() => const NodeRendering());
  getIt.registerLazySingleton(() => const ClientMapper().mapToken(key));
  getIt.registerLazySingleton(() => Client());

  getIt
    ..registerLazySingleton(() => ComponentService(getIt(), getIt()))
    ..registerLazySingleton(() => LocalComponentService(getIt(), getIt(),
        cacheExtension, connectionMode == ConnectionMode.cached))
    ..registerLazySingleton(() => StylesService(getIt(), getIt()))
    ..registerLazySingleton(() => LocalStylesService(getIt(), getIt(),
        cacheExtension, connectionMode == ConnectionMode.cached));

  getIt
    ..registerLazySingleton<ComponentRepository>(
        () => ComponentRepositoryImpl(getIt(), getIt(), getIt()))
    ..registerLazySingleton<StylesRepository>(
        () => StylesRepositoryImpl(getIt(), getIt(), getIt()));

  getIt
    ..registerLazySingleton(() => GetComponentUseCase(getIt()))
    ..registerLazySingleton(() => GetStylesUseCase(getIt()))
    ..registerLazySingleton(() => SendConversionEventUseCase(getIt()));

  getIt.registerLazySingleton(() => ThetaClient(getIt(), getIt()));
}

Future<void> disposeDependencies() async => await getIt.reset();
