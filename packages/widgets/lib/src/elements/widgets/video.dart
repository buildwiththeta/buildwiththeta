import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:universal_platform/universal_platform.dart';

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

class _WVideoState extends State<OpenWVideo> {
  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    if (UniversalPlatform.isWindows) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return const SizedBox
        .shrink(); /*state.forPlay
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
                    CupertinoIcons.play,
                    size: 48,
                    color: Colors.white,
                  ),
                  const Gap(Grid.small),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      THeadline2(
                        'See in Play mode',
                        color: theme.txtPrimary,
                      ),
                      const Gap(4),
                      Icon(
                        CupertinoIcons.arrow_up_right_circle,
                        size: 12,
                        color: theme.txtPrimary,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );*/
  }
}
