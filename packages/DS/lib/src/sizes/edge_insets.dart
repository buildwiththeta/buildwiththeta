import 'package:flutter/material.dart';
import './grid.dart';

/// EdgeInsets
class EI {
  /// .all(8)
  static const smA = EdgeInsets.all(Grid.small);

  /// .symmetric(vertical: 8)
  static const smV = EdgeInsets.symmetric(vertical: Grid.small);

  /// .symmetric(horizontal: 8)
  static const smH = EdgeInsets.symmetric(horizontal: Grid.small);

  /// .only(top: 8)
  static const smT = EdgeInsets.only(top: Grid.small);

  /// .only(top: 8)
  static const smL = EdgeInsets.only(left: Grid.small);

  /// .only(top: 8)
  static const smR = EdgeInsets.only(right: Grid.small);

  /// .only(top: 8)
  static const smB = EdgeInsets.only(bottom: Grid.small);

  /// .all(16)
  static const mdA = EdgeInsets.all(Grid.medium);

  /// .symmetric(vertical: 16)
  static const mdV = EdgeInsets.symmetric(vertical: Grid.medium);

  /// .symmetric(horizontal: 16)
  static const mdH = EdgeInsets.symmetric(horizontal: Grid.medium);

  /// .only(top: 16)
  static const mdT = EdgeInsets.only(top: Grid.medium);

  /// .only(top: 16)
  static const mdL = EdgeInsets.only(left: Grid.medium);

  /// .only(top: 16)
  static const mdR = EdgeInsets.only(right: Grid.medium);

  /// .only(top: 16)
  static const mdB = EdgeInsets.only(bottom: Grid.medium);

  /// .all(32)
  static const lgA = EdgeInsets.all(Grid.large);

  /// .symmetric(vertical: 32)
  static const lgV = EdgeInsets.symmetric(vertical: Grid.large);

  /// .symmetric(horizontal: 32)
  static const lgH = EdgeInsets.symmetric(horizontal: Grid.large);

  /// .only(top: 32)
  static const lgT = EdgeInsets.only(top: Grid.large);

  /// .only(top: 32)
  static const lgL = EdgeInsets.only(left: Grid.large);

  /// .only(top: 32)
  static const lgR = EdgeInsets.only(right: Grid.large);

  /// .only(top: 32)
  static const lgB = EdgeInsets.only(bottom: Grid.large);
}
