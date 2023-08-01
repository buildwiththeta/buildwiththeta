import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import 'color_list_item.dart';

class RadialGradientControl extends StatefulWidget {
  const RadialGradientControl({
    super.key,
    required this.fill,
    required this.onFillChanged,
  });

  final FFill fill;
  final Function(FFill fill) onFillChanged;

  @override
  State<RadialGradientControl> createState() => _RadialGradientControlState();
}

class _RadialGradientControlState extends State<RadialGradientControl> {
  final radiusController = TextEditingController();
  late FFill fill;

  @override
  void initState() {
    super.initState();
    fill = widget.fill;
    radiusController.text = fill.radius.toString();
    radiusController.addListener(() {
      final radius = radiusController.text.trim();
      if (double.tryParse(radius) != null) {
        setState(() {
          fill = fill.copyWith(radius: double.tryParse(radius) ?? 0);
        });
        widget.onFillChanged(fill);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gradient preview
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: fill.levels.map((e) => HexColor(e.color)).toList(),
              stops: fill.levels.map((e) => e.stop).toList(),
              center: fill.center!,
              radius: fill.radius!,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        // Center
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ThetaDesignButton(
                  'Center',
                  onTap: () {
                    // setState(() => align = widget.fill.center);
                    showPickerAlign(fill.center!, 'center');
                  },
                ),
              ),
            ),
            Expanded(
              child: ThetaTextField(
                controller: radiusController,
                placeholder: 'Radius',
              ),
            ),
          ],
        ),
        const Gap(Grid.small),
        const TParagraph(
          'Opacity and Transition: Accepts values between 0 and 1. Example: 0.5',
        ),
        // Colors
        Column(children: [
          for (var i = 0; i < fill.levels.length; i++)
            ColorListItem(
              key: UniqueKey(),
              element: fill.levels[i],
              onRemove: () {
                if (fill.levels.length <= 2) return;
                setState(() {
                  fill = fill.copyWith(
                    levels: [
                      ...fill.levels.sublist(0, i),
                      ...fill.levels.sublist(i + 1),
                    ],
                  );
                });
                widget.onFillChanged(fill);
              },
              onElementChanged: (element) {
                setState(() {
                  fill = fill.copyWith(
                    levels: [
                      ...fill.levels.sublist(0, i),
                      element,
                      ...fill.levels.sublist(i + 1),
                    ]..sort((a, b) => a.stop.compareTo(b.stop)),
                  );
                });
                widget.onFillChanged(fill);
              },
            )
        ]),
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

  void showPickerAlign(Alignment align, String name) {
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
              gradient: RadialGradient(
                colors: fill.levels.map((e) => HexColor(e.color)).toList(),
                center: fill.center!,
                radius: fill.radius!,
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
                      alignPositionIcon(
                        align,
                        Alignment.topLeft,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.topCenter,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.topRight,
                        name,
                        isPreview: false,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alignPositionIcon(
                        align,
                        Alignment.centerLeft,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.center,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.centerRight,
                        name,
                        isPreview: false,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alignPositionIcon(
                        align,
                        Alignment.bottomLeft,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.bottomCenter,
                        name,
                        isPreview: false,
                      ),
                      alignPositionIcon(
                        align,
                        Alignment.bottomRight,
                        name,
                        isPreview: false,
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

  void _updatedPosition(Alignment align, String name) {
    if (name == 'center') {
      setState(() => fill = fill.copyWith(center: align));
    }
    widget.onFillChanged(fill);
    Navigator.of(context, rootNavigator: true).pop(null);
  }

  Widget alignPositionIcon(
    Alignment alignNode,
    Alignment alignTarget,
    String name, {
    required bool isPreview,
  }) {
    return GestureDetector(
      onTap: () => _updatedPosition(alignTarget, name),
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
