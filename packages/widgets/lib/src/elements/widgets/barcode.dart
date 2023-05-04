// Flutter imports:
import 'package:barcode_widget/barcode_widget.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWBarcode extends NodeWidget {
  /// Returns a [Align] widget in Teta
  const OpenWBarcode({
    super.key,
    required super.nodeState,
    required this.data,
    required this.barcodeType,
    required this.width,
    required this.height,
    required this.fill,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput data;
  final FTextTypeInput barcodeType;
  final FSize width;
  final FSize height;
  final FFill fill;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final tempOpacity = fill.levels.first.opacity;
    final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
    return BarcodeWidget(
      barcode: Barcode.fromType(
        EnumToString.fromString(
              BarcodeType.values,
              barcodeType.get(
                state: state,
                context: context,
                loop: nodeState.loop,
              ),
            ) ??
            BarcodeType.Code128,
      ),
      data: data.get(
        state: state,
        context: context,
        loop: nodeState.loop,
      ),
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
      color: HexColor(
        fill.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        ),
      ).withOpacity(opacity),
    );
  }
}
