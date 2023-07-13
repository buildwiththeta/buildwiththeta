import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

import '../../../../blocs/editor/editor_cubit.dart';
import 'widget_element.dart';

class WidgetsPanel extends StatelessWidget {
  const WidgetsPanel({super.key});

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
        loaded: (state) => _WidgetsPanel(
          branch: state.branch,
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _WidgetsPanel extends StatefulWidget {
  const _WidgetsPanel({
    required this.branch,
  });

  final BranchEntity branch;

  static const newPageName = 'Untitled';

  @override
  State<_WidgetsPanel> createState() => _WidgetsPanelState();
}

class _WidgetsPanelState extends State<_WidgetsPanel> {
  final widgets = [
    ContainerOpenNode(id: '-1'),
    TextOpenNode(id: '-1'),
    ImageOpenNode(id: '-1'),
    AlignOpenNode(id: '-1'),
    ColumnOpenNode(id: '-1'),
    RowOpenNode(id: '-1'),
    IconOpenNode(id: '-1'),
    ListViewOpenNode(id: '-1'),
    if (kDebugMode) StackOpenNode(id: '-1'),
  ];

  String _newPageNameGenerator(Pages pages) =>
      '${_WidgetsPanel.newPageName} ${pages.where((e) => e.name.contains(_WidgetsPanel.newPageName)).length + 1}';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Grid.small),
      child: Column(
        children: [
          const Gap(Grid.small),
          const Row(
            children: [
              Icon(
                CupertinoIcons.square_on_square,
                size: 16,
              ),
              Gap(Grid.small),
              TParagraph('Blocks'),
            ],
          ),
          const Gap(Grid.small),
          const Gap(Grid.small),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1,
                ),
                itemCount: widgets.length,
                itemBuilder: (context, index) =>
                    WidgetElement(node: widgets[index])),
          ),
        ],
      ),
    );
  }
}
