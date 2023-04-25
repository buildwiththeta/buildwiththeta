import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWQonversionProductsList extends StatefulWidget {
  /// Returns a [WQonversionProductsList] widget in Teta
  const OpenWQonversionProductsList({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  State<OpenWQonversionProductsList> createState() =>
      _WQonversionProductsListState();
}

class _WQonversionProductsListState extends State<OpenWQonversionProductsList> {
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
    setState(() {
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
    addDataset(context, _map);

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
