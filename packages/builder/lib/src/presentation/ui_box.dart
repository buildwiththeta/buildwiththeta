import 'package:collection/collection.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/theta.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

part 'ui_box_controller.dart';

/// A widget that builds a remote UI component from a page name.
///
/// - It requires a [componentName] for the component name.
/// - It requires a [placeholder] for the placeholder widget.
/// - It requires a [errorWidget] for the error widget.
/// - It takes a [workflows] of type [Workflow] for the workflows.
/// - It takes a [overrides] of type [Override] for the node overrides.
/// - It takes a [branch] name for versioning.ù
/// - It takes a [controller] of type [UIBoxController] for the controller.
class UIBox extends StatefulWidget {
  const UIBox(
    this.componentName, {
    super.key,
    required this.theme,
    this.client,
    this.isLive = false,
    this.preloadedJson,
    this.branch,
    this.controller,
    this.placeholder,
    this.errorWidget,
    this.workflows,
    this.overrides,
  });

  final String componentName;
  final ThemeMode theme;
  final ThetaClient? client;
  final bool isLive;
  final Map<String, dynamic>? preloadedJson;
  final String? branch;
  final UIBoxController? controller;
  final Widget? placeholder;
  final Widget Function(Exception)? errorWidget;
  final List<Workflow>? workflows;
  final List<Override>? overrides;

  static void onThemeChanged(BuildContext context, ThemeMode mode) =>
      context.read<TreeState>()
        ..onThemeChanged(mode)
        ..notify();

  @override
  State<UIBox> createState() => _UIBoxState();
}

class _UIBoxState extends State<UIBox> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TreeState(
        forPlay: true,
        pageId: '',
        isPage: true,
        colorStyles: widget.client?.styles?.colorStyles ?? [],
        textStyles: widget.client?.styles?.textStyles ?? [],
        fit: ComponentFit.absolute,
        deviceInfo: Devices.ios.iPhone13,
        theme: widget.theme,
        workflows: widget.workflows ?? [],
        nodeOverrides: widget.overrides != null
            ? widget.overrides!
                .map((e) => e
                  ..assignOnChanged(() {
                    if (mounted) {
                      setState(() {});
                    }
                  }))
                .whereNotNull()
                .toList()
            : [],
      ),
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
      child: ChangeNotifierProvider(
        create: (_) => TreeGlobalState(
          onResizingCallback: (value) => {},
          onNodeChanged: (_, __, ___) {},
          onNodeFocused: (_, __) {},
          onNodeHovered: (_, __) {},
          onNodeAdded: (_, __, ___) {},
          onRightClick: (_, __) {},
          onComponentPageChange: (_) {},
        ),
        child: _LogicBox(
          widget.componentName,
          client: widget.client,
          isLive: widget.isLive,
          preloadedJson: widget.preloadedJson,
          branchName: widget.branch,
          controller: widget.controller,
          placeholder: widget.placeholder,
          errorWidget: widget.errorWidget,
        ),
      ),
    );
  }
}

class _LogicBox extends StatefulWidget {
  const _LogicBox(
    this.componentName, {
    this.isLive = false,
    this.client,
    this.preloadedJson,
    this.branchName,
    this.controller,
    this.placeholder,
    this.errorWidget,
  });

  final String componentName;
  final ThetaClient? client;
  final bool isLive;
  final Map<String, dynamic>? preloadedJson;
  final String? branchName;
  final UIBoxController? controller;
  final Widget? placeholder;
  final Widget Function(Exception)? errorWidget;

  @override
  State<_LogicBox> createState() => _LogicBoxState();
}

class _LogicBoxState extends State<_LogicBox> {
  CNode? _widget;
  Exception? _error;
  bool _isLoaded = false;

  TreeState get state => context.read<TreeState>();

  @override
  void initState() {
    super.initState();

    /// Loads the component from the server when the widget is initialized.
    _load();

    /// Sets the load callback in the controller.
    /// It's used to load the component programmatically.
    if (widget.controller != null) {
      widget.controller!._setLoadCallback(_load);
      widget.controller!._setThemeChangeCallback(_onThemeChanged);
    }
  }

  /// Loads the component from the server.
  void _load() => (widget.client ?? ThetaClient(''))
      .build(
        widget.componentName,
        branchName: widget.branchName,
        preloadAllowed: !widget.isLive,
      )
      .then(
        (res) => res.fold(
          _onError,
          _onLoaded,
        ),
      );

  /// Triggers the error callback from UIBox -> UIBoxController and sets the
  /// error in the state.
  void _onError(Exception error) {
    if (widget.controller != null) {
      widget.controller!._triggerError(error);
    }
    setState(() => _error = error);
  }

  /// Triggers the loaded callback from UIBox -> UIBoxController and sets the
  /// widget.
  void _onLoaded(GetPageResponseEntity r) {
    widget.controller?._triggerLoaded.call(
      r.treeNodes,
      widget.componentName,
      r.pageID,
      widget.branchName,
      r.abTestID,
    );
    setState(() {
      _widget = r.treeNodes;
      _isLoaded = true;
    });

    state.onNodesChanged(r.nodes);
    state.notify();
  }

  void _onThemeChanged(ThemeMode mode) {
    state.onThemeChanged(mode);
    state.notify();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return _getErrorWidget ??
          Center(
            child: Text('Something went wrong, error: $_error'),
          );
    }
    if (_isLoaded) {
      return _widget!.toWidget(
        context: context,
        state: WidgetState(node: _widget!, loop: 0),
      );
    }
    return widget.placeholder ??
        const Center(child: CircularProgressIndicator());
  }

  /// Returns the error widget.
  Widget? get _getErrorWidget => widget.errorWidget?.call(_error!);
}
