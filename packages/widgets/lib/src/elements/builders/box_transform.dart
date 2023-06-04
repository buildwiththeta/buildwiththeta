import 'dart:async';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/node_builder.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class BoxTransformBuilder extends StatefulWidget {
  const BoxTransformBuilder({super.key, required this.node});

  final CNode node;

  @override
  State<BoxTransformBuilder> createState() => _BoxTransformBuilderState();
}

class _BoxTransformBuilderState extends State<BoxTransformBuilder> {
  late Rect rect;

  bool isStartOrStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.start || v == ResponsiveAlignment.stretch;
  bool isEndOrStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.end || v == ResponsiveAlignment.stretch;
  bool isStretchAlign(ResponsiveAlignment v) =>
      v == ResponsiveAlignment.stretch;

  DeviceInfo getDeviceInfo(TreeState state) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= Devices.ios.iPhone13ProMax.screenSize.width) {
      return Devices.ios.iPhone13;
    } else if (screenSize.width <=
        Devices.ios.iPadPro11Inches.screenSize.width) {
      return Devices.ios.iPadPro11Inches;
    } else {
      return Devices.macOS.macBookPro;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final device = getDeviceInfo(state);
    rect = widget.node.rect(device.identifier.type);
    if (state.focusedNode?.id != widget.node.id || state.forPlay) {
      final deviceForChecks = widget.node.doesRectExist(device.identifier.type)
          ? device
          : Devices.ios.iPhone13;
      final top = isStartOrStretchAlign(widget.node.verticalAlignment)
          ? rect.top
          : null;
      final bottom = isEndOrStretchAlign(widget.node.verticalAlignment)
          ? deviceForChecks.screenSize.height - rect.bottom
          : null;
      final left = isStartOrStretchAlign(widget.node.horizontalAlignment)
          ? rect.left
          : null;
      final right = isEndOrStretchAlign(widget.node.horizontalAlignment)
          ? deviceForChecks.screenSize.width - rect.right
          : null;
      final width =
          isStretchAlign(widget.node.horizontalAlignment) ? null : rect.width;
      final height =
          isStretchAlign(widget.node.verticalAlignment) ? null : rect.height;

      return Positioned(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        width: width,
        height: height,
        child: NodeBuilder(
          onTap: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          onPanStart: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          node: widget.node,
          child: widget.node.toWidget(
            context: context,
            state: WidgetState(node: widget.node, loop: 0),
          ),
        ),
      );
    }
    return _BoxTransformBuilder(node: widget.node);
  }
}

class _BoxTransformBuilder extends StatefulWidget {
  const _BoxTransformBuilder({required this.node});

  final CNode node;

  @override
  State<_BoxTransformBuilder> createState() => __BoxTransformBuilderState();
}

class __BoxTransformBuilderState extends State<_BoxTransformBuilder> {
  final controller = TransformableBoxController();
  final _debouncer = Debouncer(milliseconds: 10);

  final int differece = 8;
  late Size canvasSize;

  late List<Offset> anchorPoints;
  late List<num> anchorAxisHorizontal;
  late List<num> anchorAxisVertical;

  @override
  void initState() {
    super.initState();
    final TreeState state = context.read<TreeState>();
    final device = state.deviceInfo;
    controller
      ..setRect(widget.node.rect(state.deviceInfo.identifier.type))
      ..setClampingRect(Rect.fromLTWH(
        0,
        0,
        device.screenSize.width,
        device.screenSize.height,
      ));

    canvasSize = state.deviceInfo.screenSize;
    anchorPoints = [
      canvasSize.center(Offset.zero),
    ];
    anchorAxisHorizontal = [
      canvasSize.height / 2, // Center horizontal axis
      ...state.yLines, // X axis
    ];
    anchorAxisVertical = [
      canvasSize.width / 2, // Center vertical axis
      ...state.xLines, // Y axis
    ];
  }

  @override
  void didUpdateWidget(_BoxTransformBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    final TreeState state = context.read<TreeState>();
    final device = state.deviceInfo;
    controller
      ..setRect(widget.node.rect(state.deviceInfo.identifier.type))
      ..setClampingRect(Rect.fromLTWH(
        0,
        0,
        device.screenSize.width,
        device.screenSize.height,
      ));

    canvasSize = state.deviceInfo.screenSize;
    anchorPoints = [
      canvasSize.center(Offset.zero),
    ];
    anchorAxisHorizontal = [
      canvasSize.height / 2, // Center horizontal axis
      ...state.yLines, // X axis
    ];
    anchorAxisVertical = [
      canvasSize.width / 2, // Center vertical axis
      ...state.xLines, // Y axis
    ];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  ({double? newTop, double? newLeft}) getCoordinates(
      TransformResult<Rect, Offset, Size> rect) {
    double? newTop;
    double? newLeft;

    for (final axis in anchorAxisHorizontal) {
      if ((rect.rect.top - axis).abs() < differece) {
        newTop = axis.toDouble();
      } else if ((rect.rect.bottom - axis).abs() < differece) {
        newTop = axis - rect.rect.height;
      }
    }

    for (final axis in anchorAxisVertical) {
      if ((rect.rect.left - axis).abs() < differece) {
        newLeft = axis.toDouble();
      } else if ((rect.rect.right - axis).abs() < differece) {
        newLeft = axis - rect.rect.width;
      }
    }

    return (newLeft: newLeft, newTop: newTop);
  }

  void onChanged(TransformResult<Rect, Offset, Size> rect) {
    print("kasapiniz onChanged ${rect.rect.toString()}}");

    final TreeState state = context.read<TreeState>();
    final Size rectSize = rect.size;
    final Offset rectCenterPosition = Offset(
      rect.rect.left + rectSize.width / 2,
      rect.rect.top + rectSize.height / 2,
    );

    for (final point in anchorPoints) {
      final double distance = (point - rectCenterPosition).distance;
      if (distance < differece) {
        final centeredRect = Rect.fromCenter(
          center: point,
          width: rect.rect.width,
          height: rect.rect.height,
        );
        controller
          ..setRect(centeredRect)
          ..recalculatePosition();
        adjustAndNotify(centeredRect, rect, state);
        return;
      }
    }

    double? newTop;
    double? newLeft;
    final res = getCoordinates(rect);
    newTop = res.newTop;
    newLeft = res.newLeft;

    if (newTop != null || newLeft != null) {
      final adjustedRect = Rect.fromLTWH(
        newLeft ?? rect.rect.left,
        newTop ?? rect.rect.top,
        rect.rect.width,
        rect.rect.height,
      );
      adjustAndNotify(adjustedRect, rect, state);
    } else {
      setStateAndNotify(rect, state);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TransformableBox(
      controller: controller,
      onChanged: (rect) => _debouncer.run(() => onChanged(rect)),
      contentBuilder: (_, rect, flip) => IgnorePointer(
        child: NodeBuilder(
          onTap: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          onPanStart: () {
            TreeGlobalState.onNodeFocused(widget.node);
            setState(() {});
          },
          node: widget.node,
          child: widget.node.toWidget(
            context: context,
            state: WidgetState(node: widget.node, loop: 0),
          ),
        ),
      ),
    );
  }

  /// This method is used to notify the tree that the node has changed
  /// but you also want to force the Rect to be to a new position.
  void adjustAndNotify(
    Rect adjustedRect,
    TransformResult<Rect, Offset, Size> oldRect,
    TreeState state,
  ) {
    controller
      ..setRect(adjustedRect)
      ..recalculatePosition();
    TreeGlobalState.onNodeChanged(
      widget.node,
      TransformResult(
        rect: adjustedRect,
        oldRect: oldRect.rect,
        delta: oldRect.delta,
        flip: oldRect.flip,
        resizeMode: oldRect.resizeMode,
        rawSize: oldRect.rawSize,
        minWidthReached: oldRect.minWidthReached,
        maxWidthReached: oldRect.maxWidthReached,
        minHeightReached: oldRect.minHeightReached,
        maxHeightReached: oldRect.maxHeightReached,
      ),
      state.deviceInfo.identifier.type,
    );
  }

  /// This method is used to notify the tree that the node has changed
  /// without changing its position.
  void setStateAndNotify(
    TransformResult<Rect, Offset, Size> rect,
    TreeState state,
  ) {
    TreeGlobalState.onNodeChanged(
      widget.node,
      rect,
      state.deviceInfo.identifier.type,
    );
    setState(() {});
  }
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
