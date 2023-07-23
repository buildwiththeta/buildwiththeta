import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';

/// {@template authenticate_command}
///
/// `buildwiththeta_cli authenticate`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class LinkCommand extends Command<int> {
  /// {@macro authenticate_command}
  LinkCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addOption(
      'key',
      abbr: 'k',
      help: 'Anonymous key to use for preload',
      mandatory: true,
    );
  }

  @override
  String get description => 'Link with your project using a key.';

  @override
  String get name => 'link';

  final Logger _logger;

  @override
  Future<int> run() async {
    try {
      initializeDependencyInjection(argResults?['key']);
      _logger.success('✅ Project linked successfully.');
      return ExitCode.success.code;
    } catch (e) {
      _logger.err('Error initializing dependency injection, message: $e');
      return ExitCode.cantCreate.code;
    }
  }
}
