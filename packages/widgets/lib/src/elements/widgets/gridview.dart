import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWGridView extends NodeWidget {
  /// Returns a StaggeredGridView (children: [ ]) in Teta
  const OpenWGridView({
    super.key,
    required super.nodeState,
    required this.children,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.isVertical,
    required this.isPrimary,
    required this.childAspectRatio,
    required this.shrinkWrap,
  });

  final List<CNode> children;

  final bool isVertical;
  final bool isPrimary;
  final bool shrinkWrap;
  final FTextTypeInput crossAxisCount;
  final FTextTypeInput mainAxisSpacing;
  final FTextTypeInput crossAxisSpacing;
  final FTextTypeInput childAspectRatio;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final crossAxisCountString = crossAxisCount.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    final mainAxisSpacingString = mainAxisSpacing.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    final crossAxisSpacingString = crossAxisSpacing.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    final childAspectRatioString = childAspectRatio.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    final children = const NodeOverrideExecuter()
        .executeChildren(context, nodeState, this.children);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: int.tryParse(crossAxisCountString) ?? 2,
        mainAxisSpacing: double.tryParse(mainAxisSpacingString) ?? 2,
        crossAxisSpacing: double.tryParse(crossAxisSpacingString) ?? 2,
        childAspectRatio: double.tryParse(childAspectRatioString) != null &&
                (double.tryParse(childAspectRatioString) ?? 0) > 0.1
            ? double.parse(childAspectRatioString)
            : 1,
      ),
      shrinkWrap: shrinkWrap,
      primary: isPrimary,
      scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
      itemCount: children.isEmpty ? 1 : children.length,
      itemBuilder: (final context, final index) =>
          children.isNotEmpty ? children[index] : const SizedBox(),
    );
  }
}
