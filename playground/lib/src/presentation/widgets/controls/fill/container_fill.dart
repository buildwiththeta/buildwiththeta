import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/presentation/widgets/expandable_container.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../editor/blocs/styles/styles_cubit.dart';
import '../../../editor/widgets/panels/widgets/styles_panel/widgets/controls/solid_with_opacity.dart';
import 'linear_gradient.dart';
import 'radial_gradient.dart';
import 'style.dart';

class ContainerFillControl extends StatefulWidget {
  const ContainerFillControl({
    super.key,
    required this.node,
    required this.onFillChanged,
  });

  final CNode node;
  final Function(FFill fill) onFillChanged;

  @override
  State<ContainerFillControl> createState() => _ContainerFillControlState();
}

class _ContainerFillControlState extends State<ContainerFillControl> {
  late FFill fill;

  @override
  void initState() {
    super.initState();
    fill = widget.node.getAttributes[DBKeys.fill] as FFill? ?? const FFill();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Fill',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const THeadline3('Type'),
          const Gap(Grid.small),
          BlocBuilder<StylesCubit, StylesState>(
            builder: (context, state) => state.maybeWhen(
              loaded: (colors, _, __) => ThetaDesignDropdownCustom<FFillType>(
                value: fill.paletteStyle != null ? FFillType.style : fill.type,
                expanded: true,
                items: const [
                  DropdownCustomMenuItem(
                    value: FFillType.solid,
                    child: TParagraph('Solid'),
                  ),
                  DropdownCustomMenuItem(
                    value: FFillType.linearGradient,
                    child: TParagraph('Linear'),
                  ),
                  DropdownCustomMenuItem(
                    value: FFillType.radialGradient,
                    child: TParagraph('Radial'),
                  ),
                  DropdownCustomMenuItem(
                    value: FFillType.style,
                    child: TParagraph('Styles'),
                  ),
                  DropdownCustomMenuItem(
                    value: FFillType.none,
                    child: TParagraph('None'),
                  ),
                ],
                onChange: (value) {
                  final defaultValue =
                      fill.paletteStyle != null ? FFillType.style : fill.type;
                  if (value == null) return;
                  if (defaultValue == value) return;
                  if (value == FFillType.style) {
                    setState(() => fill = const FFill()
                        .ready(FFillType.solid)
                        .copyWith(
                            paletteStyle: colors
                                    .firstWhereOrNull(
                                        (element) => element.name == 'Accent')
                                    ?.name ??
                                colors.first.name));
                    widget.onFillChanged(fill);
                    return;
                  }
                  setState(() {
                    fill = const FFill().ready(value);
                    widget.onFillChanged(fill);
                  });
                },
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const Gap(Grid.medium),
          if (fill.paletteStyle != null)
            StyleFillColor(
              fill: fill,
              onFillChanged: (fill) {
                setState(() => this.fill = fill);
                widget.onFillChanged(fill);
              },
            )
          else if (fill.type == FFillType.solid)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const THeadline3('Color'),
                const Gap(Grid.small),
                SolidWithOpacityFillControl(
                  fill: fill,
                  callBack: (newFill) {
                    setState(() => fill = newFill);
                    widget.onFillChanged(fill);
                  },
                ),
              ],
            )
          else if (fill.type == FFillType.linearGradient)
            LinearGradientControl(
              fill: fill,
              onFillChanged: (fill) {
                setState(() => this.fill = fill);
                widget.onFillChanged(fill);
              },
            )
          else if (fill.type == FFillType.radialGradient)
            RadialGradientControl(
              fill: fill,
              onFillChanged: (fill) {
                setState(() => this.fill = fill);
                widget.onFillChanged(fill);
              },
            ),
        ],
      ),
    );
  }
}
