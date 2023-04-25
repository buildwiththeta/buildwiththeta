import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';

class OpenWWebViewXPage extends StatefulWidget {
  /// Returns a WebView widget in Teta
  const OpenWWebViewXPage({
    super.key,
    required this.controller,
    required this.url,
    required this.state,
  });

  final WidgetState state;
  final FTextTypeInput controller;
  final FTextTypeInput url;

  @override
  State<OpenWWebViewXPage> createState() => _WWebViewXPageState();
}

class _WWebViewXPageState extends State<OpenWWebViewXPage> {
  Size get screenSize => MediaQuery.of(context).size;
  VariableObject? variable;

  @override
  void initState() {
    final state = TreeGlobalState.state;
    if (widget.controller.type == FTextTypeEnum.param) {
      variable = state.params
          .firstWhereOrNull((final e) => e.name == widget.controller.paramName);
    } else {
      variable = state.states
          .firstWhereOrNull((final e) => e.name == widget.controller.stateName);
    }

    super.initState();
  }

  @override
  void dispose() {
    variable?.webViewController?.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    return Container();
    /*WebViewX(
      onWebViewCreated: (final controller) {
        variable = variable!.copyWith(
          webViewController: controller,
        );
        _setUrl(state);
      },
      height: double.maxFinite,
      width: double.maxFinite,
    );*/
  }

  void _setUrl(TreeState treeState) {
    /*variable?.webViewController?.loadContent(
      widget.url.get(
        state: treeState,
        loop: widget.state.loop,
        context: context,
      ),
      SourceType.url,
    );*/
  }
}
