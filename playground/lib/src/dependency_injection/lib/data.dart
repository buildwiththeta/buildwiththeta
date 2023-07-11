part of '../di.dart';

Future<void> _registerDataDependencies(GetIt getIt) async {
  // Regiter http client

  getIt.registerLazySingleton<FindNodeRendering>(
      () => const FindNodeRendering());
  getIt.registerLazySingleton<NodeRendering>(() => const NodeRendering());

  // Register datasources
  getIt.registerLazySingleton<NodeService>(
    () => NodeService(getIt()),
  );

  // Register repositories
  getIt.registerLazySingleton<NodeRepository>(
    () => NodeRepositoryImpl(getIt()),
  );
}
