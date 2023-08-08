import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:playground/src/dependency_injection/di.dart';
import 'package:playground/src/presentation/editor/blocs/component_fit/component_fit_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/device_mode/device_mode_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/editor/editor_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/export_panel/export_panel_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/panels/panels_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/pressed_keys/pressed_keys.dart';
import 'package:playground/src/presentation/editor/blocs/styles/styles_cubit.dart';
import 'package:playground/src/presentation/editor/widgets/app_canvas.dart';
import 'package:playground/src/presentation/editor/widgets/keyboard_listener_indicator.dart';
import 'package:playground/src/presentation/editor/widgets/left_bar/left_bar.dart';
import 'package:playground/src/presentation/editor/widgets/panels/panels.dart';
import 'package:playground/src/presentation/editor/widgets/preview_panel.dart';
import 'package:playground/src/presentation/editor/widgets/right_bar/right_bar.dart';
import 'package:playground/src/presentation/editor/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

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
        BlocProvider(create: (context) => DeviceModeCubit()),
        BlocProvider(create: (context) => PanelsCubit()),
        BlocProvider(create: (context) => ComponentFitCubit()),
        BlocProvider(create: (context) => PressedKeysCubit()),
        BlocProvider(create: (context) => ExportPanelCubit()),
      ],
      child: const EditorPage(),
    );
  }
}

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  late final FocusNode focusNode = FocusNode();

  DeviceType getScreenType(DeviceModeState state) => state.when(
        phone: (s) => DeviceType.phone,
        tablet: (s) => DeviceType.tablet,
        laptop: (s) => DeviceType.laptop,
        desktop: (s) => DeviceType.desktop,
      );

  Size getScreenSize(DeviceModeState state) => state.when(
        phone: (s) => Devices.ios.iPhone13.screenSize,
        tablet: (s) => Devices.ios.iPadPro11Inches.screenSize,
        laptop: (s) => laptopInfo.screenSize,
        desktop: (s) => desktopInfo.screenSize,
      );

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
          loaded: (editorState) => ValueListenableBuilder<AdaptiveThemeMode>(
            valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
            builder: (context, mode, child) => ChangeNotifierProvider(
              create: (context) => TreeState(
                nodeOverrides: [],
                colorStyles: [],
                textStyles: [],
                theme: mode == AdaptiveThemeMode.light
                    ? ThemeMode.light
                    : ThemeMode.dark,
                forPlay: false,
                isPage: true,
                params: const [],
                states: const [],
                pageId: '',
                fit: ComponentFit.absolute,
                deviceInfo: Devices.ios.iPhone13,
                workflows: const [],
                config: const ProjectConfigModel(),
                focusedNode: null,
              ),
              child: TreeGlobalState(
                onNodeAdded: (node, parent, offset) => context
                    .read<EditorCubit>()
                    .onNodeAdded(
                        node: node,
                        parentID: parent.id,
                        customIndex: parent.children?.length.toDouble() ?? 0,
                        offset: offset),
                onNodeChanged: (node, event, deviceType) => context
                    .read<EditorCubit>()
                    .onNodeChanged(node, event, deviceType),
                onNodeFocused: (node) =>
                    context.read<EditorCubit>().onNodeFocused(node.id),
                onNodeHovered: (node) =>
                    context.read<EditorCubit>().onNodeHovered(node.id),
                onRightClick: (e, node) {},
                child: Column(
                  children: [
                    const TopBarWidget(),
                    Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTapDown: (TapDownDetails details) {
                          RenderBox? panelBox =
                              context.findRenderObject() as RenderBox?;
                          if (panelBox != null &&
                              panelBox.hitTest(BoxHitTestResult(),
                                  position: details.globalPosition)) {
                            return;
                          }
                          focusNode.requestFocus();
                          context.read<EditorCubit>().onNodeUnfocused();
                          context.read<PanelsCubit>().update(PanelsEnum.closed);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  CallbackShortcuts(
                                    bindings: {
                                      const SingleActivator(
                                              LogicalKeyboardKey.backspace):
                                          context
                                              .read<EditorCubit>()
                                              .onFocusedNodeRemoved,
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowUp): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeVertically(
                                                getScreenType(state),
                                                -1,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowDown): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeVertically(
                                                getScreenType(state),
                                                1,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowLeft): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeHorizontally(
                                                getScreenType(state),
                                                -1,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowRight): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeHorizontally(
                                                getScreenType(state),
                                                1,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowUp,
                                          shift: true): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeVertically(
                                                getScreenType(state),
                                                -10,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowDown,
                                          shift: true): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeVertically(
                                                getScreenType(state),
                                                10,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowLeft,
                                          shift: true): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeHorizontally(
                                                getScreenType(state),
                                                -10,
                                                getScreenSize(state));
                                      },
                                      const SingleActivator(
                                          LogicalKeyboardKey.arrowRight,
                                          shift: true): () {
                                        final state = context
                                            .read<DeviceModeCubit>()
                                            .state;
                                        context
                                            .read<EditorCubit>()
                                            .moveFocusedNodeHorizontally(
                                                getScreenType(state),
                                                10,
                                                getScreenSize(state));
                                      },
                                    },
                                    child: RawKeyboardListener(
                                      focusNode: focusNode,
                                      autofocus: true,
                                      onKey: (key) {
                                        if (key is RawKeyDownEvent) {
                                          context
                                              .read<PressedKeysCubit>()
                                              .add(key.logicalKey);
                                        } else if (key is RawKeyUpEvent) {
                                          context
                                              .read<PressedKeysCubit>()
                                              .remove(key.logicalKey);
                                        }
                                      },
                                      child: const AppCanvas(),
                                    ),
                                  ),
                                  const EditorLeftBar(),
                                  const EditorRightBar(),
                                  const PanelsWidget(),
                                  BlocBuilder<PressedKeysCubit,
                                      PressedKeysState>(
                                    builder: (context, state) {
                                      return KeyboardListenerIndicator(
                                        pressedKeys: state.pressedKeys.toList(),
                                        onClear: () => context
                                            .read<PressedKeysCubit>()
                                            .clear(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const PreviewPanel(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          error: (e) => Center(
            child: Text(e),
          ),
        ),
      ),
    );
  }
}
