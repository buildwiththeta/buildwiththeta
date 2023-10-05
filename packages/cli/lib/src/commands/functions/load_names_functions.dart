import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:recase/recase.dart';
import 'package:theta_cli/src/core/constants.dart';
import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';
import 'package:theta_cli/src/domain/usecases/create_preload_file_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_component_usecase.dart';
import 'package:theta_cli/src/domain/usecases/get_styles_usecase.dart';
import 'package:theta_cli/src/domain/usecases/preload_fonts.dart';
import 'package:theta_cli/src/domain/usecases/preload_images.dart';

class LoadNamesFunctions {
  const LoadNamesFunctions(this._logger);

  final Logger _logger;

  Future<Either<Exception, String>> _getComponent(
          String name, String? branch) =>
      getIt<GetComponentUseCase>()(GetComponentUseCaseParams(
        componentName: name,
        branchName: branch,
      ));

  Future<Either<Exception, void>> _preloadImages(String content) =>
      getIt<PreloadImagesUseCase>()(
          PreloadImagesUseCaseParams(json: json.decode(content)));

  Future<void> fetchStyles(String anonKey) {
    _logger.info('🔄 Fetching project styles...');
    return getIt<GetStylesUseCase>()(Params.empty).fold((l) {
      _logger.err('❗️ Error fetching styles, message: $l');
      throw Exception('❗️ Error fetching styles, message: $l');
    }, (r) async {
      _logger.success('✅ Styles loaded successfully.');
      await preloadFonts(r);
      await createPreloadFile(anonKey: anonKey, jsonKey: 'styles', content: r);
    });
  }

  Future<Map<String, dynamic>> fetchComponent(
      String anonKey, String name, String? branch) {
    _logger.info('🔄 Fetching remote component $name...');
    return _getComponent(name, branch).fold((l) {
      _logger.err('❗️ Error fetching component, message: $l');
      throw Exception('❗️ Error fetching component, message: $l');
    }, (r) async {
      _logger.success('✅ Component loaded successfully.');
      await preloadImages(r);
      await createPreloadFile(anonKey: anonKey, jsonKey: name, content: r);
      return await getNames(name, r);
    });
  }

  Future<void> createPreloadFile(
          {required String anonKey,
          required String jsonKey,
          required String content}) =>
      getIt<CreatePreLoadFileUseCase>()(CreatePreLoadFileUseCaseParams(
              anonKey: anonKey, jsonKey: jsonKey, content: content))
          .fold(
        (l) => _logger.err(l.toString()),
        (r) => _logger.success('theta_preload.json updated successfully.'),
      );

  Future<void> preloadImages(String content) => getIt<PreloadImagesUseCase>()(
              PreloadImagesUseCaseParams(json: json.decode(content)))
          .fold(
        (l) => _logger.err(l.toString()),
        (r) => _logger.success('Images preloaded successfully in /assets.'),
      );

  Future<void> preloadFonts(String content) => getIt<PreloadFontsUseCase>()(
              PreloadFontsUseCaseParams(json: json.decode(content)))
          .fold(
        (l) => _logger.err(l.toString()),
        (r) => _logger.success('Fonts preloaded successfully in /assets.'),
      );

  Future<Map<String, dynamic>> getNames(String name, String content) =>
      _preloadImages(content).fold(
        (l) => throw Exception(l.toString()),
        (r) {
          final body = json.decode(content);
          final nodes = (body['nodes'] as List<dynamic>)
              .map((e) => {'id': e['id'], 'name': e['name']})
              .toList();
          return {
            name: nodes,
          };
        },
      );

  String writeNamesFile(Map<String, dynamic> componentsAssets) {
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
      return _writeClasses(e.key, name, e.value);
    }).join('\n\n');

    return '''
    class NodeProps {
      const NodeProps(this.name, this.id);

      final String name;
      final String id;
    }

    $componentClasses

    class ThetaAssets {
      const ThetaAssets();

      ${componentsAssets.entries.map((e) {
      return writeInstanceComponentClass(e.key);
    }).join('\n')}
    }
    ''';
  }

  String _writeClasses(String originalComponentName, String className,
      List<Map<String, dynamic>> components) {
    Set<String> encounteredKeys = {};
    for (int i = 0; i < components.length; i++) {
      String originalKey = components[i]['name'] ?? 'Untitled';
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
    var ultimateClassName = cleanName(className);
    return '''
    class ${ultimateClassName}ComponentAssets {
      ${ultimateClassName}ComponentAssets();

      String get name => '$originalComponentName';

      ${components.map((e) => writeUIBoxNode(e)).join('\n')}
    }
    ''';
  }

  String writeInstanceComponentClass(String componentName) {
    var name = ReCase(componentName);
    if (name.camelCase == 'switch') {
      name = ReCase('${componentName}Node');
    }
    return 'static final ${cleanName(name.camelCase)} = ${cleanName(name.pascalCase)}ComponentAssets();';
  }

  String writeUIBoxNode(Map<String, dynamic> node) {
    var recase = ReCase(node['name']);
    if (recase.camelCase == 'switch') {
      recase = ReCase('${node['name']}Node');
    }
    return 'final ${cleanName(recase.camelCase)} = const NodeProps(\'${node['name']}\', \'${node['id']}\');';
  }
}
