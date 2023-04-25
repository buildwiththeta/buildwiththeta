import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:theta_models/theta_models.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OpenWQRScanner extends StatelessWidget {
  /// Returns a [Align] widget in Teta
  const OpenWQRScanner({
    super.key,
    required this.state,
  });

  final WidgetState state;

  @override
  Widget build(final BuildContext context) {
    return MobileScanner(
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
    );
  }
}
