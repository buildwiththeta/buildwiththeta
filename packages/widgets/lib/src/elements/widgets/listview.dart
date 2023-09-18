import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

class OpenWListView extends StatelessWidget {
  /// Returns a ListView in Teta
  const OpenWListView({
    super.key,
    required this.state,
    required this.children,
    required this.flagValue,
    required this.value,
    required this.isVertical,
    required this.isReverse,
    required this.isPrimary,
    required this.shrinkWrap,
  });

  final WidgetState state;
  final List<CNode> children;
  final bool isVertical;
  final bool flagValue;
  final FTextTypeInput value;
  final bool isPrimary;
  final bool isReverse;
  final bool shrinkWrap;

  @override
  Widget build(final BuildContext context) {
    final children = const NodeOverrideExecuter()
        .executeChildren(context, state, this.children);
    if (children.isEmpty) {
      return const SizedBox();
    }
    return NotificationListener<ScrollEndNotification>(
      onNotification: (final scrollEnd) => true,
      child: ScrollConfiguration(
        behavior: _MyCustomScrollBehavior(),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          reverse: isReverse,
          scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
          itemCount: children.length,
          itemBuilder: (_, index) => children[index],
        ),
      ),
    );
  }
}

class _MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
