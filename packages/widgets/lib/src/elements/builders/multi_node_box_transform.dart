import 'dart:async';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:light_logger/light_logger.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/debouncer.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class MultiNodeBoxTransformBuilder extends StatefulWidget {
  const MultiNodeBoxTransformBuilder({
    super.key,
    required this.nodes,
    required this.screenSize,
    this.inStack = false,
  });

  final List<CNode> nodes;
  final bool inStack;
  final Size screenSize;

  @override
  State<MultiNodeBoxTransformBuilder> createState() =>
      _MultiNodeBoxTransformBuilderState();
}

class _MultiNodeBoxTransformBuilderState
    extends State<MultiNodeBoxTransformBuilder> {
  late Rect rect;

  @override
  void initState() {
    super.initState();
    final TreeState state = context.read<TreeState>();
    double? top, left, height, width;
    for (final node in widget.nodes) {
      final rect = node.rect(state.deviceType);
      if (top == null || rect.top < top) {
        top = rect.top;
      }
      if (left == null || rect.left < left) {
        left = rect.left;
      }
      final realBottom = widget.screenSize.height - rect.height;
      if (height == null || widget.screenSize.height - realBottom > height) {
        height = widget.screenSize.height - realBottom;
      }
      final realRight = widget.screenSize.width - rect.width;
      if (width == null || widget.screenSize.width - realRight > width) {
        width = widget.screenSize.width - realRight;
      }
    }
    rect = Rect.fromLTWH(left!, top!, width!, height!);
  }

  @override
  Widget build(BuildContext context) {
    return _BoxTransformBuilder(
      rect: rect,
      screenSize: widget.screenSize,
      onRectChanged: (transform, deviceType) {
        final state = context.read<TreeState>();
        final oldCenter = rect.center;
        final newCenter = transform.rect.center;

        for (final node in widget.nodes) {
          final nodeRect = node.rect(state.deviceType);

          // Calculate the distance from the node's center to the old center of the general rect
          final distanceFromOldCenter = nodeRect.center - oldCenter;

          // Find the new center for the node by adding the distance to the new center of the general rect
          final newNodeCenter = newCenter + distanceFromOldCenter;

          // Construct a new rect for the node with the same width and height, but new center
          final newNodeRect = Rect.fromCenter(
              center: newNodeCenter,
              width: nodeRect.width,
              height: nodeRect.height);

          node.setRect(newNodeRect, state.deviceType);
          context.read<TreeGlobalState>().onNodeGeneralUpdated(node);
        }

        rect = transform.rect;
      },
    );
  }
}

class _BoxTransformBuilder extends StatefulWidget {
  const _BoxTransformBuilder({
    required this.rect,
    required this.screenSize,
    required this.onRectChanged,
  });

  final Rect rect;
  final Size screenSize;
  final Function(
    TransformResult<Rect, Offset, Size> rect,
    DeviceType deviceType,
  ) onRectChanged;

  @override
  State<_BoxTransformBuilder> createState() => __BoxTransformBuilderState();
}

class __BoxTransformBuilderState extends State<_BoxTransformBuilder> {
  final controller = TransformableBoxController();
  final _debouncer = Debouncer(milliseconds: 1);
  Timer? timer;

  final int difference = 8;
  late Size canvasSize;
  bool showLeft = false;

  late List<Offset> anchorPoints;
  late List<num> anchorAxisHorizontal;
  late List<num> anchorAxisVertical;

  @override
  void initState() {
    super.initState();
    final TreeState state = context.read<TreeState>();

    controller
      ..setRect(widget.rect)
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
  void didUpdateWidget(_BoxTransformBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    final TreeState state = context.read<TreeState>();
    controller
      ..setRect(widget.rect)
      ..setClampingRect(Rect.fromLTWH(
        0,
        0,
        widget.screenSize.width,
        widget.screenSize.height,
      ))
      ..setResizable(false);

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

  void offsetToResize({bool now = false}) {
    try {
      context.read<TreeGlobalState>().onResizingCallback(true);
      timer?.cancel();
      if (now) {
        context.read<TreeGlobalState>().onResizingCallback(false);
        return;
      }
      timer = Timer(const Duration(milliseconds: 300),
          () => context.read<TreeGlobalState>().onResizingCallback(false));
    } catch (e) {
      Logger.printError(e.toString());
    }
  }

  Decoration getCornerHandleDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Theme.of(context).colorScheme.primary,
        width: 2,
      ),
    );
  }

  Decoration getSideHandleDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Palette.purple,
        width: 2,
      ),
    );
  }

  Widget _defaultCornerHandleBuilder(
    BuildContext context,
    HandlePosition handle,
  ) =>
      MouseRegion(
        onEnter: (e) =>
            context.read<TreeGlobalState>().onResizingCallback(true),
        onExit: (e) => offsetToResize(now: false),
        child: DefaultCornerHandle(
          decoration: getCornerHandleDecoration(),
          handle: handle,
        ),
      );

  /// A default implementation of the side [HandleBuilder] callback.
  Widget _defaultSideHandleBuilder(
    BuildContext context,
    HandlePosition handle,
  ) =>
      MouseRegion(
        onEnter: (e) =>
            context.read<TreeGlobalState>().onResizingCallback(false),
        onExit: (e) => offsetToResize(now: false),
        child: const SizedBox.shrink(),
      );

  @override
  Widget build(BuildContext context) {
    return TransformableBox(
      controller: controller,
      onChanged: (rect) => _debouncer.run(() => onChanged(rect)),
      cornerHandleBuilder: _defaultCornerHandleBuilder,
      sideHandleBuilder: _defaultSideHandleBuilder,
      onResized: (r) => offsetToResize(),
      onMoved: (_) => offsetToResize(),
      contentBuilder: (_, rect, flip) =>
          ColoredBox(color: Colors.red.withOpacity(0.4)),
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
    widget.onRectChanged(
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
    widget.onRectChanged(
      rect,
      state.deviceInfo.identifier.type,
    );
    setState(() {});
  }
}
