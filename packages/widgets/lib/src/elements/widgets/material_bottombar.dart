import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// Returns a MaterialAppBar widget in Teta
/// It wants a [BuildContext] and a [WidgetState] to get the [FFill] values.
/// It also wants a [List] of [CNode] to get the [CNode] values.
/// The [MaterialAppBar] widget has a [List] of [BottomNavigationBarItem] widgets
/// It also wants a [FFill] to get the [FFill] values.
class OpenWMaterialBottomBar extends NodeWidget {
  /// Returns a MaterialAppBar widget in Teta
  const OpenWMaterialBottomBar({
    super.key,
    required super.nodeState,
    required this.fill,
    required this.children,
  });

  /// The [List] of [CNode] values for the [MaterialAppBar] widget
  /// The [MaterialAppBar] widget has a [List] of [BottomNavigationBarItem] widgets
  final List<CNode> children;

  /// The [FFill] value for the [MaterialAppBar] widget
  final FFill fill;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    /// Returns a MaterialAppBar widget in Teta
    return BottomNavigationBar(
      items: children
          .map((e) => e.toWidget(
              context: context,
              state: nodeState.copyWith(node: e, loop: children.indexOf(e))))
          .whereType<OpenWBottomBarItem>()
          .map(
            (e) => BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.fromString(e.icon),
                size:
                    e.width?.get(state: state, context: context, isWidth: true),
              ),
              label: e.value.get(
                state: state,
                context: context,
                loop: nodeState.loop,
              ),
            ),
          )
          .toList()
          .cast<BottomNavigationBarItem>(),
      backgroundColor: HexColor(
        /// Get the hex color from the [FFill] value
        fill.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        ),
      ),
    );
  }
}
