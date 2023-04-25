// Flutter imports:

// Package imports:
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithBitBucketWidget extends StatelessWidget {
  /// Returns a BitBucket SignIn button
  const LoginWithBitBucketWidget({
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
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          onPressed.call();
        },
        onLongPress: () {
          onLongPress.call();
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(2),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 2,
              color: Colors.transparent,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          shadowColor: MaterialStateProperty.all(Colors.black),
          overlayColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  faIconNameMapping['bitbucket'],
                  color: const Color(0xff2684FF),
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Sign in with BitBucket',
              style: GoogleFonts.getFont(
                'Source Sans Pro',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
