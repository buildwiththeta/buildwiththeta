import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/elements/widgets/cta/index.dart';
import 'package:theta_models/theta_models.dart';

enum SocialButtonType {
  apple,
  bitbucket,
  discord,
  facebook,
  github,
  gitlab,
  google,
  linkedin,
  microsoft,
  twitch,
  twitter,
}

class OpenWSocialButton extends NodeWidget {
  const OpenWSocialButton({
    super.key,
    required super.nodeState,
    required this.type,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.onLongPress,
    this.child,
  });

  final SocialButtonType type;
  final CNode? child;
  final FSize width;
  final FSize height;
  final Function() onPressed;
  final Function() onLongPress;

  @override
  Widget build(
    final BuildContext context,
    final TreeState state,
    final WidgetState nodeState,
  ) {
    return SizedBox(
      width: width.get(
        context: context,
        isWidth: true,
        state: state,
      ),
      height: height.get(
        context: context,
        isWidth: false,
        state: state,
      ),
      child: Builder(
        builder: (final BuildContext context) {
          switch (type) {
            case SocialButtonType.apple:
              return LoginWithAppleWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.bitbucket:
              return LoginWithBitBucketWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.discord:
              return LoginWithDiscordWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.facebook:
              return LoginWithFacebookWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.github:
              return LoginWithGitHubWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.gitlab:
              return LoginWithGitlabWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.google:
              return LoginWithGoogleWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.linkedin:
              return LoginWithLinkedinWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.microsoft:
              return LoginWithMicrosoftWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.twitch:
              return LoginWithTwitchWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
            case SocialButtonType.twitter:
              return LoginWithTwitterWidget(
                onPressed: onPressed,
                onLongPress: onLongPress,
              );
          }
        },
      ),
    );
  }
}
