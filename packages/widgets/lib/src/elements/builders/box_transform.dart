import 'dart:async';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:light_logger/light_logger.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/debouncer.dart';
import 'package:theta_open_widgets/src/elements/builders/resizable_border_radius.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class CoordinatesEntity {
  const CoordinatesEntity({
    required this.newTop,
    required this.newLeft,
  });

  final double? newTop;
  final double? newLeft;
}

class BoxTransformBuilder extends StatefulWidget {
  const BoxTransformBuilder({
    super.key,
    required this.node,
    required this.screenSize,
    this.inStack = false,
  });

  final CNode node;
  final bool inStack;
  final Size screenSize;

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

  @override
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final device = getDeviceInfo(state);
    rect = widget.node.rect(device.identifier.type);

    final deviceForChecks = widget.node.doesRectExist(device.identifier.type)
        ? device
        : Devices.ios.iPhone13;
    final top =
        isStartOrStretchAlign(widget.node.verticalAlignment) ? rect.top : null;
    final bottom = isEndOrStretchAlign(widget.node.verticalAlignment)
        ? (deviceForChecks.screenSize.height - rect.bottom < 0)
            ? 0.0
            : deviceForChecks.screenSize.height - rect.bottom
        : null;
    final left = isStartOrStretchAlign(widget.node.horizontalAlignment)
        ? rect.left
        : null;
    final right = isEndOrStretchAlign(widget.node.horizontalAlignment)
        ? deviceForChecks.screenSize.width - rect.right < 0
            ? 0.0
            : deviceForChecks.screenSize.width - rect.right
        : null;
    final width =
        isStretchAlign(widget.node.horizontalAlignment) ? null : rect.width;
    final height =
        isStretchAlign(widget.node.verticalAlignment) ? null : rect.height;

    if (state.focusedNode?.id != widget.node.id ||
        state.forPlay ||
        widget.node.isLocked == true ||
        !state.isDeviceCurrentlyFocused) {
      if (state.fit == ComponentFit.autoLayout) {
        return Padding(
          padding: EdgeInsets.only(
              top:
                  !isStretchAlign(widget.node.verticalAlignment) ? 0 : top ?? 0,
              bottom: !isStretchAlign(widget.node.verticalAlignment)
                  ? 0
                  : (bottom ?? 0) < 0
                      ? 0
                      : bottom ?? 0,
              left: !isStretchAlign(widget.node.horizontalAlignment)
                  ? 0
                  : left ?? 0,
              right: !isStretchAlign(widget.node.horizontalAlignment)
                  ? 0
                  : right ?? 0),
          child: SizedBox(
            width: width ?? double.infinity,
            height: height ?? double.infinity,
            child: ChildBuilder(
              context: context,
              state: WidgetState(node: widget.node, loop: 0),
              child: widget.node,
            ).build(),
          ),
        );
      } else {
        final node = ChildBuilder(
          context: context,
          state: WidgetState(node: widget.node, loop: 0),
          child: widget.node,
        ).build();
        return Positioned(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          width: width,
          height: height,
          child: node ?? const SizedBox.shrink(),
        );
      }
    }
    return _BoxTransformBuilder(
      node: widget.node,
      screenSize: device.screenSize,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      width: width,
      height: height,
    );
  }
}

class _BoxTransformBuilder extends StatefulWidget {
  const _BoxTransformBuilder({
    required this.node,
    required this.top,
    required this.screenSize,
    this.left,
    this.right,
    this.bottom,
    this.width,
    this.height,
  });

  final CNode node;
  final double? left, top, right, bottom, width, height;
  final Size screenSize;

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

  Rect createModifiedRect(Rect rect) {
    // Start with the original rect values
    double newLeft = rect.left;
    double newTop = rect.top;
    double newRight = rect.right;
    double newBottom = rect.bottom;

    // Stretched horizontally
    if (widget.left != null && widget.right != null) {
      newLeft = widget.left!;
      newRight = widget.screenSize.width - widget.right!;
    } else if (widget.left != null && widget.width != null) {
      newLeft = widget.left!;
      newRight = widget.left! + widget.width!;
    } else if (widget.right != null && widget.width != null) {
      newLeft = widget.screenSize.width - (widget.right! + widget.width!);
      newRight = widget.screenSize.width - widget.right!;
    }

    // Stretched vertically
    if (widget.top != null && widget.bottom != null) {
      newTop = widget.top!;
      newBottom = widget.screenSize.height - widget.bottom!;
    } else if (widget.top != null && widget.height != null) {
      newTop = widget.top!;
      newBottom = widget.top! + widget.height!;
    } else if (widget.bottom != null && widget.height != null) {
      newTop = widget.screenSize.height - (widget.bottom! + widget.height!);
      newBottom = widget.screenSize.height - widget.bottom!;
    }

    return Rect.fromLTRB(newLeft, newTop, newRight, newBottom);
  }

  @override
  void initState() {
    super.initState();
    final TreeState state = context.read<TreeState>();

    controller
      ..setRect(createModifiedRect(
          widget.node.rect(state.deviceInfo.identifier.type)))
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
      ..setRect(createModifiedRect(
          widget.node.rect(state.deviceInfo.identifier.type)))
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
    final child = ChildBuilder(
      context: context,
      state: WidgetState(node: widget.node, loop: 0),
      child: widget.node,
    ).build();
    if (child == null) {
      return const SizedBox.expand();
    }
    return TransformableBox(
      controller: controller,
      onChanged: (rect) => _debouncer.run(() => onChanged(rect)),
      cornerHandleBuilder: _defaultCornerHandleBuilder,
      sideHandleBuilder: _defaultSideHandleBuilder,
      onResized: (r) => offsetToResize(),
      onMoved: (_) => offsetToResize(),
      contentBuilder: (_, rect, flip) => ResizableBorderRadius(
        node: widget.node,
        onPanStart: () {
          controller.resizable = false;
          controller.movable = false;
        },
        onPanEnd: () {
          controller.resizable = true;
          controller.movable = true;
        },
        child: IgnorePointer(
          child: child,
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
    context.read<TreeGlobalState>().onNodeChanged(
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
    context.read<TreeGlobalState>().onNodeChanged(
          widget.node,
          rect,
          state.deviceInfo.identifier.type,
        );
    setState(() {});
  }
}
