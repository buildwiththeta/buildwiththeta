import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../blocs/editor/editor_cubit.dart';
import '../../../../blocs/styles/styles_cubit.dart';
import '../panel_box.dart';
import 'widgets/colors_section.dart';
import 'widgets/texts_section.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class StylesPanel extends StatelessWidget {
  const StylesPanel({super.key});

  bool onBranchChanged(EditorState previous, EditorState current) =>
      previous.maybeWhen(
        loaded: (previous) =>
            previous.branch.id !=
            current.maybeWhen(
              loaded: (current) => current.branch.id,
              orElse: () => null,
            ),
        orElse: () => false,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorCubit, EditorState>(
      buildWhen: onBranchChanged,
      builder: (context, state) => state.maybeWhen(
        loaded: (state) => _StylesPanel(
          branchID: state.branch.id,
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _StylesPanel extends StatelessWidget {
  const _StylesPanel({
    required this.branchID,
  });

  final BranchID branchID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StylesCubit, StylesState>(
      builder: (context, state) => state.maybeWhen(
        loaded: (colors, texts, theme) => Column(
          children: [
            Expanded(
              child: ColorsPanelSectionWidget(
                colorStyles: colors,
                branchID: branchID,
              ),
            ),
            Expanded(
              child: TextsPanelSectionWidget(
                textStyles: texts,
                branchID: branchID,
              ),
            ),
          ],
        ),
        loading: () => const PanelBoxWidget(
          child: Center(
            child: ThetaCircularProgressIndicator(),
          ),
        ),
        error: (errorMessage) => const PanelBoxWidget(
          child: Center(
            child: TParagraph('Error loading styles, please try again.'),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
