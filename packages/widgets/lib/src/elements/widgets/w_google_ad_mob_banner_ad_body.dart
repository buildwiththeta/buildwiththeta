// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWGoogleAdMobBannerAd extends StatelessWidget {
  /// Returns a widget in Teta
  const OpenWGoogleAdMobBannerAd({
    super.key,
    required this.adMobAdIosUnitId,
    required this.adMobAdAndroidUnitId,
    required this.state,
  });

  final WidgetState state;
  final FTextTypeInput adMobAdIosUnitId;
  final FTextTypeInput adMobAdAndroidUnitId;

  @override
  Widget build(final BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      child: Center(
        child: Text(
          'Here will be you ad.',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
