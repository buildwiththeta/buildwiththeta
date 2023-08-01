import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class TraslationControls extends StatefulWidget {
  const TraslationControls({
    super.key,
    required this.node,
    required this.onTraslationChanged,
  });

  final CNode node;
  final Function(int x, int y) onTraslationChanged;

  @override
  State<TraslationControls> createState() => _TraslationControlsState();
}

class _TraslationControlsState extends State<TraslationControls> {
  final traslationXController = TextEditingController();
  final traslationYController = TextEditingController();

  @override
  void initState() {
    super.initState();
    traslationXController.text =
        widget.node.getAttributes[DBKeys.xTranslation] ?? '0';
    traslationYController.text =
        widget.node.getAttributes[DBKeys.yTranslation] ?? '0';

    traslationXController.addListener(() {
      widget.onTraslationChanged(
        int.tryParse(traslationXController.text) ?? 0,
        int.tryParse(traslationYController.text) ?? 0,
      );
    });
    traslationYController.addListener(() {
      widget.onTraslationChanged(
        int.tryParse(traslationXController.text) ?? 0,
        int.tryParse(traslationYController.text) ?? 0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Traslation',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const THeadline3('Traslation X'),
          const Gap(Grid.medium),
          ThetaTextField(
            controller: traslationXController,
            placeholder: '',
            keyboardType: TextInputType.number,
          ),
          const Gap(Grid.large),
          const THeadline3('Traslation Y'),
          const Gap(Grid.medium),
          ThetaTextField(
            controller: traslationYController,
            placeholder: '',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
