import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/src/dependency_injection/di.dart';
import 'package:playground/src/presentation/editor/blocs/device_mode/device_mode_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/editor/editor_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/styles/styles_cubit.dart';
import 'package:playground/src/presentation/editor/widgets/top_bar.dart';
import 'package:theta_design_system/theta_design_system.dart';

class EditorConnector extends StatelessWidget {
  const EditorConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              EditorCubit(getIt(), getIt(), getIt())..loadProject(),
        ),
        BlocProvider(
          create: (context) => StylesCubit()..load(ThemeMode.light),
        ),
        BlocProvider(
          create: (context) => DeviceModeCubit(),
        ),
      ],
      child: const EditorPage(),
    );
  }
}

class EditorPage extends StatelessWidget {
  const EditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Scaffold(
      backgroundColor: theme.bgSecondary,
      body: BlocBuilder<EditorCubit, EditorState>(
        builder: (context, state) => state.when(
          loading: () => const Center(
            child: ThetaCircularProgressIndicator(),
          ),
          loaded: (editorState) => const Column(
            children: [
              TopBarWidget(),
            ],
          ),
          error: (e) => Center(
            child: Text(e),
          ),
        ),
      ),
    );
  }
}
