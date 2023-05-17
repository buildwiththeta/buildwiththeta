import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWLiquidSwipe extends StatelessWidget {
  /// Returns a LiquidSwipe widget
  const OpenWLiquidSwipe({
    super.key,
    required this.state,
    required this.children,
  });

  final WidgetState state;
  final List<CNode> children;

  @override
  Widget build(final BuildContext context) {
    return const SizedBox
        .shrink(); /*LiquidSwipe.builder(
      itemCount: children.isNotEmpty ? children.length : 3,
      itemBuilder: (final context, final index) {
        if (children.isEmpty) {
          return const SizedBox();
        }
        return children[index].toWidget(
          context: context,
          state: state.copyWith(
            node: children[index],
            loop: index,
          ),
        );
      },
    );*/
  }
}
