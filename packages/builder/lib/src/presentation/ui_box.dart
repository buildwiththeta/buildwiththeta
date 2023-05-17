import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/src/presentation/notifier_provider.dart';
import 'package:theta/theta.dart';
import 'package:theta_models/theta_models.dart';

class UIBox extends StatelessWidget {
  const UIBox(
    this.componentName, {
    super.key,
    this.placeholder,
    this.errorWidget,
    this.channelId,
    this.workflows,
    this.parameters,
    this.states,
    this.theme = ThemeMode.light,
  });

  final String componentName;
  final int? channelId;
  final Widget Function()? placeholder;
  final Widget Function(String)? errorWidget;
  final List<Workflow>? workflows;
  final List<Var>? parameters;
  final List<Var>? states;
  final ThemeMode theme;

  @override
  Widget build(BuildContext context) {
    return ThetaNotifierProvider(
      theme: theme,
      workflows: workflows,
      child: _LogicBox(
        componentName,
        placeholder: placeholder,
        errorWidget: errorWidget,
        channelId: channelId,
        workflows: workflows,
        parameters: parameters,
        states: states,
        theme: theme,
      ),
    );
  }
}

class _LogicBox extends StatefulWidget {
  const _LogicBox(
    this.componentName, {
    this.placeholder,
    this.errorWidget,
    this.channelId,
    this.workflows,
    this.parameters,
    this.states,
    this.theme = ThemeMode.light,
  });

  final String componentName;
  final int? channelId;
  final Widget Function()? placeholder;
  final Widget Function(String)? errorWidget;
  final List<Workflow>? workflows;
  final List<Var>? parameters;
  final List<Var>? states;
  final ThemeMode theme;

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
          context.read<TreeState>().onColorsChanged(r.colors);
          context.read<TreeState>().onTextsChanged(r.texts);
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
