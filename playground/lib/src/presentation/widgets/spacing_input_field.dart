import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

enum SpacingType { margin, padding, borderRadius }

class SpacingInputField extends StatefulWidget {
  const SpacingInputField({
    super.key,
    required this.type,
    required this.onSpacingChanged,
    this.topOrTopLeft = 0,
    this.bottomOrTopRight = 0,
    this.rightOrBottomRight = 0,
    this.leftOrBottomLeft = 0,
  });

  final SpacingType type;
  final double topOrTopLeft;
  final double bottomOrTopRight;
  final double rightOrBottomRight;
  final double leftOrBottomLeft;
  final Function(double topOrTopLeft, double bottomOrTopRight,
      double rightOrBottomRight, double leftOrBottomLeft) onSpacingChanged;

  @override
  State<SpacingInputField> createState() => _SpacingInputFieldState();
}

class _SpacingInputFieldState extends State<SpacingInputField> {
  bool isLinked = true;
  final topOrTopLeftController = TextEditingController();
  final rightOrBottomRightController = TextEditingController();
  final leftOrBottomLeftController = TextEditingController();
  final bottomOrTopRightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    topOrTopLeftController.text = widget.topOrTopLeft.toString();
    rightOrBottomRightController.text = widget.rightOrBottomRight.toString();
    leftOrBottomLeftController.text = widget.leftOrBottomLeft.toString();
    bottomOrTopRightController.text = widget.bottomOrTopRight.toString();

    topOrTopLeftController.addListener(emitChange);
    rightOrBottomRightController.addListener(emitChange);
    leftOrBottomLeftController.addListener(emitChange);
    bottomOrTopRightController.addListener(emitChange);
  }

  void emitChange() {
    if (isLinked) {
      rightOrBottomRightController.text = topOrTopLeftController.text;
      leftOrBottomLeftController.text = topOrTopLeftController.text;
      bottomOrTopRightController.text = topOrTopLeftController.text;
    }

    widget.onSpacingChanged(
      double.tryParse(topOrTopLeftController.text) ?? 0,
      double.tryParse(bottomOrTopRightController.text) ?? 0,
      double.tryParse(rightOrBottomRightController.text) ?? 0,
      double.tryParse(leftOrBottomLeftController.text) ?? 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            THeadline3(widget.type == SpacingType.margin
                ? 'Margin'
                : (widget.type == SpacingType.borderRadius
                    ? 'Border Radius'
                    : 'Padding')),
            const Spacer(),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() => isLinked = !isLinked);
                  emitChange();
                },
                child: Row(
                  children: [
                    Icon(
                      isLinked ? CupertinoIcons.lock : CupertinoIcons.lock_open,
                      color: theme.txtPrimary,
                    ),
                    const Gap(Grid.small),
                    TParagraph(
                      isLinked ? 'Lock' : 'Unlock',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const Gap(Grid.small),
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ThetaTextField(
                    placeholder: '',
                    controller: topOrTopLeftController,
                    keyboardType: TextInputType.number,
                  ),
                  const Gap(Grid.small),
                  TDetailLabel(
                      widget.type == SpacingType.borderRadius
                          ? 'Top Left'
                          : 'Top',
                      color: theme.txtTertiary),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ThetaTextField(
                    placeholder: '',
                    enabled: !isLinked,
                    controller: bottomOrTopRightController,
                    keyboardType: TextInputType.number,
                  ),
                  const Gap(Grid.small),
                  TDetailLabel(
                      widget.type == SpacingType.borderRadius
                          ? 'Top Right'
                          : 'Bottom',
                      color: theme.txtTertiary),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ThetaTextField(
                    placeholder: '',
                    enabled: !isLinked,
                    controller: leftOrBottomLeftController,
                    keyboardType: TextInputType.number,
                  ),
                  const Gap(Grid.small),
                  TDetailLabel(
                      widget.type == SpacingType.borderRadius
                          ? 'Bottom Left'
                          : 'Left',
                      color: theme.txtTertiary),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ThetaTextField(
                    placeholder: '',
                    enabled: !isLinked,
                    controller: rightOrBottomRightController,
                    keyboardType: TextInputType.number,
                  ),
                  const Gap(Grid.small),
                  TDetailLabel(
                      widget.type == SpacingType.borderRadius
                          ? 'Bottom Right'
                          : 'Right',
                      color: theme.txtTertiary),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
