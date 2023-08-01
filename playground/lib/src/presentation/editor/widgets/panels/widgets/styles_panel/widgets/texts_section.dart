import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../../blocs/styles/styles_cubit.dart';
import '../../panel_box.dart';
import 'text_style_widget.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class TextsPanelSectionWidget extends StatelessWidget {
  const TextsPanelSectionWidget(
      {super.key, required this.textStyles, required this.branchID});

  final TextStyles textStyles;
  final BranchID branchID;

  static const newTextStyleName = 'Untitled';
  String get _newTextStyleNameGenerator =>
      '$newTextStyleName ${textStyles.where((e) => e.name.contains(newTextStyleName)).length + 1}';

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
                      CupertinoIcons.rectangle_grid_1x2,
                      size: 16,
                      color: theme.txtPrimary,
                    ),
                    const Gap(Grid.small),
                    const TParagraph('Text styles'),
                  ],
                ),
                SizedBox(
                  width: 90,
                  child: ThetaDesignElementButton(
                    icon: CupertinoIcons.add,
                    title: 'Add',
                    isSelected: false,
                    onTap: () => context.read<StylesCubit>().onTextStyleAdded(
                          TextStyleEntity(
                            branchID: branchID,
                            name: _newTextStyleNameGenerator,
                            fontFamily: 'Poppins',
                            fontSize: const FFontSize(
                              size: 16,
                              sizeTablet: 16,
                              sizeDesktop: 16,
                            ),
                            fontWeight: const FFontWeight(),
                          ),
                        ),
                  ),
                ),
              ],
            ),
            const Gap(Grid.small),
            Expanded(
              child: ListView.builder(
                itemCount: textStyles.length,
                itemBuilder: (context, index) =>
                    TextStyleWidget(textStyle: textStyles[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
