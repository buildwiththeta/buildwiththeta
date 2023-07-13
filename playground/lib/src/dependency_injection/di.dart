import 'package:get_it/get_it.dart';
import 'package:playground/src/domain/usecases/add_node_between_usecase.dart';
import 'package:playground/src/domain/usecases/add_node_usecase.dart';
import 'package:playground/src/domain/usecases/delete_node_usecase.dart';
import 'package:theta_rendering/theta_rendering.dart';

import '../data/datasources/node_service.dart';
import '../data/repositories/node_repository_impl.dart';
import '../domain/repositories/node_repository.dart';

part 'lib/data.dart';
part 'lib/domain.dart';
part 'lib/presentation.dart';

GetIt get getIt => GetIt.I;

Future<void> initializeDependencyInjection() async {
  await _registerDataDependencies(getIt);
  await _registerDomainDependencies(getIt);
  await _registerPresentationDependencies(getIt);
}
