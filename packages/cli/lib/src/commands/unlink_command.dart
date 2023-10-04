import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart' hide Progress;
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';
import 'package:theta_cli/src/domain/usecases/delete_config_file_usecase.dart';

/// {@template preload_command}
///
/// `theta_cli preload`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class UnlinkProjectCommand extends Command<int> {
  /// {@macro sample_command}
  UnlinkProjectCommand({
    required Logger logger,
  }) : _logger = logger;

  @override
  String get description => 'Unlink a project.';

  @override
  String get name => 'unlink';

  final Logger _logger;

  @override
  Future<int> run() async {
    await saveApiKey();
    return ExitCode.usage.code;
  }

  Future<void> saveApiKey() async {
    initializeDependencyInjection('');
    await deletePreloadFile();
  }

  Future<void> deletePreloadFile() =>
      getIt<DeleteConfigFileUseCase>()(Params.empty).fold(
        (l) => _logger.err(l.toString()),
        (r) => _logger.success('Project unlinked.'),
      );
}
