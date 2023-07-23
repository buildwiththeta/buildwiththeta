import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:theta_cli/src/data/datasources/directory_service.dart';
import 'package:theta_cli/src/data/repositories/directory_repository_impl.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/create_preload_file_usecase.dart';

/// {@template authenticate_command}
///
/// `theta_cli authenticate`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class UnlinkCommand extends Command<int> {
  /// {@macro authenticate_command}
  UnlinkCommand({
    required Logger logger,
  }) : _logger = logger;

  @override
  String get description => 'Unlink with your project.';

  @override
  String get name => 'unlink';

  final Logger _logger;

  final CreatePreLoadFileUseCase createPreLoadFileUseCase =
      const CreatePreLoadFileUseCase(
          DirectoryRepositoryImpl(DirectoryService()));

  @override
  Future<int> run() async {
    try {
      disposeDependencies();
      _logger.success('✅ Project unlinked successfully.');
      return ExitCode.success.code;
    } catch (e) {
      _logger.err('Error disposing dependencies, message: $e');
      return ExitCode.cantCreate.code;
    }
  }
}
