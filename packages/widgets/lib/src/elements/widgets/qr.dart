import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';
import 'package:theta_design_system/theta_design_system.dart';

class OpenWQR extends NodeWidget {
  /// Returns a QR widget in Teta
  const OpenWQR({
    super.key,
    required super.nodeState,
    required this.content,
    required this.image,
    required this.withImage,
    required this.size,
    required this.fill,
  });

  final FTextTypeInput content;
  final FTextTypeInput image;
  final bool withImage;
  final FSize size;
  final FFill fill;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final tempOpacity = fill.levels.first.opacity;
    final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
    return QrImage(
      data: content.get(
        state: state,
        loop: nodeState.loop,
        context: context,
      ),
      gapless: false,
      size: size.get(
        context: context,
        isWidth: true,
        state: state,
      ),
      foregroundColor: HexColor(
        fill.getHexColor(
          context,
          context.watch<ColorStylesCubit>().state,
          context.watch<ThemeCubit>().state,
        ),
      ).withOpacity(opacity),
      embeddedImage: withImage
          ? NetworkImage(
              image.get(
                state: state,
                loop: nodeState.loop,
                context: context,
              ),
            )
          : null,
    );
  }
}
