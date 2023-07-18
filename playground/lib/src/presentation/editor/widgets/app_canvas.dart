import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:playground/src/presentation/editor/blocs/component_fit/component_fit_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/device_mode/device_mode_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/editor/editor_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/styles/styles_cubit.dart';
import 'package:playground/src/presentation/editor/widgets/line_builder.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

class AppCanvas extends StatelessWidget {
  const AppCanvas({
    super.key,
    this.forPlay = false,
  });

  final bool forPlay;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AdaptiveThemeMode>(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (context, mode, child) => ChangeNotifierProvider(
        create: (context) => TreeState(
          nodeOverrides: [],
          colorStyles: [],
          textStyles: [],
          theme: mode == AdaptiveThemeMode.light
              ? ThemeMode.light
              : ThemeMode.dark,
          forPlay: forPlay,
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
        child: Center(
          child: AnimatedPadding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 300),
            child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
              builder: (context, deviceState) => deviceState.maybeWhen(
                desktop: (s) => SizedBox(
                  width: MediaQuery.of(context).size.width - 300,
                  child: FittedBox(
                    child: DeviceFrame(
                      isFrameVisible: deviceState.maybeWhen(
                          laptop: (s) => false,
                          desktop: (s) => false,
                          orElse: () => true),
                      device: deviceState.whenOrNull(
                        desktop: (s) => desktopInfo,
                        laptop: (s) => laptopInfo,
                      )!,
                      screen: const DynamicTreeStateAttributesWidget(),
                    ),
                  ),
                ),
                orElse: () => DeviceFrame(
                  orientation: deviceState.maybeWhen(
                      phone: (s) => Orientation.portrait,
                      tablet: (s) => Orientation.portrait,
                      orElse: () => Orientation.landscape),
                  isFrameVisible: deviceState.maybeWhen(
                      desktop: (s) => false,
                      laptop: (s) => false,
                      orElse: () => true),
                  device: deviceState.when(
                    phone: (s) => Devices.ios.iPhone13,
                    tablet: (s) => Devices.ios.iPadPro11Inches,
                    laptop: (s) => laptopInfo,
                    desktop: (s) => desktopInfo,
                  ),
                  screen: const DynamicTreeStateAttributesWidget(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DynamicTreeStateAttributesWidget extends StatelessWidget {
  const DynamicTreeStateAttributesWidget({super.key});

  bool _handleDifferentDeviceModeState(
          DeviceModeState previous, DeviceModeState current) =>
      previous.when(
        phone: (s) => 1,
        tablet: (s) => 2,
        laptop: (s) => 5,
        desktop: (s) => 3,
      ) !=
      current.when(
        phone: (s) => 1,
        tablet: (s) => 2,
        laptop: (s) => 5,
        desktop: (s) => 3,
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<ComponentFitCubit, ComponentFit>(
      listener: (context, fit) {
        final state = context.read<TreeState>();
        state.onFitChanged(fit);
        state.notify();
      },
      child: BlocConsumer<DeviceModeCubit, DeviceModeState>(
        listenWhen: _handleDifferentDeviceModeState,
        listener: (context, deviceState) {
          final state = context.read<TreeState>();

          state.onDeviceChanged(
            deviceState.when(
              phone: (s) => Devices.ios.iPhone13,
              tablet: (s) => Devices.ios.iPadPro11Inches,
              laptop: (s) => laptopInfo,
              desktop: (s) => desktopInfo,
            ),
          );
        },
        buildWhen: _handleDifferentDeviceModeState,
        builder: (context, deviceState) =>
            BlocConsumer<StylesCubit, StylesState>(
          listener: (context, state) => state.whenOrNull(
            loaded: (colors, texts, theme) {
              final state = context.read<TreeState>();
              state.onColorsChanged(colors);
              state.onTextsChanged(texts);
              state.onThemeChanged(theme);
              state.notify();
              return null;
            },
          ),
          builder: (context, state) {
            final treeState = context.read<TreeState>();
            if (treeState.colorStyles.isEmpty) {
              state.maybeWhen(
                loaded: (colors, texts, theme) {
                  treeState.onColorsChanged(colors);
                  treeState.onTextsChanged(texts);
                  treeState.onThemeChanged(theme);
                  treeState.notify();
                  return null;
                },
                orElse: () => null,
              );
            }
            return BlocConsumer<EditorCubit, EditorState>(
              listener: (context, state) => state.whenOrNull(
                loaded: (editor) {
                  final state = context.read<TreeState>();
                  state.onFocusNodeChanged(editor.focusedNode);
                  state.onPageIDChanged(editor.page.id);

                  final componentFit =
                      editor.rootNode.getAttributes[DBKeys.componentFit] ==
                              'absolute'
                          ? ComponentFit.absolute
                          : ComponentFit.autoLayout;
                  context
                      .read<ComponentFitCubit>()
                      .onComponentFitChanged(componentFit);

                  if (editor.focusedNode == null) return null;

                  final res = LineBuilder().calculateLines(
                    editor.nodes,
                    editor.focusedNode!,
                    deviceState.when(
                      phone: (s) => DeviceType.phone,
                      tablet: (s) => DeviceType.tablet,
                      laptop: (s) => DeviceType.laptop,
                      desktop: (s) => DeviceType.desktop,
                    ),
                  );
                  state.onLinesChanged(res.xLines, res.yLines);
                  state.notify();
                  return null;
                },
              ),
              builder: (context, state) => state.maybeWhen(
                loaded: (editorState) => Stack(
                  children: [
                    ColoredBox(
                      color: HexColor(const FFill(
                              paletteStyle: 'Background / Primary')
                          .getHexColor(
                              context, treeState.colorStyles, treeState.theme)),
                      child: _PageWidget(
                        rootNode: editorState.rootNode,
                      ),
                    ),
                    if (editorState.focusedNode != null &&
                        !context.watch<TreeState>().forPlay)
                      Stack(
                        children: [
                          ...LineBuilder().buildLines(
                            editorState.nodes,
                            editorState.focusedNode!,
                            deviceState.when(
                              phone: (s) => DeviceType.phone,
                              tablet: (s) => DeviceType.tablet,
                              laptop: (s) => DeviceType.laptop,
                              desktop: (s) => DeviceType.desktop,
                            ),
                            deviceState.when(
                              phone: (s) => Devices.ios.iPhone13.screenSize,
                              tablet: (s) =>
                                  Devices.ios.iPadPro11Inches.screenSize,
                              laptop: (s) => laptopInfo.screenSize,
                              desktop: (s) => desktopInfo.screenSize,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                orElse: () => const SizedBox(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PageWidget extends StatelessWidget {
  const _PageWidget({required this.rootNode});

  final CNode rootNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComponentFitCubit, ComponentFit>(
        builder: (context, state) {
      if (state == ComponentFit.autoLayout) {
        return Center(
          child: rootNode.toWidget(
            context: context,
            state: WidgetState(node: rootNode, loop: 0),
          ),
        );
      }
      return rootNode.toWidget(
        context: context,
        state: WidgetState(node: rootNode, loop: 0),
      );
    });
  }
}
