import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWIndexedStack extends NodeWidget {
  /// Returns [Column] widget in Teta
  const OpenWIndexedStack({
    super.key,
    required super.nodeState,
    required this.children,
    required this.index,
  });

  final List<CNode> children;
  final FTextTypeInput index;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final val = index.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    return IndexedStack(
      index: int.tryParse(val) != null ? int.parse(val) : 0,
      children: children.isNotEmpty
          ? children
              .map(
                (final e) => e.toWidget(
                  context: context,
                  state: nodeState.copyWith(
                    node: e,
                    loop: children.indexOf(e),
                  ),
                ),
              )
              .toList()
          : [],
    );
  }
}
