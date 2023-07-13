import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground/src/core/app_theme/app_theme.dart';
import 'package:theta_models/theta_models.dart';

class NodeIconWidget extends StatelessWidget {
  const NodeIconWidget(
      {super.key, required this.node, this.color, this.size = 20});

  final CNode node;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AdaptiveThemeMode>(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (context, mode, child) => SvgPicture.asset(
        'assets/${node.intrinsicState.nodeIcon}${AppTheme.iconName(mode)}',
        width: size,
        height: size,
        color: color,
      ),
    );
  }
}
