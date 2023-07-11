import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/app_theme/app_theme.dart';
import 'package:playground/src/core/enums/devices.dart';
import 'package:playground/src/presentation/editor/blocs/device_mode/device_mode_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/editor/editor_cubit.dart';
import 'package:playground/src/presentation/editor/blocs/styles/styles_cubit.dart';
import 'package:playground/src/presentation/editor/widgets/device_mode_bar.dart';
import 'package:playground/src/presentation/editor/widgets/theme_mode_bar.dart';
import 'package:theta_design_system/theta_design_system.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      color: theme.bgPrimary,
      padding: EI.smA,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const Gap(Grid.small),
                ValueListenableBuilder<AdaptiveThemeMode>(
                  valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
                  builder: (context, mode, child) => SvgPicture.asset(
                    AppTheme.logo(mode),
                    fit: BoxFit.contain,
                    width: 48,
                    height: 48,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: TParagraph('/ Playground'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThemeModeBar(onThemeChanged: (theme) {
                  context.read<StylesCubit>().onThemeSwitched(theme);
                  if (theme == ThemeMode.dark) {
                    AdaptiveTheme.of(context).setDark();
                  } else {
                    AdaptiveTheme.of(context).setLight();
                  }
                }),
                const Gap(Grid.medium),
                DeviceModeBar(onModeChanged: (mode) {
                  switch (mode) {
                    case DeviceMode.desktop:
                      context.read<EditorCubit>().onNodeUnfocused();
                      context.read<DeviceModeCubit>().setDesktop();
                      break;
                    case DeviceMode.laptop:
                      context.read<EditorCubit>().onNodeUnfocused();
                      context.read<DeviceModeCubit>().setLaptop();
                      break;
                    case DeviceMode.tablet:
                      context.read<EditorCubit>().onNodeUnfocused();
                      context.read<DeviceModeCubit>().setTablet();
                      break;
                    case DeviceMode.mobile:
                      context.read<EditorCubit>().onNodeUnfocused();
                      context.read<DeviceModeCubit>().setPhone();
                      break;
                  }
                }),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
