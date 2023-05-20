import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class LocalNotifierProvider extends StatelessWidget {
  const LocalNotifierProvider({
    super.key,
    required this.child,
    required this.workflows,
  });

  final List<Workflow>? workflows;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final globalState = context.watch<TreeState>();
    return ChangeNotifierProvider(
      create: (_) => globalState.copyWith(
        workflows: workflows,
      ),
      child: TreeGlobalState(
        onNodeChanged: (_, __, ___) {},
        onNodeFocused: (_) {},
        onNodeHovered: (_) {},
        onNodeAdded: (_, __, ___) {},
        child: child,
      ),
    );
  }
}
