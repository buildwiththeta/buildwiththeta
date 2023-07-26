import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:interact/interact.dart';
import 'package:mason_logger/mason_logger.dart' hide Progress;
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';
import 'package:theta_cli/src/domain/usecases/create_preload_file_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_component_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_styles_usecase.dart';

/// {@template preload_command}
///
/// `theta_cli preload`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class PreloadComponentCommand extends Command<int> {
  /// {@macro sample_command}
  PreloadComponentCommand({
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
  String get description =>
      'Fetch a component from the remote server and add it to the preload file.';

  @override
  String get name => 'preload';

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

    _logger.info('Welcome to Theta CLI! Before we begin:');
    List<String> componentsName = [];
    var confirm = false;
    do {
      final componentName = Input(prompt: 'Enter component name').interact();
      componentsName.add(componentName);
      confirm = Confirm(
        prompt: 'Enter a new component name?',
        defaultValue: false,
        waitForNewLine: true,
      ).interact();
    } while (confirm);

    final length = componentsName.length + 1;
    final progress = Progress(
      length: length,
      size: 0.5,
      rightPrompt: (current) => ' ${current.toString().padLeft(3)}/$length',
    ).interact();

    await fetchStyles();
    progress.increase(1);
    _logger.info('');

    for (final componentName in componentsName) {
      await fetchComponent(componentName);
      progress.increase(1);
      _logger.info('');
    }

    progress.done;

    return ExitCode.usage.code;
  }

  Future<void> fetchStyles() {
    _logger.info('🔄 Fetching project styles...');
    initializeDependencyInjection(argResults?['anon-key']);
    return getIt<GetStylesUseCase>()(Params.empty).fold((l) {
      _logger.err('❗️ Error fetching styles, message: $l');
      throw Exception('❗️ Error fetching styles, message: $l');
    }, (r) async {
      _logger.success('✅ Styles loaded successfully.');
      await createPreloadFile('styles', r);
    });
  }

  Future<void> fetchComponent(String componentName) {
    _logger.info('🔄 Fetching remote component $componentName...');
    return getIt<GetComponentUseCase>()(
            GetComponentUseCaseParams(componentName: componentName))
        .fold((l) {
      _logger.err('❗️ Error fetching component, message: $l');
      throw Exception('❗️ Error fetching component, message: $l');
    }, (r) async {
      _logger.success('✅ Component loaded successfully.');
      await createPreloadFile(componentName, r);
    });
  }

  Future<void> createPreloadFile(String key, String content) =>
      getIt<CreatePreLoadFileUseCase>()(
          CreatePreLoadFileUseCaseParams(key: key, content: content));
}
