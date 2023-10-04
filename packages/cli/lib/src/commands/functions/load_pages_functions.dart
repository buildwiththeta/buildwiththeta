import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/load_pages_usecase.dart';

class LoadPagesFunctions {
  const LoadPagesFunctions(this._logger);

  final Logger _logger;

  Future<Either<Exception, List<String>>> _load(String branchName) =>
      getIt<LoadPagesUseCase>()(LoadPagesUseCaseParams(branchName: branchName));

  Future<List<String>> loadPages(String branchName) => _load(branchName).then(
        (res) => res.fold(
          (l) {
            _logger.err(l.toString());
            throw Exception(l.toString());
          },
          (r) => r,
        ),
      );
}
