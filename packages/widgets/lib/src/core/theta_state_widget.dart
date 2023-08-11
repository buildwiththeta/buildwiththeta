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
  Offset offset,
)?;

typedef OnNodeFocusedCallBack = void Function(
  CNode node,
)?;

typedef OnNodeHoveredCallBack = void Function(
  CNode node,
)?;

typedef OnRightClickCallBack = void Function(
  PointerDownEvent e,
  CNode node,
)?;

OnNodeAddedCallBack _onNodeAdded;
OnNodeChangedCallBack _onNodeChanged;
OnNodeFocusedCallBack _onNodeFocused;
OnNodeHoveredCallBack _onNodeHovered;
OnRightClickCallBack _onRightClick;

class TreeGlobalState extends StatefulWidget {
  TreeGlobalState({
    super.key,
    required this.child,
    required final OnNodeAddedCallBack onNodeAdded,
    required final OnNodeChangedCallBack onNodeChanged,
    required final OnNodeFocusedCallBack onNodeFocused,
    required final OnNodeHoveredCallBack onNodeHovered,
    required final OnRightClickCallBack onRightClick,
  }) {
    _onNodeAdded = onNodeAdded;
    _onNodeChanged = onNodeChanged;
    _onNodeFocused = onNodeFocused;
    _onNodeHovered = onNodeHovered;
    _onRightClick = onRightClick;
  }

  final Widget child;

  static void onNodeAdded(
    CNode node,
    CNode parent,
    Offset offset,
  ) =>
      _onNodeAdded!.call(node, parent, offset);

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

  static void onRightClick(
    PointerDownEvent e,
    CNode node,
  ) =>
      _onRightClick!.call(e, node);

  @override
  State<TreeGlobalState> createState() => _TreeGlobalState();
}

class _TreeGlobalState extends State<TreeGlobalState> {
  @override
  Widget build(BuildContext context) => widget.child;
}
