import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/get_styles.dart.dart';
import 'package:theta/src/data/repositories/component_repository_impl.dart';
import 'package:theta/src/data/repositories/styles_repository_impl.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/src/domain/repositories/styles_repository.dart';

GetIt get getIt => GetIt.instance;

Future<void> initializeDependencyInjection() async {
  getIt.registerLazySingleton(() => Client());

  getIt
    ..registerLazySingleton(() => ComponentService(getIt()))
    ..registerLazySingleton(() => StylesService(getIt()));

  getIt
    ..registerLazySingleton<ComponentRepository>(
        () => ComponentRepositoryImpl(getIt(), getIt(), getIt()))
    ..registerLazySingleton<StylesRepository>(
        () => StylesRepositoryImpl(getIt(), getIt(), getIt()));
}

Future<void> disposeDependencies() async {
  await getIt.reset();
}
