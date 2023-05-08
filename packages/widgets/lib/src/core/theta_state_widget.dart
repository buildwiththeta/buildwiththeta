import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:theta_models/theta_models.dart';

typedef OnNodeChangedCallBack = void Function(
  CNode node,
  UITransformResult rect,
  DeviceType deviceType,
)?;

typedef OnNodeFocusedCallBack = void Function(
  CNode node,
)?;

typedef OnNodeHoveredCallBack = void Function(
  CNode node,
)?;

/// The current state of the widget tree.
ValueNotifier<TreeState>? _currentState;
OnNodeChangedCallBack _onNodeChanged;
OnNodeFocusedCallBack _onNodeFocused;
OnNodeHoveredCallBack _onNodeHovered;

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
    required final OnNodeChangedCallBack onNodeChanged,
    required final OnNodeFocusedCallBack onNodeFocused,
    required final OnNodeHoveredCallBack onNodeHovered,
  }) : super(key: _globalKey) {
    _currentState = ValueNotifier<TreeState>(state);
    _onNodeChanged = onNodeChanged;
    _onNodeFocused = onNodeFocused;
    _onNodeHovered = onNodeHovered;
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
      return _currentState!.value;
    }
    throw Exception(
      'No state found, be sure there is TreeGlobalState widget in the tree',
    );
  }

  static void onNodeChanged(
    CNode node,
    UITransformResult rect,
    DeviceType deviceType,
  ) =>
      _onNodeChanged!.call(node, rect, deviceType);

  static void onNodeFocused(
    CNode node,
  ) =>
      _onNodeFocused!.call(node);

  static void onNodeHovered(
    CNode node,
  ) =>
      _onNodeHovered!.call(node);

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
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TreeState>(
      valueListenable: _currentState!,
      builder: (BuildContext context, TreeState state, Widget? child) {
        return widget.child;
      },
    );
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
