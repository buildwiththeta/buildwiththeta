import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

class OpenWTetaStoreCartItemsBuilder extends StatefulWidget {
  /// Returns a ListView.builder in Teta
  const OpenWTetaStoreCartItemsBuilder({
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
  _WTetaStoreCartItemsBuilderState createState() =>
      _WTetaStoreCartItemsBuilderState();
}

class _WTetaStoreCartItemsBuilderState
    extends State<OpenWTetaStoreCartItemsBuilder> {
  bool isLoading = true;

  @override
  void initState() {
    _getStripeProducts().whenComplete(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    return ListView.builder(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      shrinkWrap: widget.shrinkWrap,
      scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
      itemCount: state.dataset
          .firstWhere(
            (final element) => element.getName.contains('cart'),
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

  Future _getStripeProducts() async {
    try {
      final tetaCms = ThetaDB.instance;
      final products = await tetaCms.store.cart.get();

      if (products.data != null) {
        final uniqueProducts = <Map<String, dynamic>>[];
        for (final e in products.data!) {
          final index = uniqueProducts
              .indexWhere((final element) => element['_id'] == e.id);
          if (index == -1) {
            uniqueProducts.add(
              <String, dynamic>{
                '_id': e.id,
                'quantity': 1,
                ...e.toJson(),
              },
            );
          } else {
            uniqueProducts[index]['quantity']++;
          }
        }
        final datasetObject = DatasetObject(
          name: 'cart',
          map: uniqueProducts,
        );
      } else {
        debugPrint(
          'Error in calc WStripeProductsCartList -> ${products.error?.message ?? 'no message'}',
        );
      }
    } catch (e) {
      debugPrint('Error in calc WStripeProductsCartList -> $e');
    }
  }
}
