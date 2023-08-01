import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class RotationControls extends StatefulWidget {
  const RotationControls({
    super.key,
    required this.node,
    required this.onRotationChanged,
  });

  final CNode node;

  final Function(double rotation) onRotationChanged;

  @override
  State<RotationControls> createState() => _RotationControlsState();
}

class _RotationControlsState extends State<RotationControls> {
  final rotationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    rotationController.text =
        (widget.node.getAttributes[DBKeys.rotation] as FTextTypeInput?)
                ?.value ??
            '0';
    rotationController.addListener(() {
      widget.onRotationChanged(double.tryParse(rotationController.text) ?? 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Rotation',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThetaTextField(
            controller: rotationController,
            placeholder: '',
            keyboardType: TextInputType.number,
          ),
          const Gap(Grid.small),
          const TParagraph(
            'Rotation in quarter turns, 1, 2, 3 etc.',
          ),
        ],
      ),
    );
  }
}
