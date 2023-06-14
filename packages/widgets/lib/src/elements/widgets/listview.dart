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
    required this.physic,
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
  final FPhysic physic;
  final bool isPrimary;
  final bool isReverse;
  final bool shrinkWrap;

  @override
  Widget build(final BuildContext context) {
    final children = const NodeOverrideExecuter()
        .executeChildren(context, state, this.children);
    return NotificationListener<ScrollEndNotification>(
      onNotification: (final scrollEnd) {
        return true;
      },
      child: ScrollConfiguration(
        behavior: _MyCustomScrollBehavior(),
        child: ListView.builder(
          reverse: isReverse,
          physics: physic.physics,
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
          itemCount: children.isEmpty ? 1 : children.length,
          itemBuilder: (final context, final index) {
            return children.isNotEmpty ? children[index] : const SizedBox();
          },
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
