import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../../blocs/styles/styles_cubit.dart';
import '../../panel_box.dart';
import 'color_style_widget.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class ColorsPanelSectionWidget extends StatelessWidget {
  const ColorsPanelSectionWidget(
      {super.key, required this.colorStyles, required this.branchID});

  final ColorStyles colorStyles;
  final BranchID branchID;

  static const newColorStyleName = 'Untitled';
  String get _newColorStyleNameGenerator =>
      '$newColorStyleName ${colorStyles.where((e) => e.name.contains(newColorStyleName)).length + 1}';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return PanelBoxWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Grid.small),
        child: Column(
          children: [
            const Gap(Grid.small),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.square_grid_2x2,
                      size: 16,
                      color: theme.txtPrimary,
                    ),
                    const Gap(Grid.small),
                    const TParagraph('Color styles'),
                  ],
                ),
                SizedBox(
                  width: 90,
                  child: ThetaDesignElementButton(
                    icon: CupertinoIcons.add,
                    title: 'Add',
                    isSelected: false,
                    onTap: () => context.read<StylesCubit>().onColorStyleAdded(
                          ColorStyleEntity(
                            branchID: branchID,
                            name: _newColorStyleNameGenerator,
                            dark: const FFill(
                              type: FFillType.solid,
                              levels: [FFillElement(color: '000000', stop: 0)],
                            ),
                            light: const FFill(
                              type: FFillType.solid,
                              levels: [FFillElement(color: 'ffffff', stop: 0)],
                            ),
                          ),
                        ),
                  ),
                ),
              ],
            ),
            const Gap(Grid.small),
            Expanded(
              child: ListView.builder(
                itemCount: colorStyles.length,
                itemBuilder: (context, index) =>
                    ColorStyleWidget(colorStyle: colorStyles[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
