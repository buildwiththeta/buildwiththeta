import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Returns a Svg Picture widget
/// It wants a [FTextTypeInput] as a tag
/// It wants a [FSize] as a width
/// It wants a [FSize] as a height
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWSvgPicture extends NodeWidget {
  /// Returns a Svg Picture widget
  const OpenWSvgPicture({
    super.key,
    required super.nodeState,
    required this.image,
    required this.width,
    required this.height,
    required this.boxFit,
    required this.fill,
  });

  /// The image width
  final FSize width;

  /// The image height
  final FSize height;

  /// The image url
  final FTextTypeInput image;

  /// The image boxFit
  final FBoxFit boxFit;

  final FFill fill;

  @override
  Widget build(
    final BuildContext context,
    final TreeState state,
    final WidgetState nodeState,
  ) {
    final color = fill.type == FFillType.none
        ? null
        : fill.getColor(context, state.colorStyles, state.theme);
    final img = image.getImage(
      state: state,
      context: context,
      loop: nodeState.loop,
    ) as String;
    var result = img.isNotEmpty
        ? img
        : 'https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/logos/Theta_extended_negative.svg';
    return SvgPicture.network(
      result,
      width: width.get(
        state: state,
        context: context,
        isWidth: true,
      ),
      height: height.get(
        state: state,
        context: context,
        isWidth: false,
      ),
      // ignore: deprecated_member_use
      color: color,
      fit: BoxFit.contain,
    );
  }
}
