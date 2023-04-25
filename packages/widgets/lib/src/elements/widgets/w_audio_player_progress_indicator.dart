import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_design_system/theta_design_system.dart';

class OpenWAudioPlayerProgressIndicator extends StatefulWidget {
  /// Returns a [WAudioPlayerProgressIndicator] widget in Teta
  const OpenWAudioPlayerProgressIndicator({
    super.key,
    required this.state,
    required this.controller,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput controller;

  @override
  State<OpenWAudioPlayerProgressIndicator> createState() =>
      _WAudioPlayerProgressIndicatorState();
}

class _WAudioPlayerProgressIndicatorState
    extends State<OpenWAudioPlayerProgressIndicator> with AfterLayoutMixin {
  bool isInitialized = false;
  AudioPlayer? audioController;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    init();
  }

  Future<void> init() async {
    final state = TreeGlobalState.state;
    VariableObject? variable;
    if (widget.controller.type == FTextTypeEnum.param) {
      variable = state.params
          .firstWhereOrNull((final e) => e.name == widget.controller.paramName);
    } else {
      variable = state.states
          .firstWhereOrNull((final e) => e.name == widget.controller.stateName);
    }
    if (variable?.audioController != null) {
      setState(() {
        if (variable?.audioController != null) {
          audioController = variable?.audioController;
        }
        isInitialized = true;
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    if (isInitialized) {
      return progressBar();
    } else {
      if (audioController == null) {
        init();
      }
      return const Center(
        child: THeadline3(
          'AudioPlayerProgressIndicator Audio Controller is not initialized, yet.',
        ),
      );
    }
  }

  Widget progressBar() => audioController != null
      ? StreamBuilder<Map<String, Duration>>(
          stream: Rx.combineLatest3<Duration, Duration, Duration?,
              Map<String, Duration>>(
            audioController!.positionStream,
            audioController!.bufferedPositionStream,
            audioController!.durationStream,
            (
              final Duration position,
              final Duration bufferedPosition,
              final Duration? duration,
            ) =>
                {
              'position': position,
              'bufferedPosition': bufferedPosition,
              'duration': duration ?? Duration.zero
            },
          ),
          builder: (final context, final snapshot) {
            final positionData = snapshot.data;
            final duration = positionData?['duration'] ?? Duration.zero;
            final position = positionData?['position'] ?? Duration.zero;

            //! Declared but not used - commented out
            //! final bufferedPosition = positionData?['bufferedPosition'] ?? Duration.zero;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (final value) {
                    if (audioController == null) {
                      init();
                    }
                    audioController?.seek(Duration(seconds: value.toInt()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        position.toString().split('.').first.padLeft(8, '0'),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        duration.toString().split('.').first.padLeft(8, '0'),
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        )
      : const Text('AudioPlayerProgressIndicator Controller is null.');
}
