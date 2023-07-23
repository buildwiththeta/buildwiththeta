import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart';
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
    argParser.addFlag(
      'styles',
      abbr: 's',
      help: 'Preload styles.',
      negatable: false,
    );
    argParser.addFlag(
      'component',
      abbr: 'c',
      help: 'Preload a component.',
      negatable: false,
    );
    argParser.addOption(
      'name',
      abbr: 'n',
      help: 'Component name to preload.',
    );
    argParser.addOption(
      'key',
      abbr: 'k',
      help: 'Your anon key.',
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
    if (argResults?['styles'] == true) {
      return fetchStyles();
    } else if (argResults?['component'] == true) {
      return fetchComponent(argResults?['name']);
    }
    return ExitCode.usage.code;
  }

  Future<int> fetchStyles() {
    _logger.info('🔄 Fetching project styles...');
    initializeDependencyInjection(argResults?['key']);
    return getIt<GetStylesUseCase>()(Params.empty).fold((l) {
      _logger.err('❗️ Error fetching component, message: $l');
      return ExitCode.cantCreate.code;
    }, (r) {
      _logger.success('✅ Component fetched successfully.');
      return createPreloadFile('styles', r);
    });
  }

  Future<int> fetchComponent(String componentName) {
    _logger.info('🔄 Fetching remote component $componentName...');
    initializeDependencyInjection(argResults?['key']);
    return getIt<GetComponentUseCase>()(
            GetComponentUseCaseParams(componentName: componentName))
        .fold((l) {
      _logger.err('❗️ Error fetching component, message: $l');
      return ExitCode.cantCreate.code;
    }, (r) {
      _logger.success('✅ Component fetched successfully.');
      return createPreloadFile(componentName, r);
    });
  }

  Future<int> createPreloadFile(String key, String content) =>
      getIt<CreatePreLoadFileUseCase>()(
              CreatePreLoadFileUseCaseParams(key: key, content: content))
          .fold(
        (l) {
          _logger.info('❗️ Error creating file, message: $l');
          return ExitCode.cantCreate.code;
        },
        (r) {
          _logger.success('✅ Preload file created successfully in /assets.');
          return ExitCode.success.code;
        },
      );
}
