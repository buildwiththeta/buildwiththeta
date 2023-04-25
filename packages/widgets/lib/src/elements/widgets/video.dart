import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:gap/gap.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:theta_design_system/theta_design_system.dart';

class OpenWVideo extends StatefulWidget {
  /// Returns a Video widget in Teta
  const OpenWVideo({
    super.key,
    required this.state,
    required this.value,
    required this.startAt,
    required this.showControls,
    required this.showFullScreen,
    required this.loopVideo,
  });

  final WidgetState state;
  final FTextTypeInput value;
  final int startAt;
  final bool showControls;
  final bool showFullScreen;
  final bool loopVideo;

  @override
  State<OpenWVideo> createState() => _WVideoState();
}

class _WVideoState extends State<OpenWVideo> with AfterLayoutMixin {
  late final YoutubePlayerController controller;
  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    final state = TreeGlobalState.state;
    setState(() {
      controller = YoutubePlayerController(
        initialVideoId: widget.value.get(
          state: state,
          loop: widget.state.loop,
          context: context,
        ),
        params: YoutubePlayerParams(
          startAt: Duration(seconds: widget.startAt),
          showControls: widget.showControls,
          showFullscreenButton: widget.showFullScreen,
          loop: widget.loopVideo,
        ),
      );
    });
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    if (UniversalPlatform.isWindows) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.warning,
              size: 40,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: TParagraph(
                'Sorry, this node is not supported on Windows',
                isCentered: true,
              ),
            ),
          ],
        ),
      );
    }

    return state.forPlay
        ? YoutubePlayerIFrame(
            controller: controller,
          )
        : AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: const Color(0xFF8f8f8f),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FeatherIcons.maximize,
                    size: 48,
                    color: Colors.white,
                  ),
                  const Gap(Grid.small),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      THeadline2(
                        'See in Play mode',
                        color: Palette.txtPrimary,
                      ),
                      Gap(4),
                      Icon(
                        FeatherIcons.externalLink,
                        size: 12,
                        color: Palette.txtPrimary,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
