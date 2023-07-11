import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/presentation/editor/blocs/styles/styles_cubit.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThemeModeBar extends StatefulWidget {
  const ThemeModeBar({
    super.key,
    required this.onThemeChanged,
  });

  final Function(ThemeMode mode) onThemeChanged;

  @override
  State<ThemeModeBar> createState() => _ThemeModeBarState();
}

class _ThemeModeBarState extends State<ThemeModeBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BounceForSmallWidgets(
          message: 'Switch to Day mode',
          onTap: () => widget.onThemeChanged(ThemeMode.light),
          child: BlocBuilder<StylesCubit, StylesState>(
            builder: (context, state) {
              return Icon(
                CupertinoIcons.sun_max,
                size: 20,
                color: state.whenOrNull(
                            loaded: (colors, text, theme) =>
                                theme == ThemeMode.light) ==
                        true
                    ? theme.buttonColor
                    : theme.txtPrimary,
              );
            },
          ),
        ),
        const Gap(Grid.medium),
        BounceForSmallWidgets(
          onTap: () => widget.onThemeChanged(ThemeMode.dark),
          child: BlocBuilder<StylesCubit, StylesState>(
            builder: (context, state) {
              return Icon(
                CupertinoIcons.moon,
                size: 20,
                color: state.whenOrNull(
                            loaded: (colors, text, theme) =>
                                theme == ThemeMode.dark) ==
                        true
                    ? theme.buttonColor
                    : theme.txtPrimary,
              );
            },
          ),
        ),
      ],
    );
  }
}
