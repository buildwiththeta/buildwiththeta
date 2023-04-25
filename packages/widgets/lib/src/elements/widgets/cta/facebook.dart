import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class LoginWithFacebookWidget extends StatelessWidget {
  /// Returns a Apple SignIn button
  const LoginWithFacebookWidget({
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
    return FacebookAuthButton(
      onPressed: () {
        onPressed.call();
      },
      onLongPress: () {
        onLongPress.call();
      },
      style: const AuthButtonStyle(
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
