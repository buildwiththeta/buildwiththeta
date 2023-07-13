import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/assets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

typedef OnAlignmentsChanged = Function(
  ResponsiveAlignment verticalAlignment,
  ResponsiveAlignment horizontalAlignment,
);

class BoxResponsiveAlignSectionControls extends StatefulWidget {
  const BoxResponsiveAlignSectionControls({
    super.key,
    required this.onAlignmentsChanged,
    required this.onAlignmentsReseted,
    required this.initialVerticalValue,
    required this.initialHorizontalValue,
  });

  final ResponsiveAlignment initialVerticalValue;
  final ResponsiveAlignment initialHorizontalValue;

  final OnAlignmentsChanged onAlignmentsChanged;
  final VoidCallback onAlignmentsReseted;

  @override
  State<BoxResponsiveAlignSectionControls> createState() =>
      _BoxResponsiveAlignSectionControlsState();
}

class _BoxResponsiveAlignSectionControlsState
    extends State<BoxResponsiveAlignSectionControls> {
  late ResponsiveAlignment verticalAlignment;
  late ResponsiveAlignment horizontalAlignment;

  @override
  void initState() {
    super.initState();
    verticalAlignment = widget.initialVerticalValue;
    horizontalAlignment = widget.initialHorizontalValue;
  }

  _handleAlignmentsChanged() => widget.onAlignmentsChanged(
        verticalAlignment,
        horizontalAlignment,
      );

  _handleVerticalAlignmentChanged(final ResponsiveAlignment value) {
    setState(() {
      verticalAlignment = value;
    });
    _handleAlignmentsChanged();
  }

  _handleHorizontalAlignmentChanged(final ResponsiveAlignment value) {
    setState(() {
      horizontalAlignment = value;
    });
    _handleAlignmentsChanged();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                border: Border.all(color: theme.bgGreyLight, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(2)),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.bgGreyLight, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(2)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: _VerticalIndicator(
                      isSelected:
                          verticalAlignment == ResponsiveAlignment.start ||
                              verticalAlignment == ResponsiveAlignment.stretch,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: _VerticalIndicator(
                      isSelected:
                          verticalAlignment == ResponsiveAlignment.end ||
                              verticalAlignment == ResponsiveAlignment.stretch,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: _HorizontalIndicator(
                      isSelected: horizontalAlignment ==
                              ResponsiveAlignment.start ||
                          horizontalAlignment == ResponsiveAlignment.stretch,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: _HorizontalIndicator(
                      isSelected: horizontalAlignment ==
                              ResponsiveAlignment.end ||
                          horizontalAlignment == ResponsiveAlignment.stretch,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(Grid.medium),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TDetailLabel('Vertical'),
                  ThetaDesignDropdownCustom(
                    value: verticalAlignment.name,
                    items: ResponsiveAlignment.values
                        .map(
                          (e) => DropdownCustomMenuItem(
                            value: e.name,
                            child: TDetailLabel(e.name),
                          ),
                        )
                        .toList(),
                    onChange: (v) =>
                        _handleVerticalAlignmentChanged(EnumToString.fromString(
                      ResponsiveAlignment.values,
                      '$v',
                    )!),
                    expanded: true,
                  ),
                  const Gap(Grid.small),
                  const TDetailLabel('Horizontal'),
                  ThetaDesignDropdownCustom(
                    value: horizontalAlignment.name,
                    items: ResponsiveAlignment.values
                        .map(
                          (e) => DropdownCustomMenuItem(
                            value: e.name,
                            child: TDetailLabel(e.name),
                          ),
                        )
                        .toList(),
                    onChange: (v) => _handleHorizontalAlignmentChanged(
                        EnumToString.fromString(
                      ResponsiveAlignment.values,
                      '$v',
                    )!),
                    expanded: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Gap(Grid.small),
        BounceForLargeWidgets(
          onTap: widget.onAlignmentsReseted,
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(
              horizontal: Grid.medium,
            ),
            decoration: BoxDecoration(
              color: theme.buttonColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(Grid.small),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.arrowTurnUpForwardIphone,
                  width: 20,
                  height: 20,
                  color: Colors.white,
                ),
                const Gap(Grid.small),
                const TParagraph(
                  'Follow phone settings',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _VerticalIndicator extends StatelessWidget {
  const _VerticalIndicator({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: 2,
      height: 24,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? theme.buttonColor : theme.bgGrey, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    );
  }
}

class _HorizontalIndicator extends StatelessWidget {
  const _HorizontalIndicator({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: 24,
      height: 2,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? theme.buttonColor : theme.bgGrey, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    );
  }
}
