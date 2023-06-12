import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

class LocalNotifierProvider extends StatelessWidget {
  const LocalNotifierProvider({
    super.key,
    required this.child,
    required this.workflows,
    required this.componentFit,
    required this.nodeOverrides,
  });

  final List<Workflow>? workflows;
  final List<Override>? nodeOverrides;
  final ComponentFit componentFit;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final globalState = context.watch<TreeState>();
    return ChangeNotifierProvider(
      create: (_) => globalState.copyWith(
        workflows: workflows,
        nodeOverrides: nodeOverrides,
        fit: componentFit,
      ),
      child: child,
    );
  }
}
