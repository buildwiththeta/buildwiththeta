import 'package:recase/recase.dart';
import 'package:theta_cli/src/core/constants.dart';

class LoadWidgetsFunctions {
  const LoadWidgetsFunctions();

  String writeWidgetsFile(
      Map<String, dynamic> componentsAssets, String anonKey) {
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
      return _writeWidget(e.key, name);
    }).join('\n\n');

    return '''
    import 'package:flutter/material.dart';
    import 'package:theta/theta.dart';
    import './theta_ui_assets.g.dart';

    final _client = ThetaClient('$anonKey');

    Future<void> initializeThetaClient() async {
      return await _client.initialize();
    }

    $componentClasses
    ''';
  }

  String _writeWidget(String originalComponentName, String className) {
    final rc = ReCase(originalComponentName);
    return '''
    class ${cleanName(className)}Widget extends StatelessWidget {
      const ${cleanName(className)}Widget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.${cleanName(rc.camelCase)}.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
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
