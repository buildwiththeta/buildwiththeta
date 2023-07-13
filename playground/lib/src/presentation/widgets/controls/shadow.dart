import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/widgets/panels/widgets/styles_panel/widgets/controls/solid.dart';
import '../expandable_container.dart';

class ShadowControls extends StatefulWidget {
  const ShadowControls({
    super.key,
    required this.node,
    required this.onShadowChanged,
  });

  final CNode node;
  final Function(FShadow shadow) onShadowChanged;

  @override
  State<ShadowControls> createState() => _ShadowControlsState();
}

class _ShadowControlsState extends State<ShadowControls> {
  late FShadow shadow;
  final xController = TextEditingController();
  final yController = TextEditingController();
  final blurController = TextEditingController();
  final opacityController = TextEditingController();
  late FFill fill;

  @override
  void initState() {
    super.initState();
    shadow = widget.node.getAttributes[DBKeys.shadows] as FShadow;
    xController.text = shadow.x.value.toString();
    yController.text = shadow.y.value.toString();
    blurController.text = shadow.blur.value.toString();
    opacityController.text = shadow.opacity.size.toString();
    fill = shadow.fill;

    xController.addListener(() {
      if (xController.text.trim().isEmpty) return;
      update();
    });
    yController.addListener(() {
      if (yController.text.trim().isEmpty) return;
      update();
    });
    blurController.addListener(() {
      if (blurController.text.trim().isEmpty) return;
      update();
    });
    opacityController.addListener(() {
      if (opacityController.text.trim().isEmpty) return;
      update();
    });
  }

  update() => widget.onShadowChanged(
        shadow.copyWith(
          x: shadow.x.copyWith(
            value: xController.text,
          ),
          y: shadow.y.copyWith(
            value: yController.text,
          ),
          blur: shadow.blur.copyWith(
            value: blurController.text,
          ),
          opacity: shadow.opacity.copyWith(
            size: opacityController.text,
          ),
          fill: fill,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Shadow',
      initiallyExpanded: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(child: TDetailLabel('X')),
              Gap(Grid.small),
              Expanded(child: TDetailLabel('Y')),
            ],
          ),
          const Gap(4),
          Row(
            children: [
              Expanded(
                child: ThetaTextField(
                  controller: xController,
                  placeholder: '0',
                  keyboardType: TextInputType.number,
                ),
              ),
              const Gap(Grid.small),
              Expanded(
                child: ThetaTextField(
                  controller: yController,
                  placeholder: '0',
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const Gap(Grid.medium),
          SolidFillControl(
            fill: fill,
            callBack: (f) {
              setState(() {
                fill = f;
              });
              update();
            },
          ),
          const Gap(Grid.medium),
          const TDetailLabel('Blur'),
          const Gap(4),
          ThetaTextField(
            controller: blurController,
            placeholder: '1',
            keyboardType: TextInputType.number,
          ),
          const Gap(Grid.medium),
          const TDetailLabel('Opacity'),
          const Gap(4),
          ThetaTextField(
            controller: opacityController,
            placeholder: '1',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
