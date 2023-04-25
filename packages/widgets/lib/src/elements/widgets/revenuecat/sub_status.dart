import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:theta_models/theta_models.dart';

// Project imports:

// ignore_for_file: public_member_api_docs

class OpenWRevenueCatSingleSubStatus extends StatefulWidget {
  /// Returns a [OpenWRevenueCatSingleSubStatus] widget in Teta
  const OpenWRevenueCatSingleSubStatus({
    super.key,
    required this.state,
    required this.entitlementInfo,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput entitlementInfo;

  @override
  State<OpenWRevenueCatSingleSubStatus> createState() =>
      _WRevenueCatSingleSubStatusState();
}

class _WRevenueCatSingleSubStatusState
    extends State<OpenWRevenueCatSingleSubStatus> {
  static const mapTitle = 'RevenueCat Sub Status';
  DatasetObject _map = const DatasetObject(
    name: mapTitle,
    map: [<String, dynamic>{}],
  );

  Future<bool> loadStatus(BuildContext context) async {
    final state = TreeGlobalState.state;
    if (UniversalPlatform.isAndroid) {
      try {
        final entitlement = widget.entitlementInfo.get(
          state: state,
          loop: widget.state.loop,
          context: context,
        );
        final res = await Purchases.getPurchaserInfo();
        return res.entitlements.all[entitlement]?.isActive ?? false;
      } catch (e) {
        // Error fetching purchaser info
      }
    }
    return false;
  }

  @override
  Widget build(final BuildContext context) {
    return ThetaFutureBuilder<bool>(
      future: loadStatus(context),
      builder: (final context, final snap) {
        if (!snap.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final isActive = snap.data ?? false;
        final map = <String, dynamic>{
          'isActive': isActive,
        };
        _map = _map.copyWith(
          name: mapTitle,
          map: [map],
        );
        addDataset(context, _map);
        return ChildBuilder(
          child: widget.child,
          state: widget.state,
          context: context,
        );
      },
    );
  }
}
