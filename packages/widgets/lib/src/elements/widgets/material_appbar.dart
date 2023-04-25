import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

class OpenWMaterialAppBar extends StatelessWidget {
  /// Returns a MaterialAppBar widget in Teta
  const OpenWMaterialAppBar({
    super.key,
    required this.state,
    required this.fill,
    required this.children,
  });

  final WidgetState state;
  final List<CNode> children;
  final FFill fill;

  @override
  Widget build(final BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: HexColor(
        fill.getHexColor(
          context,
          context.watch<ColorStylesCubit>().state,
          context.watch<ThemeCubit>().state,
        ),
      ),
      leading: children.length >= 2
          ? children[1].toWidget(state: state, context: context)
          : null,
      title: children.isNotEmpty
          ? children[0].toWidget(state: state, context: context)
          : null,
      actions: [
        if (children.length >= 3)
          children[2].toWidget(state: state, context: context),
        if (children.length >= 4)
          children[3].toWidget(state: state, context: context),
        if (children.length >= 5)
          children[4].toWidget(state: state, context: context)
      ],
    );
  }
}
