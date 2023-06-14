import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/src/presentation/local_notifier_provider.dart';
import 'package:theta_models/theta_models.dart';

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
    this.placeholder,
    this.errorWidget,
    this.workflows,
    this.overrides,
    this.fit = ComponentFit.absolute,
  });

  final String componentName;
  final Widget Function()? placeholder;
  final Widget Function(String)? errorWidget;
  final List<Workflow>? workflows;
  final List<Override>? overrides;
  final ComponentFit fit;

  @override
  Widget build(BuildContext context) {
    return LocalNotifierProvider(
      workflows: workflows,
      nodeOverrides: overrides,
      componentFit: fit,
      child: _LogicBox(
        componentName,
        placeholder: placeholder,
        errorWidget: errorWidget,
      ),
    );
  }
}

class _LogicBox extends StatefulWidget {
  const _LogicBox(
    this.componentName, {
    this.placeholder,
    this.errorWidget,
  });

  final String componentName;
  final Widget Function()? placeholder;
  final Widget Function(String)? errorWidget;

  @override
  State<_LogicBox> createState() => __LogicBoxState();
}

class __LogicBoxState extends State<_LogicBox> {
  CNode? _widget;
  String? _error;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();

    load();
  }

  Future<void> load() async =>
      await getIt<ThetaClient>().build(widget.componentName).fold(
        (l) {
          Logger.printError(l.toString());
          setState(() {
            _error = l.toString();
          });
        },
        (r) {
          setState(
            () {
              _widget = r.treeNodes;
              _isLoaded = true;
            },
          );
        },
      );

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
    return _getPlaceholderWidget ??
        const Center(child: CircularProgressIndicator());
  }

  Widget? get _getPlaceholderWidget => widget.placeholder?.call();

  Widget? get _getErrorWidget => widget.errorWidget?.call(_error!);
}
