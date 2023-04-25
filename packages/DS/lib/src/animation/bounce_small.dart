// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class BounceForSmallWidgets extends StatefulWidget {
  const BounceForSmallWidgets({
    required this.child,
    final Key? key,
    this.onTap,
    this.message,
  }) : super(key: key);

  final Widget child;
  final Function()? onTap;
  final String? message;

  @override
  _BouncingState createState() => _BouncingState();
}

class _BouncingState extends State<BounceForSmallWidgets>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
      upperBound: 0.04,
    );
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTap: () {
        widget.onTap?.call();
      },
      child: Listener(
        onPointerDown: (final PointerDownEvent event) {
          _controller.forward();
        },
        onPointerUp: (final PointerUpEvent event) {
          _controller.reverse();
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Tooltip(
            message: widget.message ?? '',
            child: Transform.scale(
              scale: _scale,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
