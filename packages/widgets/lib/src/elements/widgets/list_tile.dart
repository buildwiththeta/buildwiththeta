import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWListTile extends StatelessWidget {
  /// Returns a MaterialAppBar widget in Teta
  const OpenWListTile({
    super.key,
    required this.state,
    required this.value,
    required this.isThreeLine,
    required this.children,
  });

  final WidgetState state;
  final List<CNode> children;
  final FTextTypeInput value;
  final bool isThreeLine;

  @override
  Widget build(final BuildContext context) {
    return ListTile(
      isThreeLine: isThreeLine,
      leading: children.isNotEmpty
          ? children[0].toWidget(
              state: state.copyWith(node: children[0]), context: context)
          : null,
      trailing: children.length >= 2
          ? children[1].toWidget(
              context: context,
              state: state.copyWith(
                node: children[1],
              ),
            )
          : null,
    );
  }
}
