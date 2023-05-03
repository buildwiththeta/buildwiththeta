import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  const HoverWidget({
    super.key,
    required this.hoverChild,
    required this.child,
    this.onEnter,
    this.onExit,
  });

  final Widget hoverChild;
  final Widget child;
  final Function()? onEnter;
  final Function()? onExit;

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (final event) {
        setState(() {
          isHover = true;
        });
        if (widget.onEnter != null) widget.onEnter!.call();
      },
      onExit: (final event) {
        setState(() {
          isHover = false;
        });
        if (widget.onExit != null) widget.onExit!.call();
      },
      child: isHover ? widget.hoverChild : widget.child,
    );
  }
}
