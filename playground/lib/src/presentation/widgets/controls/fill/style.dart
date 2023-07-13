import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart' hide HexColor;
import 'package:theta_models/theta_models.dart';

import '../../../editor/blocs/styles/styles_cubit.dart';
import '../../color_styles_context_menu.dart';

class StyleFillColor extends StatefulWidget {
  const StyleFillColor({
    super.key,
    required this.fill,
    required this.onFillChanged,
  });

  final FFill fill;
  final Function(FFill fill) onFillChanged;

  @override
  State<StyleFillColor> createState() => _StyleFillColorState();
}

class _StyleFillColorState extends State<StyleFillColor> {
  late FFill fill;

  @override
  void initState() {
    super.initState();
    fill = widget.fill;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TParagraph('Style'),
        const Gap(Grid.small),
        Row(
          children: [
            Expanded(
              child: Listener(
                onPointerDown: (e) {
                  context.read<StylesCubit>().state.whenOrNull(
                      loaded: (colors, texts, mode) {
                    openColorStylesContextMenu(e, context, colors, mode,
                        (color) {
                      setState(() {
                        fill = fill.copyWith(
                          paletteStyle: color.name,
                        );
                        widget.onFillChanged(fill);
                      });
                    });
                  });
                },
                child: ThetaDesignButton(
                  fill.paletteStyle ?? 'Not set',
                  isPrimary: false,
                  onTap: () => null,
                ),
              ),
            ),
            const Gap(Grid.small),
            BounceForSmallWidgets(
              onTap: () {
                setState(() {
                  fill = fill.copyWith(
                    paletteStyle: null,
                  );
                  widget.onFillChanged(fill);
                });
              },
              message: 'Clear style',
              child: const Icon(
                CupertinoIcons.xmark,
                size: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
