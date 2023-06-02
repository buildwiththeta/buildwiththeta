import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hexColor) : super(fromHex(hexColor));

  static int fromHex(final String hexColor) {
    var val = '';
    val = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      val = 'FF$hexColor';
    }
    return int.parse(val, radix: 16);
  }
}
