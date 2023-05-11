import 'package:flutter/material.dart';

class LoginWithTwitterWidget extends StatelessWidget {
  /// Returns a WLoginWithTwitterWidget SignIn button
  const LoginWithTwitterWidget({
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
        .shrink(); /*TwitterAuthButton(
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
