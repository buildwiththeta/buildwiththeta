import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:theta_models/theta_models.dart';

typedef OnNodeChangedCallBack = void Function(
  CNode node,
  UITransformResult rect,
  DeviceType deviceType,
)?;

typedef OnNodeAttributesUpdatedChangedCallBack = void Function(
  CNode node,
  CNode oldNode,
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

typedef OnComponentPageChange = void Function(
  CNode node,
)?;

typedef OnResizingCallback = void Function(bool value)?;

OnNodeAddedCallBack _onNodeAdded;
OnNodeChangedCallBack _onNodeChanged;
OnNodeFocusedCallBack _onNodeFocused;
OnNodeHoveredCallBack _onNodeHovered;
OnRightClickCallBack _onRightClick;
OnComponentPageChange _onComponentPageChange;
OnResizingCallback _onResizingCallback;
OnNodeAttributesUpdatedChangedCallBack _onNodeAttributesUpdated;

class TreeGlobalState extends ChangeNotifier {
  TreeGlobalState({
    required final OnNodeAddedCallBack onNodeAdded,
    required final OnNodeChangedCallBack onNodeChanged,
    required final OnNodeFocusedCallBack onNodeFocused,
    required final OnNodeHoveredCallBack onNodeHovered,
    required final OnRightClickCallBack onRightClick,
    required final OnResizingCallback onResizingCallback,
    final OnComponentPageChange onComponentPageChange,
    final OnNodeAttributesUpdatedChangedCallBack? onNodeAttributesUpdated,
  }) {
    _onNodeAdded = onNodeAdded;
    _onNodeChanged = onNodeChanged;
    _onNodeFocused = onNodeFocused;
    _onNodeHovered = onNodeHovered;
    _onRightClick = onRightClick;
    _onComponentPageChange = onComponentPageChange;
    _onResizingCallback = onResizingCallback;
    _onNodeAttributesUpdated = onNodeAttributesUpdated;
  }

  void onNodeAdded(
    CNode node,
    CNode parent,
    Offset offset,
  ) =>
      _onNodeAdded?.call(node, parent, offset);

  void onNodeChanged(
    CNode node,
    UITransformResult rect,
    DeviceType deviceType,
  ) =>
      _onNodeChanged?.call(node, rect, deviceType);

  void onNodeAttributesUpdated(
    CNode node,
    CNode oldNode,
  ) =>
      _onNodeAttributesUpdated?.call(node, oldNode);

  void onNodeFocused(
    CNode node,
    DeviceType device,
  ) =>
      _onNodeFocused?.call(node, device);

  void onNodeHovered(
    CNode node,
    DeviceType device,
  ) =>
      _onNodeHovered?.call(node, device);

  void onRightClick(
    PointerDownEvent e,
    CNode node,
  ) =>
      _onRightClick?.call(e, node);

  void onComponentPageChange(
    CNode node,
  ) =>
      _onComponentPageChange?.call(
        node,
      );

  void onResizingCallback(bool value) => _onResizingCallback!.call(value);
}
