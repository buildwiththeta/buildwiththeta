/*
import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:either_dart/either.dart';
import 'package:interact/interact.dart';
import 'package:mason_logger/mason_logger.dart' hide Progress;
import 'package:recase/recase.dart';
import 'package:theta_cli/src/core/constants.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/create_names_file_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_component_usecase.dart';
import 'package:theta_cli/src/domain/usecases/preload_images.dart';

/// {@template preload_command}
///
/// `theta_cli preload`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class LoadNamesCommand extends Command<int> {
  /// {@macro sample_command}
  LoadNamesCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addOption(
      'anon-key',
      abbr: 'k',
      help: 'Anon key',
      mandatory: false,
    );
  }

  @override
  String get description =>
      'Fetch a component from the remote server and add it to the preload file.';

  @override
  String get name => 'load';

  final Logger _logger;

  @override
  Future<int> run() async {
    _logger.info('Welcome to Theta CLI! Before we begin:');
    final branch = Input(prompt: 'Enter branch name').interact();
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

    final length = componentsName.length;
    final progress = Progress(
      length: length,
      size: 0.5,
      rightPrompt: (current) => ' ${current.toString().padLeft(3)}/$length',
    ).interact();

    await initializeDependencyInjection('');
    final anonKey = argResults?['anon-key'] ?? await readToken();
    await disposeDependencies();
    await initializeDependencyInjection(anonKey);

    final componentsAssets = <String, dynamic>{};
    for (final componentName in componentsName) {
      componentsAssets
          .addAll(await fetchComponent(anonKey, componentName, branch));
      progress.increase(1);
      _logger.info('');
    }

    final globalFile = globalFileFromNames(componentsAssets);
    _logger.info(globalFile);
    await getIt<CreateNamesFileUseCase>()(
            CreateNamesFileUseCaseParams(content: globalFile))
        .then((res) =>
            res.fold((l) => _logger.err(l.toString()), (right) => null));
    progress.done;

    return ExitCode.usage.code;
  }

  Future<Map<String, dynamic>> fetchComponent(
      String anonKey, String componentName, String? branch) {
    _logger.info('🔄 Fetching remote component $componentName...');
    return getIt<GetComponentUseCase>()(GetComponentUseCaseParams(
      componentName: componentName,
      branchName: branch,
    )).fold((l) {
      _logger.err('❗️ Error fetching component, message: $l');
      throw Exception('❗️ Error fetching component, message: $l');
    }, (r) async {
      _logger.success('✅ Component loaded successfully.');
      return await getNames(componentName, r);
    });
  }

  Future<Map<String, dynamic>> getNames(String componentName, String content) =>
      getIt<PreloadImagesUseCase>()(
              PreloadImagesUseCaseParams(json: json.decode(content)))
          .fold(
        (l) => throw Exception(l.toString()),
        (r) {
          final body = json.decode(content);
          final nodes = (body['nodes'] as List<dynamic>)
              .map(
                (e) => {
                  'id': e['id'],
                  'name': e['name'],
                },
              )
              .toList();
          return {
            componentName: nodes,
          };
        },
      );

  String globalFileFromNames(Map<String, dynamic> componentsAssets) {
    // Create a set to keep track of keys that have been encountered
    Set<String> encounteredKeys = {};
    for (int i = 0; i < componentsAssets.keys.length; i++) {
      String originalKey = componentsAssets.keys.toList()[i];
      String modifiedKey = originalKey;

      int count = 1;
      while (encounteredKeys.contains(modifiedKey)) {
        // If the key is already encountered, add a suffix to make it unique
        modifiedKey = '$originalKey$count';
        count++;
      }

      // Update the key in componentsAssets
      componentsAssets[modifiedKey] = componentsAssets[originalKey];

      // Add the modified key to the set of encountered keys
      encounteredKeys.add(modifiedKey);
    }

    final componentClasses = componentsAssets.entries.map((e) {
      final name = ReCase(e.key).pascalCase;
      return loadFileFromNames(e.key, name, e.value);
    }).join('\n\n');

    return '''
    class NodeProps {
      const NodeProps(this.name, this.id);

      final String name;
      final String id;
    }

    $componentClasses

    class UIBoxAssets {
      const UIBoxAssets();

      ${componentsAssets.entries.map((e) {
      return writeInstanceComponentClass(e.key);
    }).join('\n')}
    }
    ''';
  }

  String loadFileFromNames(String originalComponentName, String className,
      List<Map<String, dynamic>> components) {
    Set<String> encounteredKeys = {};
    for (int i = 0; i < components.length; i++) {
      String originalKey = components[i]['name'];
      String modifiedKey = originalKey;

      int count = 1;
      while (encounteredKeys.contains(modifiedKey)) {
        // If the key is already encountered, add a suffix to make it unique
        modifiedKey = '$originalKey$count';
        count++;
      }

      // Update the key in componentsAssets
      components[i]['name'] = modifiedKey;

      // Add the modified key to the set of encountered keys
      encounteredKeys.add(modifiedKey);
    }
    return '''
    class ${className}ComponentAssets {
      ${className}ComponentAssets();

      String get name => '$originalComponentName';

      ${components.map((e) => writeUIBoxNode(e)).join('\n')}
    }
    ''';
  }

  String writeInstanceComponentClass(String componentName) {
    final name = ReCase(componentName);
    return 'static final ${name.camelCase} = ${name.pascalCase}ComponentAssets();';
  }

  String writeUIBoxNode(Map<String, dynamic> node) {
    final recase = ReCase(node['name']);
    return 'final ${recase.camelCase} = const NodeProps(\'${node['name']}\', \'${node['id']}\');';
  }
}

// ignore: unused_element
class _MockupUIBoxAssets {
  const _MockupUIBoxAssets();

  // ignore: unused_field
  static const page1 = _MockupUIBoxNode('Page 1', 'page1');
}

class _MockupUIBoxNode {
  const _MockupUIBoxNode(this.name, this.id);

  final String name;
  final String id;
}
*/