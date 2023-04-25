import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Lottie widget
/// It wants a [FTextTypeInput] as a tag
/// It wants a [FSize] as a width
/// It wants a [FSize] as a height
/// It wants a [FBoxFit] as a boxFit
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWLottie extends NodeWidget {
  /// Returns a Lottie widget
  const OpenWLottie({
    super.key,
    required super.nodeState,
    required this.image,
    required this.width,
    required this.height,
    required this.boxFit,
  });

  /// The image width
  final FSize width;

  /// The image height
  final FSize height;

  /// The image url
  final FTextTypeInput image;

  /// The image boxFit
  final FBoxFit boxFit;

  @override
  Widget build(
    final BuildContext context,
    final TreeState state,
    final WidgetState nodeState,
  ) {
    return Lottie.network(
      /// if the image is null, it will return a default image
      image.value != null
          ? image.value!
          : 'https://assets10.lottiefiles.com/packages/lf20_ptplezpy.json',
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
      fit: BoxFit.contain,
    );
  }
}
