import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Constrains the width of the child widget
class OpenWWrapperContainer extends NodeWidget {
  /// Returns a [OpenWWrapperContainer] widget
  /// [isBoxed] is a boolean value that determines if the child widget is boxed
  /// [child] is the child widget
  /// [nodeState] is the state of the widget
  /// It can be used to determine the width of the child widget
  /// according to the screen size
  const OpenWWrapperContainer({
    super.key,
    required super.nodeState,
    required this.isBoxed,
    this.child,
  });

  final bool isBoxed;
  final CNode? child;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    if (!isBoxed) {
      return ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      );
    }
    return Builder(
      builder: (final context) {
        /// From 1200 and above is the width of the desktop screen
        if (state.deviceInfo.screenSize.width > 1200) {
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ChildBuilder(
                context: context,
                state: nodeState,
                child: child,
              ),
            ),
          );
        }

        /// Between 600 and 1200 is the width of the tablet screen
        if (state.deviceInfo.screenSize.width > 600) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ChildBuilder(
              context: context,
              state: nodeState,
              child: child,
            ),
          );
        }

        /// 600 and below is the width of the mobile screen
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ChildBuilder(
            context: context,
            state: nodeState,
            child: child,
          ),
        );
      },
    );
  }
}
