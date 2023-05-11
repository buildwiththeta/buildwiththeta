import 'package:flutter/material.dart';

class LoginWithGoogleWidget extends StatelessWidget {
  /// Returns a WLoginWithGoogle SignIn button
  const LoginWithGoogleWidget({
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
        .shrink(); /*GoogleAuthButton(
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
