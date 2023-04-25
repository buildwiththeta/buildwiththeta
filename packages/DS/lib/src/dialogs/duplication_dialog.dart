import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:theta_design_system/theta_design_system.dart';

void showDuplicationDialog(final BuildContext context) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (final _) {
      return AlertDialog(
        backgroundColor: const Color(0xFF111111),
        content: SizedBox(
          width: 300,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Center(
              child: SizedBox(
                width: 128,
                height: 92,
                child: Lottie.asset(
                  KLottie.nodes,
                  width: 128,
                  height: 92,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
