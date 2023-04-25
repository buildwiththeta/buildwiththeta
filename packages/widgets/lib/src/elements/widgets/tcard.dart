// ignore_for_file: public_member_api_docs, avoid_dynamic_calls

// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
// Package imports:
import 'package:tcard/tcard.dart';
import 'package:theta_models/theta_models.dart';

class OpenWTCard extends StatefulWidget {
  /// Returns a PageViewwidget
  const OpenWTCard({
    super.key,
    required this.state,
    required this.children,
    required this.lockYAxis,
    required this.slideSpeed,
    required this.delaySlideFor,
  });

  final WidgetState state;
  final List<CNode> children;
  final bool lockYAxis;
  final FTextTypeInput slideSpeed;
  final FTextTypeInput delaySlideFor;

  @override
  _WTCardState createState() => _WTCardState();
}

class _WTCardState extends State<OpenWTCard> {
  final _controller = TCardController();
  List<Widget> list = <Widget>[];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    final state = TreeGlobalState.state;
    list = widget.children
        .map(
          (final e) => e.toWidget(
            context: context,
            state: widget.state.copyWith(
              loop: widget.children.indexOf(e),
            ),
          ),
        )
        .toList();
    if (!state.forPlay) {
      _timer = Timer.periodic(const Duration(seconds: 2), (final timer) {
        list = widget.children
            .map(
              (final e) => e.toWidget(
                context: context,
                state: widget.state.copyWith(
                  loop: widget.children.indexOf(e),
                ),
              ),
            )
            .toList();
        if (!state.forPlay) {
          _controller.reset(cards: list);
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    final slideSpeedStr = widget.slideSpeed.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final slideSpeed = double.tryParse(slideSpeedStr) ?? 20;
    final delayStr = widget.delaySlideFor.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final delay = int.tryParse(delayStr) ?? 500;
    return IgnorePointer(
      ignoring: !state.forPlay,
      child: TCard(
        controller: _controller,
        onEnd: () {},
        onForward: (final index, final info) {},
        cards: list,
        lockYAxis: widget.lockYAxis,
        slideSpeed: slideSpeed,
        delaySlideFor: delay,
      ),
    );
  }
}
