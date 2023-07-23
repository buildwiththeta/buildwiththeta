import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:theta_cli/src/data/datasources/component_service.dart';
import 'package:theta_cli/src/data/datasources/directory_service.dart';
import 'package:theta_cli/src/data/datasources/get_styles_service.dart';
import 'package:theta_cli/src/data/models/token.dart';
import 'package:theta_cli/src/data/repositories/component_repository_impl.dart';
import 'package:theta_cli/src/data/repositories/directory_repository_impl.dart';
import 'package:theta_cli/src/data/repositories/styles_repository_impl.dart';
import 'package:theta_cli/src/domain/repositories/component_repository.dart';
import 'package:theta_cli/src/domain/repositories/directory_repository.dart';
import 'package:theta_cli/src/domain/repositories/styles_repository.dart';
import 'package:theta_cli/src/domain/usecases/create_preload_file_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_component_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_styles_usecase.dart';

GetIt get getIt => GetIt.instance;

Future<void> initializeDependencyInjection(String anonKey) async {
  getIt.registerLazySingleton(() => ClientToken(anonKey));
  getIt.registerLazySingleton(() => Client());

  getIt
    ..registerLazySingleton(() => ComponentService(getIt(), getIt()))
    ..registerLazySingleton(() => StylesService(getIt(), getIt()))
    ..registerLazySingleton(() => DirectoryService());

  getIt
    ..registerLazySingleton<ComponentRepository>(
        () => ComponentRepositoryImpl(getIt()))
    ..registerLazySingleton<StylesRepository>(
        () => StylesRepositoryImpl(getIt()))
    ..registerLazySingleton<DirectoryRepository>(
        () => DirectoryRepositoryImpl(getIt()));

  getIt
    ..registerLazySingleton(() => GetComponentUseCase(getIt()))
    ..registerLazySingleton(() => GetStylesUseCase(getIt()))
    ..registerLazySingleton(() => CreatePreLoadFileUseCase(getIt()));
}

Future<void> disposeDependencies() async => await getIt.reset();
