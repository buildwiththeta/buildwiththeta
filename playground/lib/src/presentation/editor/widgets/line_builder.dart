import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class LineBuilder {
  ({List<int> xLines, List<int> yLines}) calculateLines(
      Nodes nodes, CNode focusedNode, DeviceType deviceType) {
    final scaffold =
        nodes.firstWhere((element) => element.type == NType.scaffold);
    if (scaffold.id != focusedNode.parentID) return (xLines: [], yLines: []);
    List<int> xLines = [];
    List<int> yLines = [];
    final focusedNodeRect = focusedNode.rect(deviceType);
    for (final node
        in nodes.where((element) => element.parentID == focusedNode.parentID)) {
      if (node.id != focusedNode.id && node.doesRectExist(deviceType)) {
        final rect = node.rect(deviceType);
        if (focusedNodeRect.top.toInt() == rect.top.toInt() ||
            focusedNodeRect.bottom.toInt() == rect.top.toInt()) {
          yLines.add(rect.top.toInt());
        }
        if (focusedNodeRect.top.toInt() == rect.bottom.toInt() ||
            focusedNodeRect.bottom.toInt() == rect.bottom.toInt()) {
          yLines.add(rect.bottom.toInt());
        }
        if (focusedNodeRect.left.toInt() == rect.left.toInt() ||
            focusedNodeRect.right.toInt() == rect.left.toInt()) {
          xLines.add(rect.left.toInt());
        }
        if (focusedNodeRect.left.toInt() == rect.right.toInt() ||
            focusedNodeRect.right.toInt() == rect.right.toInt()) {
          xLines.add(rect.right.toInt());
        }
      }
    }
    return (xLines: xLines, yLines: yLines);
  }

  List<Widget> buildLines(
      Nodes nodes, CNode focusedNode, DeviceType deviceType, Size screenSize) {
    final scaffold =
        nodes.firstWhere((element) => element.type == NType.scaffold);
    if (scaffold.id != focusedNode.parentID) return [];

    List<Widget> lines = [];
    final focusedNodeRect = focusedNode.rect(deviceType);

    final halfWidth = screenSize.width / 2;
    final halfHeight = screenSize.height / 2;
    final Offset rectCenterPosition = Offset(
      focusedNodeRect.left + focusedNodeRect.width / 2,
      focusedNodeRect.top + focusedNodeRect.height / 2,
    );
    final double distance =
        (screenSize.center(Offset.zero) - rectCenterPosition).distance;

    if (distance == 0) {
      lines.add(
        Positioned(
          left: 0,
          right: 0,
          top: halfHeight,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            height: 1,
          ),
        ),
      );
      lines.add(
        Positioned(
          top: 0,
          bottom: 0,
          left: halfWidth,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            width: 1,
          ),
        ),
      );
    }

    if (focusedNodeRect.top.toInt() == halfHeight.toInt() ||
        focusedNodeRect.bottom.toInt() == halfHeight.toInt()) {
      lines.add(
        Positioned(
          left: 0,
          right: 0,
          top: halfHeight,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            height: 1,
          ),
        ),
      );
    }
    if (focusedNodeRect.left.toInt() == halfWidth.toInt() ||
        focusedNodeRect.right.toInt() == halfWidth.toInt()) {
      lines.add(
        Positioned(
          top: 0,
          bottom: 0,
          left: halfWidth,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            width: 1,
          ),
        ),
      );
    }

    for (final node
        in nodes.where((element) => element.parentID == focusedNode.parentID)) {
      if (node.id != focusedNode.id &&
          node.type != NType.scaffold &&
          node.doesRectExist(deviceType)) {
        final rect = node.rect(deviceType);

        if (focusedNodeRect.top.toInt() == rect.top.toInt() ||
            focusedNodeRect.bottom.toInt() == rect.top.toInt()) {
          lines.add(
            Positioned(
              left: 0,
              right: 0,
              top: rect.top,
              child: Container(
                color: Colors.red.withOpacity(0.5),
                height: 1,
              ),
            ),
          );
          lines.add(drawWidgetCorners(rect));
        }
        if (focusedNodeRect.top.toInt() == rect.bottom.toInt() ||
            focusedNodeRect.bottom.toInt() == rect.bottom.toInt()) {
          lines.add(
            Positioned(
              left: 0,
              right: 0,
              top: rect.bottom,
              child: Container(
                color: Colors.red.withOpacity(0.5),
                height: 1,
              ),
            ),
          );
          lines.add(drawWidgetCorners(rect));
        }
        if (focusedNodeRect.left.toInt() == rect.left.toInt() ||
            focusedNodeRect.right.toInt() == rect.left.toInt()) {
          lines.add(
            Positioned(
              top: 0,
              bottom: 0,
              left: rect.left,
              child: Container(
                width: 1,
                color: Colors.red.withOpacity(0.5),
              ),
            ),
          );
          lines.add(drawWidgetCorners(rect));
        }
        if (focusedNodeRect.left.toInt() == rect.right.toInt() ||
            focusedNodeRect.right.toInt() == rect.right.toInt()) {
          lines.add(
            Positioned(
              top: 0,
              bottom: 0,
              left: rect.right,
              child: Container(
                width: 1,
                color: Colors.red.withOpacity(0.5),
              ),
            ),
          );
          lines.add(drawWidgetCorners(rect));
        }
      }
    }
    return lines;
  }

  Widget drawWidgetCorners(Rect rect) => Positioned(
        left: rect.left,
        top: rect.top,
        width: rect.width,
        height: rect.height,
        child: IgnorePointer(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 1,
              ),
            ),
          ),
        ),
      );
}
