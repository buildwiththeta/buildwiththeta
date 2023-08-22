import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/src/domain/usecases/send_conversion_event.dart';
import 'package:theta/src/presentation/local_notifier_provider.dart';
import 'package:theta/theta.dart';
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
    this.branch,
    this.controller,
    this.placeholder,
    this.errorWidget,
    this.workflows,
    this.overrides,
  });

  final String componentName;
  final String? branch;
  final UIBoxController? controller;
  final Widget? placeholder;
  final Widget Function(Exception)? errorWidget;
  final List<Workflow>? workflows;
  final List<Override>? overrides;

  @override
  State<UIBox> createState() => _UIBoxState();
}

class _UIBoxState extends State<UIBox> {
  @override
  void initState() {
    super.initState();
    for (final override in widget.overrides ?? <Override>[]) {
      override.assignOnChanged(() {
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LocalNotifierProvider(
      workflows: widget.workflows,
      nodeOverrides: widget.overrides,
      child: _LogicBox(
        widget.componentName,
        branchName: widget.branch,
        controller: widget.controller,
        placeholder: widget.placeholder,
        errorWidget: widget.errorWidget,
      ),
    );
  }
}

class _LogicBox extends StatefulWidget {
  const _LogicBox(
    this.componentName, {
    this.branchName,
    this.controller,
    this.placeholder,
    this.errorWidget,
  });

  final String componentName;
  final String? branchName;
  final UIBoxController? controller;
  final Widget? placeholder;
  final Widget Function(Exception)? errorWidget;

  @override
  State<_LogicBox> createState() => __LogicBoxState();
}

class __LogicBoxState extends State<_LogicBox> {
  CNode? _widget;
  Exception? _error;
  bool _isLoaded = false;

  TreeState get state => context.read<TreeState>();

  @override
  void initState() {
    super.initState();

    /// Loads the component from the server when the widget is initialized.
    load();

    /// Sets the load callback in the controller.
    /// It's used to load the component programmatically.
    if (widget.controller != null) {
      widget.controller!._setLoadCallback(load);
    }
  }

  /// Loads the component from the server.
  Future<void> load() async {
    getIt<ThetaClient>()
        .build(widget.componentName, branchName: widget.branchName)
        .fold(
          onError,
          onLoaded,
        );
    if (getIt<PreloadFile>().enabled) {
      getIt<ThetaClient>()
          .build(widget.componentName,
              branchName: widget.branchName, preloadAllowed: false)
          .fold(
            (l) => Logger.printError(l.toString()),
            onLoaded,
          );
    }
  }

  /// Triggers the error callback from UIBox -> UIBoxController and sets the
  /// error in the state.
  void onError(Exception error) {
    if (widget.controller != null) {
      widget.controller!._triggerError(error);
    }
    setState(() => _error = error);
  }

  /// Triggers the loaded callback from UIBox -> UIBoxController and sets the
  /// widget.
  void onLoaded(GetPageResponseEntity r) {
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
    if (r.conversionEvents.isNotEmpty) {
      final worksFromCloud = r.conversionEvents
          .map((e) => Workflow(e.nodeID, e.trigger, () async {
                await getIt<SendConversionEventUseCase>()(
                  SendConversionEventUseCaseParams(
                    eventID: e.id,
                    abTestID: r.abTestID,
                  ),
                );
              }))
          .toList();
      state.onWorkflowsChanged([...state.workflows, ...worksFromCloud]);
    }
    state.notify();
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
