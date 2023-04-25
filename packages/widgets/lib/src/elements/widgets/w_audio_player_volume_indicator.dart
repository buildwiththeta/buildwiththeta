import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_design_system/theta_design_system.dart';

class OpenWAudioPlayerVolumeIndicator extends StatefulWidget {
  /// Returns a [WAudioPlayerVolumeIndicator] widget in Teta
  const OpenWAudioPlayerVolumeIndicator({
    super.key,
    required this.state,
    required this.controller,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput controller;

  @override
  State<OpenWAudioPlayerVolumeIndicator> createState() =>
      _WAudioPlayerVolumeIndicatorState();
}

class _WAudioPlayerVolumeIndicatorState
    extends State<OpenWAudioPlayerVolumeIndicator> with AfterLayoutMixin {
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
      if (mounted) {
        setState(() {
          audioController = variable?.audioController;
          isInitialized = true;
        });
      }
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
          'AudioPlayerVolumeIndicator Audio Controller is not initialized, yet.',
        ),
      );
    }
  }

  Widget progressBar() => audioController != null
      ? StreamBuilder<Map<String, Object>>(
          stream: Rx.combineLatest3<Duration, Duration, double,
              Map<String, Object>>(
            audioController!.positionStream,
            audioController!.bufferedPositionStream,
            audioController!.volumeStream,
            (
              final Duration position,
              final Duration bufferedPosition,
              final double volume,
            ) =>
                {
              'position': position,
              'bufferedPosition': bufferedPosition,
              'volume': volume,
            },
          ),
          builder: (final context, final snapshot) {
            final positionData = snapshot.data;
            final volume = positionData?['volume'] ?? 0.5;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  value: volume as double,
                  onChanged: (final value) {
                    audioController!.setVolume(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.volume_off,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.volume_up_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            );
          },
        )
      : const Text('AudioPlayerVolumeIndicator Controller is null.');
}
