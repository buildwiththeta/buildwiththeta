import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/src/presentation/editor/widgets/app_canvas.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/rainbow.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PreviewPanel extends StatefulWidget {
  const PreviewPanel({super.key});

  @override
  State<PreviewPanel> createState() => _PreviewPanelState();
}

class _PreviewPanelState extends State<PreviewPanel> {
  final CodeController controller = CodeController(
    text: '''
import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

class RemoteWidget extends StatelessWidget {
  const RemoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return UIBox("Component Name");
  }
}''',
    language: dart,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: 450,
      margin: EI.smA,
      padding: EI.mdA,
      decoration: BoxDecoration(
        color: theme.bgPrimary,
        borderRadius: const BorderRadius.all(Radius.circular(Grid.small)),
        boxShadow: [
          BoxShadow(
            color: theme.bgGrey,
            offset: const Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    CupertinoIcons.text_alignleft,
                    size: 16,
                    color: Palette.blue,
                  ),
                  Gap(4),
                  TParagraph("Write this code"),
                ],
              ),
              BounceForSmallWidgets(
                onTap: () => launchUrlString('https://docs.buildwiththeta.com'),
                child: const Row(
                  children: [
                    TParagraph(
                      'Documentation',
                      color: Palette.blue,
                    ),
                    Gap(4),
                    Icon(
                      CupertinoIcons.link,
                      size: 16,
                      color: Palette.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(Grid.small),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.bgSecondary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(Grid.small),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.bgSecondary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(Grid.small),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                child: CodeTheme(
                  data: const CodeThemeData(styles: rainbowTheme),
                  child: CodeField(
                    controller: controller,
                    readOnly: true,
                    textStyle: GoogleFonts.azeretMono(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: theme.txtSecondary),
                    lineNumberStyle: LineNumberStyle(
                      textStyle: GoogleFonts.azeretMono(
                          fontSize: 14, height: 1.5, color: theme.txtPrimary30),
                    ),
                    background: theme.bgSecondary,
                  ),
                ),
              ),
            ),
          ),
          const Gap(Grid.medium),
          const Row(
            children: [
              Icon(
                CupertinoIcons.sparkles,
                size: 16,
                color: Palette.blue,
              ),
              Gap(4),
              TParagraph("What you'll see"),
            ],
          ),
          const Gap(Grid.small),
          Expanded(
            child: Stack(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: theme.bgSecondary,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(Grid.small))),
                  child: const IgnorePointer(
                      child: AppCanvas(
                    forPlay: true,
                  )),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(Grid.small),
                    decoration: BoxDecoration(
                      color: theme.bgPrimary,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(Grid.small)),
                      boxShadow: [
                        BoxShadow(
                          color: theme.bgGrey,
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: TDetailLabel(
                      'Preview',
                      color: theme.txtPrimary60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
