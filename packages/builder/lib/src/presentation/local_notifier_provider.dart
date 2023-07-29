import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';

class LocalNotifierProvider extends StatelessWidget {
  const LocalNotifierProvider({
    super.key,
    required this.child,
    required this.workflows,
    required this.nodeOverrides,
  });

  final List<Workflow>? workflows;
  final List<Override>? nodeOverrides;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final globalState = context.watch<TreeState>();
    final isPreloaded = getIt<PreloadFile>().enabled;
    return ChangeNotifierProvider(
      create: (_) => globalState.copyWith(
        workflows: workflows,
        nodeOverrides: nodeOverrides,
        preloaded: isPreloaded,
      ),
      child: child,
    );
  }
}
