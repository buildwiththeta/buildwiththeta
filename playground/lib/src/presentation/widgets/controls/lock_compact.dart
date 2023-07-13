import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class LockCompactController extends StatefulWidget {
  const LockCompactController({
    super.key,
    required this.node,
    required this.onLockChanged,
  });

  final CNode node;
  final Function(
    bool isLocked,
  ) onLockChanged;

  @override
  State<LockCompactController> createState() => _VisibilityControlsState();
}

class _VisibilityControlsState extends State<LockCompactController> {
  late bool isLocked;

  @override
  void initState() {
    super.initState();
    isLocked = widget.node.isLocked;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: theme.bgSecondary,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const THeadline2('Lock'),
          CupertinoSwitch(
            value: isLocked,
            onChanged: (val) => setState(() {
              isLocked = val;
              widget.onLockChanged(
                isLocked,
              );
            }),
          ),
        ],
      ),
    );
  }
}
