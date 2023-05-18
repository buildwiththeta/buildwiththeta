import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:theta_models/theta_models.dart';

typedef OnNodeChangedCallBack = void Function(
  CNode node,
  UITransformResult rect,
  DeviceType deviceType,
)?;

typedef OnNodeAddedCallBack = void Function(
  CNode node,
  CNode parent,
)?;

typedef OnNodeFocusedCallBack = void Function(
  CNode node,
)?;

typedef OnNodeHoveredCallBack = void Function(
  CNode node,
)?;

OnNodeAddedCallBack _onNodeAdded;
OnNodeChangedCallBack _onNodeChanged;
OnNodeFocusedCallBack _onNodeFocused;
OnNodeHoveredCallBack _onNodeHovered;

class TreeGlobalState extends StatefulWidget {
  TreeGlobalState({
    required this.child,
    required final OnNodeAddedCallBack onNodeAdded,
    required final OnNodeChangedCallBack onNodeChanged,
    required final OnNodeFocusedCallBack onNodeFocused,
    required final OnNodeHoveredCallBack onNodeHovered,
  }) : super(key: _globalKey) {
    _onNodeAdded = onNodeAdded;
    _onNodeChanged = onNodeChanged;
    _onNodeFocused = onNodeFocused;
    _onNodeHovered = onNodeHovered;
  }

  final Widget child;

  static final _globalKey = GlobalKey<_TreeGlobalState>();

  static void onNodeAdded(
    CNode node,
    CNode parent,
  ) =>
      _onNodeAdded!.call(node, parent);

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
}

class _TreeGlobalState extends State<TreeGlobalState> {
  @override
  Widget build(BuildContext context) => widget.child;
}
