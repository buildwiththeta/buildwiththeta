import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';
import 'dart:math';

class OpenWQonversionSingleSubStatus extends StatefulWidget {
  /// Returns a [OpenWQonversionSingleSubStatus] widget in Teta
  const OpenWQonversionSingleSubStatus({
    super.key,
    required this.state,
    required this.entitlementInfo,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput entitlementInfo;

  @override
  State<OpenWQonversionSingleSubStatus> createState() =>
      _WQonversionSingleSubStatusState();
}

class _WQonversionSingleSubStatusState
    extends State<OpenWQonversionSingleSubStatus> {
  static const mapTitle = 'Qonversion Sub Status';
  DatasetObject _map = const DatasetObject(
    name: mapTitle,
    map: [<String, dynamic>{}],
  );

  Future<void> loadStatus() async {
    final randomNumberGenerator = Random();
    final value = randomNumberGenerator.nextBool();
    final map = <String, dynamic>{
      'isActive': value,
    };
    _map = _map.copyWith(
      name: mapTitle,
      map: [map],
    );
    addDataset(context, _map);
  }

  @override
  Widget build(final BuildContext context) {
    return ThetaFutureBuilder<void>(
      future: loadStatus(),
      builder: (final context, final snap) {
        if (!snap.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ChildBuilder(
          child: widget.child,
          state: widget.state,
          context: context,
        );
      },
    );
  }
}
