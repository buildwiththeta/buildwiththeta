import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWQRScanner extends StatelessWidget {
  /// Returns a [Align] widget in Teta
  const OpenWQRScanner({
    super.key,
    required this.state,
  });

  final WidgetState state;

  @override
  Widget build(final BuildContext context) {
    return const SizedBox
        .shrink(); /* MobileScanner(
      onDetect: (final barcode, final args) async {
        if (barcode.rawValue == null) {
        } else {
          final code = barcode.rawValue!;
          Logger.printSuccess('Barcode found! $code');
          if (await canLaunchUrlString(code)) {
            await launchUrlString(code);
          }
        }
      },
    );*/
  }
}
