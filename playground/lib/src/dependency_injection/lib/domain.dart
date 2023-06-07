part of '../di.dart';

Future<void> _registerDomainDependencies(GetIt getIt) async => getIt
  ..registerLazySingleton<AddNodeUseCase>(
    () => AddNodeUseCase(getIt()),
  )
  ..registerLazySingleton<AddNodeBetweenUseCase>(
    () => AddNodeBetweenUseCase(getIt()),
  )
  ..registerLazySingleton<DeleteNodeUseCase>(
    () => DeleteNodeUseCase(getIt()),
  );
