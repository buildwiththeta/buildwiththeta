import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/theta.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class ThetaProvider extends StatefulWidget {
  const ThetaProvider({
    super.key,
    required this.child,
    required this.theme,
  });

  final ThemeMode? theme;
  final Widget child;

  @override
  State<ThetaProvider> createState() => _ThetaProviderState();
}

class _ThetaProviderState extends State<ThetaProvider> {
  late final GetStylesResponseEntity _styles;

  @override
  void initState() {
    super.initState();
    if (!Theta.isInitialized) {
      throw Exception(
          'Theta is not initialized. Call Theta.initialize() first.');
    }
    _styles = getIt<ThetaClient>().styles;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TreeState(
        nodeOverrides: [],
        forPlay: true,
        pageId: '',
        isPage: true,
        fit: ComponentFit.absolute,
        colorStyles: _styles.colorStyles,
        textStyles: _styles.textStyles,
        theme: widget.theme ?? ThemeMode.light,
        deviceInfo: Devices.ios.iPhone13,
        workflows: [],
      ),
      child: ChangeNotifierProvider(
        create: (_) => TreeGlobalState(
          onResizingCallback: (value) => {},
          onNodeChanged: (_, __, ___) {},
          onNodesChanged: (_, __) {},
          onNodeFocused: (_, __) {},
          onNodeHovered: (_, __) {},
          onNodeAdded: (_, __, ___) {},
          onRightClick: (_, __) {},
          onComponentPageChange: (_) {},
        ),
        child: widget.child,
      ),
    );
  }
}
