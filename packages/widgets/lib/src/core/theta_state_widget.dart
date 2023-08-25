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
  DeviceType device,
)?;

typedef OnNodeHoveredCallBack = void Function(
  CNode node,
  DeviceType device,
)?;

typedef OnRightClickCallBack = void Function(
  PointerDownEvent e,
  CNode node,
)?;

typedef OnResizingCallback = void Function(bool value)?;

OnNodeAddedCallBack _onNodeAdded;
OnNodeChangedCallBack _onNodeChanged;
OnNodeFocusedCallBack _onNodeFocused;
OnNodeHoveredCallBack _onNodeHovered;
OnRightClickCallBack _onRightClick;
OnResizingCallback _onResizingCallback;

class TreeGlobalState extends ChangeNotifier {
  TreeGlobalState({
    required final OnNodeAddedCallBack onNodeAdded,
    required final OnNodeChangedCallBack onNodeChanged,
    required final OnNodeFocusedCallBack onNodeFocused,
    required final OnNodeHoveredCallBack onNodeHovered,
    required final OnRightClickCallBack onRightClick,
    required final OnResizingCallback onResizingCallback,
  }) {
    _onNodeAdded = onNodeAdded;
    _onNodeChanged = onNodeChanged;
    _onNodeFocused = onNodeFocused;
    _onNodeHovered = onNodeHovered;
    _onRightClick = onRightClick;
    _onResizingCallback = onResizingCallback;
  }

  void onNodeAdded(
    CNode node,
    CNode parent,
    Offset offset,
  ) =>
      _onNodeAdded!.call(node, parent, offset);

  void onNodeChanged(
    CNode node,
    UITransformResult rect,
    DeviceType deviceType,
  ) =>
      _onNodeChanged!.call(node, rect, deviceType);

  void onNodeFocused(
    CNode node,
    DeviceType device,
  ) =>
      _onNodeFocused!.call(node, device);

  void onNodeHovered(
    CNode node,
    DeviceType device,
  ) =>
      _onNodeHovered!.call(node, device);

  void onRightClick(
    PointerDownEvent e,
    CNode node,
  ) =>
      _onRightClick!.call(e, node);

  void onResizingCallback(bool value) => _onResizingCallback!.call(value);
}
