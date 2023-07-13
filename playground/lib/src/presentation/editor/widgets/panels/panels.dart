import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/panels/panels_cubit.dart';
import 'widgets/panel_box.dart';
import 'widgets/styles_panel/styles.dart';
import 'widgets/tree_list_panel/tree_list.dart';
import 'widgets/widgets_panel/widgets.dart';

class PanelsWidget extends StatelessWidget {
  const PanelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PanelsCubit, PanelsState>(
      builder: (context, state) => state.when(
        closed: () => const SizedBox(),
        add: () => const PanelBoxWidget(child: WidgetsPanel()),
        styles: () => const StylesPanel(),
        tree: () => const PanelBoxWidget(child: TreeListPanel()),
      ),
    );
  }
}
