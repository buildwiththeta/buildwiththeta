import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// The current state of the widget tree.
TreeState? _currentState;

/// Instead of:
///
/// Container(
///    color: Theme.of(context).warningColor,
///    child: Text("hello!", style: Theme.of(context).titleTextStyle,
/// );
///
/// You can write:
///
/// Container(
///    color: const AppColor.warning,
///    child: Text("hello!", style: const AppStyle.title,
/// );
///
/// Wrap your widget tree with the `Themed` widget.
/// Note, there must at most one single `Themed` widget in the tree.
///
/// ```dart
/// import 'package:themed/themed.dart';
///
/// @override
/// Widget build(BuildContext context) {
///   return Themed(
///       child: Scaffold( ... )
///   );
/// }
/// ```
///
/// You can provide a default theme theme, like this:
///
/// ```dart
/// return Themed(
///     defaultTheme: { ... },
///     child: Scaffold( ... )
/// ```
///
class TreeGlobalState extends StatefulWidget {
  TreeGlobalState({
    required final TreeState state,
    required this.child,
  }) : super(key: _globalKey) {
    _currentState = state;
  }

  final Widget child;

  static final _globalKey = GlobalKey<_TreeGlobalState>();

  static TreeState get state => _maybeState()!;

  static TreeState? _maybeState() {
    assert(
      _currentState != null,
      'No state found, be sure there is TreeGlobalState widget in the tree',
    );
    if (_currentState != null) {
      return _currentState!;
    }
    throw Exception(
      'No state found, be sure there is TreeGlobalState widget in the tree',
    );
  }

  @override
  State<TreeGlobalState> createState() => _TreeGlobalState();

  static _TreeGlobalState of(BuildContext context) {
    _InheritedState? inherited =
        context.dependOnInheritedWidgetOfExactType<_InheritedState>();

    if (inherited == null) {
      throw ("Can't find the `Themed` widget up in the tree. "
          "Please make sure to wrap some ancestor widget with `Themed`.");
    }

    return inherited.state;
  }
}

class _TreeGlobalState extends State<TreeGlobalState> {
  /// Each time widget is rebuild it will try to recreate its tree.
  @override
  Widget build(BuildContext context) {
    _rebuildAllChildren();
    return _InheritedState(
      key: ValueKey<Object>(Object()), // ignore: prefer_const_constructors
      state: this,
      child: widget.child,
    );
  }

  /// See: https://stackoverflow.com/a/58513635/3411681
  void _rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }
}

class _InheritedState extends InheritedWidget {
  const _InheritedState({
    Key? key,
    required this.state,
    required Widget child,
  }) : super(key: key, child: child);

  final _TreeGlobalState state;

  @override
  bool updateShouldNotify(_InheritedState old) => true;
}

/// A Playground to test the functionality.
class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
