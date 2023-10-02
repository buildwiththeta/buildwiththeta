import 'dart:async';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// This widget is used to transform multiple nodes at once.
/// It is used in the [OpenWScaffold] widget.
class MultiBoxTransformBuilder extends StatefulWidget {
  const MultiBoxTransformBuilder({
    super.key,
    required this.nodes,
    required this.screenSize,
  });
  final List<CNode> nodes;
  final Size screenSize;
  @override
  State<MultiBoxTransformBuilder> createState() =>
      _MultiBoxTransformBuilderState();
}

class _MultiBoxTransformBuilderState extends State<MultiBoxTransformBuilder> {
  final controller = TransformableBoxController();
  late Rect initialRect;
  Timer? timer;
  final _debouncer = Debouncer(milliseconds: 1);

  Widget _defaultCornerHandleBuilder(
    BuildContext context,
    HandlePosition handle,
  ) =>
      const SizedBox.shrink();

  /// A default implementation of the side [HandleBuilder] callback.
  Widget _defaultSideHandleBuilder(
    BuildContext context,
    HandlePosition handle,
  ) =>
      const SizedBox.shrink();

  final int difference = 8;
  late Size canvasSize;

  late List<Offset> anchorPoints;
  late List<num> anchorAxisHorizontal;
  late List<num> anchorAxisVertical;
  DeviceInfo getDeviceInfo(TreeState state) {
    if (!state.forPlay) {
      return state.deviceInfo.copyWith(screenSize: widget.screenSize);
    }
    if (widget.screenSize.width <= 400) {
      return Devices.ios.iPhone13.copyWith(screenSize: widget.screenSize);
    } else if (widget.screenSize.width <=
        Devices.ios.iPadPro11Inches.screenSize.width) {
      return Devices.ios.iPadPro11Inches
          .copyWith(screenSize: widget.screenSize);
    } else if (widget.screenSize.width <=
        Devices.ios.iPadPro11Inches.screenSize.width) {
      return Devices.ios.iPadPro11Inches
          .copyWith(screenSize: widget.screenSize);
    } else {
      return DeviceInfo.genericDesktopMonitor(
        platform: TargetPlatform.macOS,
        id: 'theta-desktop',
        name: 'Generic Desktop',
        screenSize: widget.screenSize,
        windowPosition: Rect.fromCenter(
          center: const Offset(
            1920 * 0.5,
            1080 * 0.5,
          ),
          width: widget.screenSize.width,
          height: widget.screenSize.height,
        ),
      );
    }
  }

  Rect createModifiedRect(List<CNode> multiNodes) {
    double left = double.infinity;
    double top = double.infinity;
    double right = double.negativeInfinity;
    double bottom = double.negativeInfinity;
    final TreeState state = context.read<TreeState>();

    for (final node in multiNodes) {
      final device = getDeviceInfo(state);
      final rect = node.rect(device.identifier.type);
      if (rect.left < left) {
        left = rect.left;
      }
      if (rect.top < top) {
        top = rect.top;
      }
      if (rect.right > right) {
        right = rect.right;
      }
      if (rect.bottom > bottom) {
        bottom = rect.bottom;
      }
    }

    if (left == double.infinity ||
        top == double.infinity ||
        right == double.negativeInfinity ||
        bottom == double.negativeInfinity) {
      return Rect.zero;
    }

    return Rect.fromLTRB(left, top, right, bottom);
  }

  @override
  void initState() {
    super.initState();
    final TreeState state = context.read<TreeState>();
    initialRect = createModifiedRect(widget.nodes);
    controller
      ..setRect(initialRect)
      ..setClampingRect(Rect.fromLTWH(
        0,
        0,
        widget.screenSize.width,
        widget.screenSize.height,
      ));

    canvasSize = widget.screenSize;
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
  void didUpdateWidget(MultiBoxTransformBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    final TreeState state = context.read<TreeState>();
    initialRect = createModifiedRect(widget.nodes);
    controller
      ..setRect(initialRect)
      ..setClampingRect(Rect.fromLTWH(
        0,
        0,
        widget.screenSize.width,
        widget.screenSize.height,
      ));

    canvasSize = widget.screenSize;
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

  CoordinatesEntity getCoordinates(TransformResult<Rect, Offset, Size> rect) {
    double? newTop;
    double? newLeft;

    for (final axis in anchorAxisHorizontal) {
      if ((rect.rect.top - axis).abs() < difference) {
        newTop = axis.toDouble();
        break;
      } else if ((rect.rect.bottom - axis).abs() < difference) {
        newTop = axis - rect.rect.height;
        break;
      }
    }

    for (final axis in anchorAxisVertical) {
      if ((rect.rect.left - axis).abs() < difference) {
        newLeft = axis.toDouble();
        break;
      } else if ((rect.rect.right - axis).abs() < difference) {
        newLeft = axis - rect.rect.width;
        break;
      }
    }

    return CoordinatesEntity(newLeft: newLeft, newTop: newTop);
  }

  void onChanged(TransformResult<Rect, Offset, Size> rect) {
    final TreeState state = context.read<TreeState>();
    final Size rectSize = rect.size;
    final Offset rectCenterPosition = Offset(
      rect.rect.left + rectSize.width / 2,
      rect.rect.top + rectSize.height / 2,
    );

    double minDistance = double.infinity;
    Offset nearestAnchor = Offset.zero;

    for (final point in anchorPoints) {
      final distance = (point - rectCenterPosition).distance;
      if (distance < minDistance) {
        minDistance = distance;
        nearestAnchor = point;
      }
    }

    if (minDistance < difference) {
      final centeredRect = Rect.fromCenter(
        center: nearestAnchor,
        width: rect.rect.width,
        height: rect.rect.height,
      );
      controller
        ..setRect(centeredRect)
        ..recalculatePosition();

      adjustAndNotify(centeredRect, rect, state);
    } else {
      final res = getCoordinates(rect);
      final newTop = res.newTop;
      final newLeft = res.newLeft;

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
  }

  void adjustAndNotify(
    Rect adjustedRect,
    TransformResult<Rect, Offset, Size> oldRect,
    TreeState state,
  ) {
    final deviceType = state.deviceInfo.identifier.type;
    final rectMapNode = <CNode, TransformResult<Rect, Offset, Size>>{};
    for (var node in widget.nodes) {
      final rect = node.rect(deviceType);
      final differenceTop = adjustedRect.top - initialRect.top;
      final differenceLeft = adjustedRect.left - initialRect.left;
      final oldDifferenceTop = oldRect.oldRect.top - initialRect.top;
      final oldDifferenceLeft = oldRect.oldRect.left - initialRect.left;

      rectMapNode[node] = TransformResult(
        rect: Rect.fromLTWH(
          rect.left + differenceLeft,
          rect.top + differenceTop,
          rect.width,
          rect.height,
        ),
        oldRect: Rect.fromLTWH(
          rect.left + oldDifferenceLeft,
          rect.top + oldDifferenceTop,
          rect.width,
          rect.height,
        ),

        /// this data is not real data for node
        delta: oldRect.delta,
        flip: oldRect.flip,
        resizeMode: oldRect.resizeMode,
        rawSize: oldRect.rawSize,
        minWidthReached: oldRect.minWidthReached,
        maxWidthReached: oldRect.maxWidthReached,
        minHeightReached: oldRect.minHeightReached,
        maxHeightReached: oldRect.maxHeightReached,
      );
    }
    context.read<TreeGlobalState>().onNodesChanged(rectMapNode, deviceType);
    setState(() {
      controller
        ..setRect(adjustedRect)
        ..recalculatePosition();
    });
  }

  void setStateAndNotify(
    TransformResult<Rect, Offset, Size> oldRect,
    TreeState state,
  ) {
    Map<CNode, TransformResult<Rect, Offset, Size>> rectMapNode = {};
    final deviceType = state.deviceInfo.identifier.type;
    for (var node in widget.nodes) {
      final rect = node.rect(state.deviceInfo.identifier.type);
      final differenceTop = oldRect.rect.top - initialRect.top;
      final differenceLeft = oldRect.rect.left - initialRect.left;
      final oldDifferenceTop = oldRect.oldRect.top - initialRect.top;
      final oldDifferenceLeft = oldRect.oldRect.left - initialRect.left;
      rectMapNode[node] = TransformResult(
        rect: Rect.fromLTWH(
          rect.left + differenceLeft,
          rect.top + differenceTop,
          rect.width,
          rect.height,
        ),
        oldRect: Rect.fromLTWH(
          rect.left + oldDifferenceLeft,
          rect.top + oldDifferenceTop,
          rect.width,
          rect.height,
        ),

        /// this data is not real data for node
        delta: oldRect.delta,
        flip: oldRect.flip,
        resizeMode: oldRect.resizeMode,
        rawSize: oldRect.rawSize,
        minWidthReached: oldRect.minWidthReached,
        maxWidthReached: oldRect.maxWidthReached,
        minHeightReached: oldRect.minHeightReached,
        maxHeightReached: oldRect.maxHeightReached,
      );
    }
    context.read<TreeGlobalState>().onNodesChanged(rectMapNode, deviceType);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final TreeState state = context.read<TreeState>();
    return TransformableBox(
      resizable: false,
      controller: controller,
      onChanged: (rect) => _debouncer.run(() => onChanged(rect)),
      cornerHandleBuilder: _defaultCornerHandleBuilder,
      sideHandleBuilder: _defaultSideHandleBuilder,
      contentBuilder: (_, rect, flip) => Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Palette.magenta),
        ),
        child: Stack(
          children: widget.nodes.map((final node) {
            return Positioned(
                top: node.rect(state.deviceInfo.identifier.type).top -
                    initialRect.top,
                left: node.rect(state.deviceInfo.identifier.type).left -
                    initialRect.left,
                width: node.rect(state.deviceInfo.identifier.type).width,
                height: node.rect(state.deviceInfo.identifier.type).height,
                child: ChildBuilder(
                  context: context,
                  state: WidgetState(node: node, loop: 0),
                  child: node,
                ).build()!);
          }).toList(),
        ),
      ),
    );
  }
}
