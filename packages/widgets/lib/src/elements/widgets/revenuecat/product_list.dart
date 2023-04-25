// Flutter imports:
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:theta_models/theta_models.dart';

// Project imports:

// ignore_for_file: public_member_api_docs

class OpenWRevenueCatProductsList extends StatefulWidget {
  /// Returns a [OpenWRevenueCatProductsList] widget in Teta
  const OpenWRevenueCatProductsList({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  State<OpenWRevenueCatProductsList> createState() =>
      _WRevenueCatProductsListState();
}

class _WRevenueCatProductsListState extends State<OpenWRevenueCatProductsList> {
  List<Product> products = [];
  bool isLoading = true;
  late DatasetObject _map;

  @override
  void initState() {
    getProducts();
    _map = DatasetObject(
      name: widget.state.node.name ??
          widget.state.node.intrinsicState.displayName,
      map: const [<String, dynamic>{}],
    );
    super.initState();
  }

  Future<void> getProducts() async {
    if (UniversalPlatform.isAndroid) {
      try {
        final offerings = await Purchases.getOfferings();
        if (offerings.current != null &&
            (offerings.current?.availablePackages ?? []).isNotEmpty) {
          final prods = <Product>[];
          for (final product
              in offerings.current?.availablePackages ?? <Package>[]) {
            prods.add(product.product);
          }
          products = prods;
        }
      } catch (e) {
        Logger.printError('$e');
      }
    } else {
      products = [
        const Product(
          'identifier',
          'This is just a mockup',
          'Mockup',
          9.99,
          'priceString',
          'currencyCode',
        ),
      ];
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(final BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    _map = _map.copyWith(
      name: widget.state.node.name ??
          widget.state.node.intrinsicState.displayName,
      map: products.map((final e) => e.toJson()).toList(),
    );
    final datasets = addDataset(context, _map);

    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.child == null ? 1 : products.length,
      itemBuilder: (final context, final index) => ChildBuilder(
        context: context,
        state: widget.state.copyWith(
          loop: index,
        ),
        child: widget.child,
      ),
    );
  }
}
