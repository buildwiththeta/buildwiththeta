import 'package:flutter/material.dart';

class LoginWithGitHubWidget extends StatelessWidget {
  /// Returns a WLoginWithGitHub SignIn button
  const LoginWithGitHubWidget({
    super.key,
    required this.onPressed,
    required this.onLongPress,
  });

  final Function() onPressed;
  final Function() onLongPress;

  @override
  Widget build(
    final BuildContext context,
  ) {
    return const SizedBox
        .shrink(); /*GithubAuthButton(
      onPressed: () {
        onPressed.call();
      },
      onLongPress: () {
        onLongPress.call();
      },
      style: const AuthButtonStyle(
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    );*/
  }
}
