// Flutter imports:
import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:just_audio/just_audio.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_models/theta_models.dart';
// Project imports:
import 'package:theta_design_system/theta_design_system.dart';
// ignore_for_file: public_member_api_docs

class OpenWAudioPlayer extends StatefulWidget {
  /// Returns a [OpenWAudioPlayer] widget in Teta
  const OpenWAudioPlayer({
    super.key,
    required this.state,
    required this.controller,
    required this.selectedDataset,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput controller;
  final FDataset selectedDataset;

  @override
  State<OpenWAudioPlayer> createState() => _WAudioPlayerState();
}

class _WAudioPlayerState extends State<OpenWAudioPlayer> with AfterLayoutMixin {
  bool isInitialized = false;
  AudioPlayer? ap;
  VariableObject? variable;
  DatasetObject _map = const DatasetObject(
    name: '',
    map: [<String, dynamic>{}],
  );

  Future<void> initAudioPlayer() async {
    final state = TreeGlobalState.state;
    try {
      _map = DatasetObject(
        name: widget.state.node.name ??
            widget.state.node.intrinsicState.displayName,
        map: const [<String, dynamic>{}],
      );

      if (widget.controller.type == FTextTypeEnum.param) {
        variable = state.params.firstWhereOrNull(
          (final e) => e.name == widget.controller.paramName,
        );
      } else {
        variable = state.states.firstWhereOrNull(
          (final e) => e.name == widget.controller.stateName,
        );
      }
      await variable?.audioController?.dispose();

      variable = variable!.copyWith(
        audioController: AudioPlayer(),
      );

      final audioPlayer = variable!.audioController!;

      final audioList = <AudioSource>[];

      final audioPlayerDataset = state.dataset
          .firstWhere(
            (final element) =>
                element.getName == widget.selectedDataset.datasetName,
          )
          .getMap;
      for (final element in audioPlayerDataset) {
        final url =
            element['${widget.selectedDataset.datasetAttrName}'] as String?;
        if (url != null) {
          audioList.add(
            AudioSource.uri(Uri.parse(url)),
          );
        }
      }
      // Add list to audioPlayer
      final playlist = ConcatenatingAudioSource(
        // Customise the shuffle algorithm
        shuffleOrder: DefaultShuffleOrder(),
        // Specify the playlist items
        children: audioList,
      );

      await audioPlayer.setShuffleModeEnabled(false);

      await audioPlayer.setAudioSource(
        playlist,
        initialIndex: 0,
        initialPosition: Duration.zero,
        preload: false,
      );

      if (mounted) {
        setState(() {
          ap = audioPlayer;
          isInitialized = true;
        });
        // BlocProvider.of<RefreshCubit>(context).change();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    initAudioPlayer();
  }

  @override
  Widget build(final BuildContext context) {
    if (isInitialized && ap != null) {
      return StreamBuilder(
        stream: ap!.currentIndexStream,
        builder: (final context, final snapshot) {
          if (!snapshot.hasData) {
            // has data is negative
            _map = _map.copyWith(
              name: widget.state.node.name ??
                  widget.state.node.intrinsicState.displayName,
              map: [
                <String, dynamic>{
                  'is playing': ap!.playing.toString(),
                },
              ],
            );
          } else {
            _map = _map.copyWith(
              name: widget.state.node.name ??
                  widget.state.node.intrinsicState.displayName,
              map: [
                <String, dynamic>{
                  ...getCurrentSongAttribute(),
                },
              ],
            );
          }
          return ChildBuilder(
            context: context,
            state: widget.state,
            child: widget.child,
          );
        },
      );
    } else {
      if (ap == null) {
        initAudioPlayer();
      }
      return const THeadline3(
        'AudioPlayerWidget Audio Controller is not initialized, yet. Or Audio Player is null.',
      );
    }
  }

  Map<String, dynamic> getCurrentSongAttribute() {
    final state = TreeGlobalState.state;
    final audioPlayerDataset = state.dataset.firstWhere(
      (final element) => element.getName == widget.selectedDataset.datasetName,
    );
    return audioPlayerDataset
        .getMap[variable?.audioController?.currentIndex ?? 0];
  }
}
