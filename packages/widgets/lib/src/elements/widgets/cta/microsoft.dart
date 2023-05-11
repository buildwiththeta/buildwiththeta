import 'package:flutter/material.dart';

class LoginWithMicrosoftWidget extends StatelessWidget {
  /// Returns a WLoginWithMicrosoft SignIn button
  const LoginWithMicrosoftWidget({
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
        .shrink(); /*MicrosoftAuthButton(
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
