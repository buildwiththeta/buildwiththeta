import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/create_names_file_usecase.dart';

class WriteNamesFileFunctions {
  const WriteNamesFileFunctions(this._logger);

  final Logger _logger;

  Future<Either<Exception, void>> _run(String data, String fileName) =>
      getIt<CreateNamesFileUseCase>()(
          CreateNamesFileUseCaseParams(content: data, fileName: fileName));

  Future<void> writeFile(String data, String fileName) =>
      _run(data, fileName).then(
        (res) => res.fold(
          (l) {
            _logger.err(l.toString());
            throw Exception(l.toString());
          },
          (r) => null,
        ),
      );
}
