import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

class OpenWTetaStoreTransactionsBuilder extends StatefulWidget {
  /// Returns a ListView.builder in Teta
  const OpenWTetaStoreTransactionsBuilder({
    super.key,
    required this.state,
    required this.child,
    required this.value,
    required this.shrinkWrap,
    required this.isVertical,
  });

  final WidgetState state;
  final CNode? child;
  final bool shrinkWrap;
  final bool isVertical;
  final FDataset value;

  @override
  WTetaStoreTransactionsBuilderState createState() =>
      WTetaStoreTransactionsBuilderState();
}

class WTetaStoreTransactionsBuilderState
    extends State<OpenWTetaStoreTransactionsBuilder> {
  bool isLoading = true;

  @override
  void initState() {
    _getTransactions().whenComplete(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    _getTransactions().whenComplete(() {
      if (mounted) {
        setState(() {});
      }
    });

    final state = TreeGlobalState.state;
    return ListView.builder(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      shrinkWrap: widget.shrinkWrap,
      scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
      itemCount: state.dataset
          .firstWhere(
            (final element) => element.getName.contains('products'),
            orElse: DatasetObject.empty,
          )
          .getMap
          .length,
      itemBuilder: (final context, final index) => widget.child != null
          ? widget.child!.toWidget(
              context: context,
              state: widget.state.copyWith(loop: index),
            )
          : const SizedBox(),
    );
  }

  Future _getTransactions() async {
    try {
      final r = await ThetaDB.I.store.transactions();
      if (r.data != null) {
        final datasetObject = DatasetObject(
          name: 'transactions',
          map: r.data!.map((final e) => e.toJson()).toList(growable: true),
        );
      } else {
        debugPrint(
            'Error in calc _getTransactions -> ${r.error?.message ?? 'no message'}');
      }
    } catch (e) {
      debugPrint('Error in calc _getTransactions -> $e');
    }
  }
}
