import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

class OpenWTetaStoreShippingBuilder extends StatefulWidget {
  /// Returns a ListView.builder in Teta
  const OpenWTetaStoreShippingBuilder({
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
  WTetaStoreShippingBuilderState createState() =>
      WTetaStoreShippingBuilderState();
}

class WTetaStoreShippingBuilderState
    extends State<OpenWTetaStoreShippingBuilder> {
  bool isLoading = true;

  @override
  void initState() {
    _getShippingMethods().whenComplete(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    _getShippingMethods().whenComplete(() {
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
            (final element) => element.getName.contains('shipping'),
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

  Future _getShippingMethods() async {
    try {
      final r = await ThetaDB.I.store.getShippingMethods();
      if (r.data != null) {
        final datasetObject = DatasetObject(
          name: 'shipping',
          map: r.data!.map((final e) => e.toJson()).toList(growable: true),
        );
      } else {
        debugPrint(
            'Error in calc WTetaStoreProductsList -> ${r.error?.message ?? 'no message'}');
      }
    } catch (e) {
      debugPrint('Error in calc WTetaStoreProductsList -> $e');
    }
  }
}
