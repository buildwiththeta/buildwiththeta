import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import 'color_list_item.dart';

class LinearGradientControl extends StatefulWidget {
  const LinearGradientControl({
    super.key,
    required this.fill,
    required this.onFillChanged,
  });

  final FFill fill;
  final Function(FFill fill) onFillChanged;

  @override
  State<LinearGradientControl> createState() => _LinearGradientControlState();
}

class _LinearGradientControlState extends State<LinearGradientControl> {
  late FFill fill;

  @override
  void initState() {
    super.initState();
    fill = widget.fill;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Gradient preview
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: fill.levels.map((e) => HexColor(e.color)).toList(),
              stops: fill.levels.map((e) => e.stop).toList(),
              begin: fill.begin ?? Alignment.topLeft,
              end: fill.end ?? Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.topLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.topCenter,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.topRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.centerLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.center,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.centerRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.bottomLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.bottomCenter,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.begin!,
                          Alignment.bottomRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.topLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.topCenter,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.topRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.centerLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.center,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.centerRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.bottomLeft,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.bottomCenter,
                          '',
                          true,
                        ),
                        _alignPositionIcon(
                          fill.end!,
                          Alignment.bottomRight,
                          '',
                          true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Gradient alignment
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ThetaDesignButton(
                  'Begin',
                  isPrimary: false,
                  onTap: () => _showPickerAlign(fill.begin!, 'begin'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: ThetaDesignButton(
                  'End',
                  isPrimary: false,
                  onTap: () => _showPickerAlign(fill.end!, 'end'),
                ),
              ),
            ),
          ],
        ),
        const Gap(Grid.small),
        const TParagraph(
          'Opacity and Transition: Accepts values between 0 and 1. Example: 0.5',
        ),
        Column(children: [
          for (var i = 0; i < fill.levels.length; i++)
            ColorListItem(
              key: UniqueKey(),
              element: fill.levels[i],
              onRemove: () {
                if (fill.levels.length <= 2) return;
                setState(() {
                  var updatedLevels = List<FFillElement>.from(fill.levels);
                  updatedLevels.removeAt(i);
                  fill = fill.copyWith(levels: updatedLevels);
                });
                widget.onFillChanged(fill);
              },
              onElementChanged: (element) {
                setState(() {
                  var updatedLevels = List<FFillElement>.from(fill.levels);
                  updatedLevels[i] = element;
                  updatedLevels.sort((a, b) => a.stop.compareTo(b.stop));
                  fill = fill.copyWith(levels: updatedLevels);
                });
                widget.onFillChanged(fill);
              },
            )
        ]),
        const Gap(Grid.small),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ThetaDesignButton(
            'Add Color',
            onTap: () {
              setState(() {
                fill = fill.copyWith(
                  levels: [
                    ...fill.levels,
                    const FFillElement(color: 'ffffff', stop: 1),
                  ],
                );
              });
              widget.onFillChanged(fill);
            },
          ),
        ),
      ],
    );
  }

  void _showPickerAlign(
    final Alignment align,
    final String name,
  ) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    showDialog<void>(
      context: context,
      builder: (final context) {
        return AlertDialog(
          backgroundColor: theme.bgPrimary,
          content: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: fill.levels.map((e) => HexColor(e.color)).toList(),
                begin: fill.begin!,
                end: fill.end!,
                stops: fill.levels.map((e) => e.stop).toList(),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _alignPositionIcon(align, Alignment.topLeft, name, false),
                      _alignPositionIcon(
                        align,
                        Alignment.topCenter,
                        name,
                        false,
                      ),
                      _alignPositionIcon(
                        align,
                        Alignment.topRight,
                        name,
                        false,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _alignPositionIcon(
                        align,
                        Alignment.centerLeft,
                        name,
                        false,
                      ),
                      _alignPositionIcon(align, Alignment.center, name, false),
                      _alignPositionIcon(
                        align,
                        Alignment.centerRight,
                        name,
                        false,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _alignPositionIcon(
                        align,
                        Alignment.bottomLeft,
                        name,
                        false,
                      ),
                      _alignPositionIcon(
                        align,
                        Alignment.bottomCenter,
                        name,
                        false,
                      ),
                      _alignPositionIcon(
                        align,
                        Alignment.bottomRight,
                        name,
                        false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            ThetaDesignButton(
              'Close',
              onTap: () {
                Navigator.of(context, rootNavigator: true).pop(null);
              },
            ),
          ],
        );
      },
    );
  }

  void _updatedPosition(final Alignment align, final String name) {
    setState(() {
      if (name == 'begin') fill = fill.copyWith(begin: align);
      if (name == 'end') fill = fill.copyWith(end: align);
    });
    widget.onFillChanged(fill);
    Navigator.of(context, rootNavigator: true).pop(null);
  }

  Widget _alignPositionIcon(
    final Alignment alignNode,
    final Alignment alignTarget,
    final String name,
    final bool isPreview,
  ) {
    return GestureDetector(
      onTap: () {
        if (!isPreview) _updatedPosition(alignTarget, name);
      },
      child: Container(
        width: isPreview ? 8 : 32,
        height: isPreview ? 8 : 32,
        decoration: BoxDecoration(
          color: alignTarget == alignNode
              ? Colors.white
              : isPreview
                  ? Colors.transparent
                  : Colors.white38,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
