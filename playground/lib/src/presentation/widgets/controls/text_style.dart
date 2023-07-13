import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/blocs/styles/styles_cubit.dart';
import '../expandable_container.dart';
import '../selection_tab.dart';
import '../text_styles_context_menu.dart';

class TextStyleControls extends StatefulWidget {
  const TextStyleControls({
    super.key,
    required this.node,
    required this.deviceType,
    required this.onTextStyleChanged,
  });

  final CNode node;
  final DeviceType deviceType;
  final Function(FTextStyle textStyle) onTextStyleChanged;

  @override
  State<TextStyleControls> createState() => _TextStyleControlsState();
}

class _TextStyleControlsState extends State<TextStyleControls> {
  late FTextStyle nodeTextStyle;

  final fontSizeController = TextEditingController();
  bool showFontList = false;
  bool showStylesList = false;

  @override
  void initState() {
    super.initState();
    nodeTextStyle =
        widget.node.getAttributes[DBKeys.textStyle] ?? const FTextStyle();

    fontSizeController.text = nodeTextStyle.fontSize
        .get(context, forPlay: false, deviceType: widget.deviceType)
        .toString();
    fontSizeController.addListener(() {
      if (widget.deviceType == DeviceType.phone) {
        nodeTextStyle = nodeTextStyle.copyWith(
          fontSize: nodeTextStyle.fontSize.copyWith(
            size: double.tryParse(fontSizeController.text) ?? 0,
          ),
        );
      } else if (widget.deviceType == DeviceType.tablet) {
        nodeTextStyle = nodeTextStyle.copyWith(
          fontSize: nodeTextStyle.fontSize.copyWith(
            sizeTablet: double.tryParse(fontSizeController.text) ?? 0,
          ),
        );
      } else {
        nodeTextStyle = nodeTextStyle.copyWith(
          fontSize: nodeTextStyle.fontSize.copyWith(
            sizeDesktop: double.tryParse(fontSizeController.text) ?? 0,
          ),
        );
      }
      widget.onTextStyleChanged(nodeTextStyle);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    final googleFonts = GoogleFonts.asMap();
    return ExpandableContainer(
      title: 'Text Style',
      child: Column(
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
                      openTextStylesContextMenu(e, context, texts, mode,
                          (textStyle) {
                        setState(() {
                          nodeTextStyle = nodeTextStyle.copyWith(
                            textStyleModel: textStyle.name,
                          );
                          widget.onTextStyleChanged(nodeTextStyle);
                        });
                      });
                    });
                  },
                  child: ThetaDesignButton(
                    nodeTextStyle.textStyleModel ?? 'Not set',
                    isPrimary: false,
                    onTap: () => null,
                  ),
                ),
              ),
              const Gap(Grid.small),
              BounceForSmallWidgets(
                onTap: () {
                  setState(() {
                    showStylesList = false;
                    nodeTextStyle = nodeTextStyle.setModelNull();
                    widget.onTextStyleChanged(nodeTextStyle);
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
          if (nodeTextStyle.textStyleModel == null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(Grid.medium),
                const TParagraph('Size'),
                const Gap(Grid.small),
                ThetaTextField(
                  controller: fontSizeController,
                  placeholder: '',
                ),
                const Gap(Grid.medium),
                const TParagraph('Family'),
                const Gap(Grid.small),
                SizedBox(
                  width: double.infinity,
                  child: ThetaDesignButton(
                    nodeTextStyle.fontFamily,
                    isPrimary: false,
                    onTap: () => setState(() => showFontList = !showFontList),
                  ),
                ),
                if (showFontList)
                  Container(
                    margin: const EdgeInsets.only(top: Grid.small),
                    decoration: BoxDecoration(
                      color: theme.bgSecondary,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    height: 200,
                    child: ListView.builder(
                      itemCount: googleFonts.length,
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () => setState(() {
                            nodeTextStyle = nodeTextStyle.copyWith(
                              fontFamily: googleFonts.keys.toList()[i],
                            );
                            widget.onTextStyleChanged(nodeTextStyle);
                            showFontList = false;
                          }),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Grid.small, vertical: 4),
                                child:
                                    TParagraph(googleFonts.keys.toList()[i])),
                          ),
                        );
                      },
                    ),
                  ),
                const Gap(Grid.medium),
                const TParagraph('Weight'),
                const Gap(Grid.small),
                ThetaDesignDropdownCustom(
                  value: nodeTextStyle.fontWeight.weight.value,
                  expanded: true,
                  items: const [
                    DropdownCustomMenuItem(
                        value: 200, child: TParagraph('200 - Thin')),
                    DropdownCustomMenuItem(
                        value: 300, child: TParagraph('300 - Light')),
                    DropdownCustomMenuItem(
                        value: 400, child: TParagraph('400 - Regular')),
                    DropdownCustomMenuItem(
                        value: 500, child: TParagraph('500 - Medium')),
                    DropdownCustomMenuItem(
                        value: 600, child: TParagraph('600 - SemiBold')),
                    DropdownCustomMenuItem(
                        value: 700, child: TParagraph('700 - Bold')),
                    DropdownCustomMenuItem(
                        value: 800, child: TParagraph('800 - ExtraBold')),
                    DropdownCustomMenuItem(
                        value: 900, child: TParagraph('900 - Black')),
                  ],
                  onChange: (value) {
                    nodeTextStyle = nodeTextStyle.copyWith(
                      fontWeight: FFontWeight(
                        weight: FontWeight.values
                            .firstWhere((e) => e.value == value),
                      ),
                    );
                    widget.onTextStyleChanged(nodeTextStyle);
                  },
                ),
              ],
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(Grid.medium),
              const TParagraph('Font Style'),
              const Gap(Grid.small),
              Row(
                children: [
                  SelectionTab(
                    isSelected:
                        nodeTextStyle.fontStyle.value == FontStyle.normal,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        fontStyle: const FFontStyle(value: FontStyle.normal),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.title,
                  ),
                  SelectionTab(
                    isSelected:
                        nodeTextStyle.fontStyle.value == FontStyle.italic,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        fontStyle: const FFontStyle(value: FontStyle.italic),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_italic_rounded,
                  ),
                ],
              ),
              const Gap(Grid.medium),
              const TParagraph('Alignment'),
              const Gap(Grid.small),
              Row(
                children: [
                  SelectionTab(
                    isSelected: nodeTextStyle.textAlign.value == TextAlign.left,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textAlign: const FTextAlign(value: TextAlign.left),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_align_left,
                  ),
                  SelectionTab(
                    isSelected:
                        nodeTextStyle.textAlign.value == TextAlign.center,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textAlign: const FTextAlign(value: TextAlign.center),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_align_center,
                  ),
                  SelectionTab(
                    isSelected:
                        nodeTextStyle.textAlign.value == TextAlign.right,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textAlign: const FTextAlign(value: TextAlign.right),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_align_right,
                  ),
                ],
              ),
              const Gap(Grid.medium),
              const TParagraph('Decoration'),
              const Gap(Grid.small),
              Row(
                children: [
                  SelectionTab(
                    isSelected: nodeTextStyle.textDecoration.textDecoration ==
                        TextDecoration.none,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textDecoration: const FTextDecoration(
                          textDecoration: TextDecoration.none,
                        ),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.title,
                  ),
                  SelectionTab(
                    isSelected: nodeTextStyle.textDecoration.textDecoration ==
                        TextDecoration.underline,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textDecoration: const FTextDecoration(
                          textDecoration: TextDecoration.underline,
                        ),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_underline,
                  ),
                  SelectionTab(
                    isSelected: nodeTextStyle.textDecoration.textDecoration ==
                        TextDecoration.lineThrough,
                    onTap: () => setState(() {
                      nodeTextStyle = nodeTextStyle.copyWith(
                        textDecoration: const FTextDecoration(
                          textDecoration: TextDecoration.lineThrough,
                        ),
                      );
                      widget.onTextStyleChanged(nodeTextStyle);
                    }),
                    icon: Icons.format_strikethrough,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
