// Flutter imports:
// ignore_for_file: public_member_api_docs, avoid_dynamic_calls

// Dart imports:

// Flutter imports:
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
// Package imports:
import 'package:tcard/tcard.dart';
import 'package:theta_models/theta_models.dart';
// Project imports:

class OpenWTCardBuilder extends StatefulWidget {
  /// Returns a PageViewwidget
  const OpenWTCardBuilder({
    super.key,
    required this.state,
    required this.value,
    required this.lockYAxis,
    required this.slideSpeed,
    required this.delaySlideFor,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FDataset value;
  final bool lockYAxis;
  final FTextTypeInput slideSpeed;
  final FTextTypeInput delaySlideFor;

  @override
  _WTCardState createState() => _WTCardState();
}

class _WTCardState extends State<OpenWTCardBuilder> {
  DatasetObject map = DatasetObject.empty();
  final _controller = TCardController();
  List<Widget> list = <Widget>[
    const Center(child: CircularProgressIndicator())
  ];
  bool isLoaded = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    final state = TreeGlobalState.state;
    _fetch();
    if (!state.forPlay) {
      _timer = Timer.periodic(const Duration(seconds: 2), (final timer) {
        _fetch();
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

  void _fetch() {
    final state = TreeGlobalState.state;
    _setDataset();
    final index = widget.value.datasetName != null
        ? state.dataset.indexWhere(
            (final element) => element.getName == widget.value.datasetName,
          )
        : -1;
    final db = index != -1 ? state.dataset[index] : DatasetObject.empty();
    if (mounted) {
      final temp = <Widget>[];
      for (var i = 0; i < db.getMap.length; i++) {
        temp.add(
          widget.child!.toWidget(
            context: context,
            state: widget.state.copyWith(
              loop: i,
            ),
          ),
        );
      }
      if (mounted) {
        setState(() {
          list = temp;
          isLoaded = state.forPlay;
        });
      }
    }
  }

  void _setDataset() {
    final state = TreeGlobalState.state;
    try {
      final index = state.dataset.indexWhere(
        (final element) => element.getName == widget.value.datasetName,
      );
      final db = index != -1 ? state.dataset[index] : DatasetObject.empty();
      if (mounted) {
        if (db.getName != '') {
          setState(() {
            map = db;
          });
        }
      }
    } catch (_) {}
  }
}
