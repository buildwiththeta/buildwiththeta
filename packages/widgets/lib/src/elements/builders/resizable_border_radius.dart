import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class ResizableBorderRadius extends StatefulWidget {
  const ResizableBorderRadius({
    super.key,
    required this.node,
    required this.child,
    required this.onPanStart,
    required this.onPanEnd,
  });

  final CNode node;
  final Widget child;
  final Function() onPanStart;
  final Function() onPanEnd;

  @override
  _ResizableBorderRadiusState createState() => _ResizableBorderRadiusState();
}

class _ResizableBorderRadiusState extends State<ResizableBorderRadius> {
  bool isAvailable = false;
  bool isVisible = false;
  bool isDragging = false;
  bool isLabelVisible = false;
  double borderRadius = 20.0;

  @override
  void initState() {
    super.initState();
    if ([NType.container, NType.image].contains(widget.node.type)) {
      isAvailable = true;
      final nodeBorderRadius =
          widget.node.getAttributes[DBKeys.borderRadius] as FBorderRadius?;
      if (nodeBorderRadius == null) {
        isAvailable = false;
        return;
      }
      final state = context.read<TreeState>();
      borderRadius = nodeBorderRadius
          .get(context, forPlay: state.forPlay, deviceType: state.deviceType)
          .topLeft
          .x;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isAvailable) {
      return widget.child;
    }
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isVisible = true;
        });
      },
      onExit: (_) {
        setState(() {
          isVisible = false;
        });
        if (!isDragging) {
          widget.onPanEnd();
        }
      },
      child: GestureDetector(
        onPanStart: (e) {
          widget.onPanStart();
          setState(() {
            isDragging = true;
            isLabelVisible = true;
          });
        },
        onPanUpdate: (details) {
          setState(() {
            borderRadius += details.delta.dx;
            if (borderRadius < 0) borderRadius = 0;
          });
          final fBordeRadius =
              widget.node.getAttributes[DBKeys.borderRadius] as FBorderRadius?;
          if (fBordeRadius == null) {
            return;
          }
          final state = context.read<TreeState>();
          final newFBorderRadius = fBordeRadius.copyWith(
            radiusMobile: state.deviceType == DeviceType.phone
                ? [borderRadius, borderRadius, borderRadius, borderRadius]
                : null,
            radiusTablet: state.deviceType == DeviceType.tablet
                ? [borderRadius, borderRadius, borderRadius, borderRadius]
                : null,
            radiusDesktop: state.deviceType == DeviceType.laptop ||
                    state.deviceType == DeviceType.desktop
                ? [borderRadius, borderRadius, borderRadius, borderRadius]
                : null,
          );
          final oldNode = widget.node.copyWith();
          widget.node.setAttribute(DBKeys.borderRadius, newFBorderRadius);
          context
              .read<TreeGlobalState>()
              .onNodeAttributesUpdated(widget.node, oldNode);
        },
        onPanEnd: (e) {
          widget.onPanEnd();
          setState(() {
            isLabelVisible = false;
          });
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(child: widget.child),
            if (isLabelVisible)
              Positioned(
                top: -25,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Palette.purple,
                    ),
                    child: TDetailLabel('Radius ${borderRadius.floor()}',
                        color: Colors.white),
                  ),
                ),
              ),
            // Top-left corner
            if (isVisible) ...[
              Positioned(
                top: 12,
                left: 12,
                child: iconIndicator(true),
              ),
              // Top-right corner
              Positioned(
                top: 12,
                right: 12,
                child: iconIndicator(false),
              ),
              // Bottom-left corner
              Positioned(
                bottom: 12,
                left: 12,
                child: iconIndicator(false),
              ),
              // Bottom-right corner
              Positioned(
                bottom: 12,
                right: 12,
                child: iconIndicator(true),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget iconIndicator(bool isLeft) {
    return MouseRegion(
      cursor: isLeft
          ? SystemMouseCursors.resizeUpLeftDownRight
          : SystemMouseCursors.resizeUpRightDownLeft,
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Palette.purple),
          color: Colors.white,
        ),
      ),
    );
  }
}
