import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class ThetaNotifierProvider extends StatelessWidget {
  const ThetaNotifierProvider({
    super.key,
    required this.child,
    required this.theme,
    required this.workflows,
  });

  final ThemeMode? theme;
  final List<Workflow>? workflows;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TreeState(
        forPlay: true,
        params: [],
        states: [],
        pageId: '',
        isPage: false,
        colorStyles: [],
        textStyles: [],
        localization: FlutterLocalization.instance,
        theme: theme ?? ThemeMode.light,
        deviceInfo: Devices.ios.iPhone13,
        workflows: workflows ?? const [],
        config: const ProjectConfigModel(),
      ),
      child: TreeGlobalState(
        onNodeChanged: (_, __, ___) {},
        onNodeFocused: (_) {},
        onNodeHovered: (_) {},
        child: child,
      ),
    );
  }
}
