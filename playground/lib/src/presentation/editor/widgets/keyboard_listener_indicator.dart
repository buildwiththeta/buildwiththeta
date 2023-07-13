import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theta_design_system/theta_design_system.dart';

class KeyboardListenerIndicator extends StatelessWidget {
  final List<LogicalKeyboardKey> pressedKeys;
  final VoidCallback onClear;

  const KeyboardListenerIndicator({
    super.key,
    required this.pressedKeys,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Grid.small, horizontal: Grid.small),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final key in pressedKeys)
              Container(
                margin:
                    EdgeInsets.only(right: pressedKeys.last != key ? 12 : 0),
                padding: const EdgeInsets.symmetric(
                    horizontal: Grid.small, vertical: Grid.small),
                decoration: BoxDecoration(
                  color: theme.bgPrimary,
                  borderRadius: BorderRadius.circular(Grid.small),
                  boxShadow: [
                    BoxShadow(
                      color: theme.bgGrey,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: TParagraph(prettifyKey(key)),
              ),
            if (pressedKeys.isNotEmpty)
              IconButton(
                onPressed: onClear,
                splashRadius: 16,
                iconSize: 18,
                icon: Icon(
                  CupertinoIcons.xmark,
                  color: Colors.grey.shade400,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String prettifyKey(LogicalKeyboardKey key) {
    final keyLabel = key.keyLabel;
    if (key == LogicalKeyboardKey.arrowLeft) return '←';
    if (key == LogicalKeyboardKey.arrowRight) return '→';
    if (key == LogicalKeyboardKey.arrowUp) return '↑';
    if (key == LogicalKeyboardKey.arrowDown) return '↓';
    if (key == LogicalKeyboardKey.escape) return 'ESC';
    if (key == LogicalKeyboardKey.shiftLeft) return 'SHIFT';
    if (key == LogicalKeyboardKey.altLeft) return 'ALT';
    if (key == LogicalKeyboardKey.controlLeft) return 'CTRL';
    if (key == LogicalKeyboardKey.metaLeft) return 'CMD';
    return keyLabel;
  }
}
