import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/src/domain/usecases/send_conversion_event.dart';
import 'package:theta/src/presentation/local_notifier_provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';

part 'ui_box_controller.dart';

/// A widget that builds a remote UI component from a page name.
///
/// - It requires a [componentName] for the component name.
/// - It requires a [placeholder] for the placeholder widget.
/// - It requires a [errorWidget] for the error widget.
/// - It takes a [workflows] of type [Workflow] for the workflows.
class UIBox extends StatelessWidget {
  const UIBox(
    this.componentName, {
    super.key,
    this.controller,
    this.placeholder,
    this.errorWidget,
    this.workflows,
    this.overrides,
    this.fit,
  });

  final String componentName;
  final UIBoxController? controller;
  final Widget? placeholder;
  final Widget Function(Exception)? errorWidget;
  final List<Workflow>? workflows;
  final List<Override>? overrides;

  /// The fit of the component.
  /// If it's null, the fit is set to [ComponentFit.absolute] or [ComponentFit.autoLayout] depending on the number of children.
  ///
  /// If it's [ComponentFit.absolute], the component is rendered with absolute positioning (following top, left, bottom, right values).
  /// If it's [ComponentFit.autoLayout], the component is rendered with auto layout (following flex values as a normal widget).
  ///
  /// Example:
  ///
  /// ```dart
  /// UIBox(
  ///   'Homepage',
  ///   fit: ComponentFit.absolute,
  /// )
  /// ```
  final ComponentFit? fit;

  @override
  Widget build(BuildContext context) {
    return LocalNotifierProvider(
      workflows: workflows,
      nodeOverrides: overrides,
      componentFit: fit ?? ComponentFit.absolute,
      child: _LogicBox(
        componentName,
        controller: controller,
        placeholder: placeholder,
        errorWidget: errorWidget,
        fit: fit,
      ),
    );
  }
}

class _LogicBox extends StatefulWidget {
  const _LogicBox(
    this.componentName, {
    this.controller,
    this.placeholder,
    this.errorWidget,
    this.fit,
  });

  final String componentName;
  final ComponentFit? fit;
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

    /// Sets the load callback in the controller.
    /// It's used to load the component programmatically.
    widget.controller?._setLoadCallback(load);

    /// Loads the component from the server when the widget is initialized.
    load();
  }

  /// Loads the component from the server.
  Future<void> load() async =>
      await getIt<ThetaClient>().build(widget.componentName).fold(
            onError,
            onLoaded,
          );

  /// Triggers the error callback from UIBox -> UIBoxController and sets the
  /// error in the state.
  void onError(Exception error) {
    widget.controller?._triggerError(error);
    setState(() => _error = error);
  }

  /// Triggers the loaded callback from UIBox -> UIBoxController and sets the
  /// widget.
  void onLoaded(GetPageResponseEntity r) {
    widget.controller?._triggerLoaded.call(r.treeNodes);
    setState(() {
      _widget = r.treeNodes;
      _isLoaded = true;
    });
    if (_widget?.children?.length == 1 && widget.fit == null) {
      state.onFitChanged(ComponentFit.autoLayout);
    }
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
