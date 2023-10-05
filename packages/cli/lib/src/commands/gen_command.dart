import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:interact/interact.dart';
import 'package:mason_logger/mason_logger.dart' hide Progress;
import 'package:theta_cli/src/commands/functions/load_names_functions.dart';
import 'package:theta_cli/src/commands/functions/load_pages_functions.dart';
import 'package:theta_cli/src/commands/functions/load_widgets_functions.dart';
import 'package:theta_cli/src/commands/functions/write_load_file_functions.dart';
import 'package:theta_cli/src/core/constants.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';
import 'package:theta_cli/src/domain/usecases/write_theta_assets_path.dart';

/// {@template preload_command}
///
/// `theta_cli preload`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class GenCommand extends Command<int> {
  /// {@macro sample_command}
  GenCommand({
    required Logger logger,
  })  : _logger = logger,
        _loadNamesFunctions = LoadNamesFunctions(logger),
        _loadPagesFunctions = LoadPagesFunctions(logger),
        _writeNamesFileFunctions = WriteNamesFileFunctions(logger),
        _loadWidgetsFunctions = const LoadWidgetsFunctions();

  @override
  String get description => 'Generate UI files';

  @override
  String get name => 'gen';

  final Logger _logger;

  final LoadNamesFunctions _loadNamesFunctions;
  final LoadPagesFunctions _loadPagesFunctions;
  final WriteNamesFileFunctions _writeNamesFileFunctions;
  final LoadWidgetsFunctions _loadWidgetsFunctions;

  @override
  Future<int> run() async {
    String? anonKey;
    try {
      await initializeDependencyInjection('');
      anonKey = await readToken();
      await disposeDependencies();
      await initializeDependencyInjection(anonKey);
    } catch (e) {
      _logger.err(
          'Missing Anon Key. Link your project using `theta link -k <key>`');
      return ExitCode.usage.code;
    }
    await installThetaDependency();
    await writeNamesFile(anonKey);
    return ExitCode.usage.code;
  }

  Future<void> installThetaDependency() async {
    final res = await getIt<WritePubspectThetaAssetsPathUseCase>()(Params.empty)
        .fold((l) => false, (r) => r);

    if (res) {
      return;
    }

    // The command you want to run
    var command =
        'flutter pub add theta'; // Example: list files in the current directory

    // Execute the command
    late Process process;

    if (Platform.isWindows) {
      process =
          await Process.start('cmd', ['/c', ...command.split(' ').toList()]);
    } else {
      process = await Process.start('sh', ['-c', command]);
    }

    // Get the output
    var output = await process.stdout.transform(utf8.decoder).join();

    _logger.info(output);

    var errors = await process.stderr.transform(utf8.decoder).join();

    if (errors.isNotEmpty) {
      _logger.err('Error: $errors');
    }

    // Wait for the process to be finished
    var exitCode = await process.exitCode;
    _logger.info('Theta installation, exist code: $exitCode');
  }

  Future<List<String>> loadPages(String branchName) async =>
      await _loadPagesFunctions.loadPages(branchName);

  Future<void> writeNamesFile(String anonKey) async {
    final branch = Input(prompt: 'Enter branch name').interact();
    final pagesName = await loadPages(branch);
    final length = pagesName.length;
    final progress = Progress(
      length: length,
      size: 0.5,
      rightPrompt: (current) => ' ${current.toString().padLeft(3)}/$length',
    ).interact();

    await _loadNamesFunctions.fetchStyles(anonKey);

    final componentsAssets = <String, dynamic>{};
    for (final componentName in pagesName) {
      componentsAssets.addAll(await _loadNamesFunctions.fetchComponent(
        anonKey,
        componentName,
        branch,
      ));
      progress.increase(1);
      _logger.info('');
    }

    final namesData = _loadNamesFunctions.writeNamesFile(componentsAssets);
    _writeNamesFileFunctions.writeFile(namesData, 'theta_ui_assets.g.dart');

    final widgetsData =
        _loadWidgetsFunctions.writeWidgetsFile(componentsAssets, anonKey);
    _writeNamesFileFunctions.writeFile(widgetsData, 'theta_ui_widgets.g.dart');
    progress.done;
  }
}
