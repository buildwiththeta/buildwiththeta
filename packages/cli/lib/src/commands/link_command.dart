import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart' hide Progress;
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/create_config_file_usecase.dart';

/// {@template preload_command}
///
/// `theta_cli preload`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class LinkProjectCommand extends Command<int> {
  /// {@macro sample_command}
  LinkProjectCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addOption(
      'anon-key',
      abbr: 'k',
      help: 'Anon key',
      mandatory: true,
    );
  }

  @override
  String get description => 'Link a project for all future commands.';

  @override
  String get name => 'link';

  final Logger _logger;

  @override
  Future<int> run() async {
    try {
      if (argResults?['anon-key'] == null) {
        _logger.err('❗️ Anon key is required. . Use --anon-key YOUR_KEY');
        return ExitCode.usage.code;
      }
    } catch (e) {
      _logger.err('❗️ Anon key is required. . Use --anon-key YOUR_KEY');
      return ExitCode.usage.code;
    }

    final anonKey = argResults?['anon-key'];

    await saveApiKey(anonKey);

    return ExitCode.usage.code;
  }

  Future<void> saveApiKey(String anonKey) async {
    initializeDependencyInjection(anonKey);
    await createPreloadFile(anonKey: anonKey, jsonKey: 'token');
  }

  Future<void> createPreloadFile(
          {required String anonKey, required String jsonKey}) =>
      getIt<CreateConfigFileUseCase>()(
              CreateConfigFileUseCaseParams(jsonKey: jsonKey, content: anonKey))
          .fold(
        (l) => _logger.err(l.toString()),
        (r) => _logger.success('Project linked.'),
      );
}
