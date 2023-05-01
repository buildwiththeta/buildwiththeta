import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  const HoverWidget({super.key, required this.hoverChild, required this.child});

  final Widget hoverChild;
  final Widget child;

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
      },
      onExit: (final event) {
        setState(() {
          isHover = false;
        });
      },
      child: isHover ? widget.hoverChild : widget.child,
    );
  }
}
