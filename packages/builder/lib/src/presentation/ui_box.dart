import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta/theta.dart';

class UIBox extends StatefulWidget {
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
  State<UIBox> createState() => _UIBoxState();
}

class _UIBoxState extends State<UIBox> {
  Widget? _widget;
  ClearErrorResponse? _error;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    final res = await Theta.instance.build(
      context,
      widget.componentName,
      workflows: widget.workflows,
      parameters: widget.parameters,
      states: widget.states,
      theme: widget.theme,
    );
    setState(() {
      _error = res.error;
      _widget = res.data;
      _isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return _getErrorWidget ??
          Center(
            child: Text('Something went wrong, error: ${_error?.message}'),
          );
    }
    if (_isLoaded) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: _widget,
          ),
        ),
      );
    }
    return _getPlaceholderWidget ??
        const Center(child: CircularProgressIndicator());
  }

  Widget? get _getPlaceholderWidget => widget.placeholder?.call();

  Widget? get _getErrorWidget =>
      widget.errorWidget?.call(_error!.message ?? '');
}
