import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Teta's CTypo
class CTypo extends Equatable {
  /// Make your custom CTypo
  const CTypo({
    required this.fontFamily,
    required this.size,
    required this.weight,
    required this.height,
    required this.tracking,
  });

  /// Optional. To Setup a secondary font.
  final String? fontFamily;

  /// Font size
  final double size;

  /// Font weight
  final FontWeight weight;

  /// Font height
  final double height;

  /// Font tracking
  final double tracking;

  @override
  List<Object?> get props => [
        size,
        weight,
        height,
        tracking,
      ];
}

/// Title1
class Title1 extends CTypo {
  /// Title1
  const Title1()
      : super(
          fontFamily: 'Degular', //'Degular',
          size: 40,
          weight: FontWeight.bold,
          height: 0,
          tracking: 0.1,
        );
}

/// Headline1
class Headline1 extends CTypo {
  /// Headline1
  const Headline1()
      : super(
          fontFamily: 'Degular', //'Degular',
          size: 40,
          weight: FontWeight.w600,
          height: 0,
          tracking: 0.1,
        );
}

/// Headline2
class Headline2 extends CTypo {
  /// Headline2
  const Headline2()
      : super(
          fontFamily: 'Degular', //'Degular',
          size: 24,
          weight: FontWeight.w500,
          height: 0,
          tracking: 1,
        );
}

/// Headline3
class Headline3 extends CTypo {
  /// Headline3
  const Headline3()
      : super(
          fontFamily: null, //'Degular',
          size: 16,
          weight: FontWeight.w400,
          height: 0,
          tracking: 0,
        );
}

/// Paragraph
class Paragraph extends CTypo {
  /// Paragraph
  const Paragraph()
      : super(
          fontFamily: null,
          size: 14,
          weight: FontWeight.w500,
          height: 0,
          tracking: 0,
        );
}

/// Detail
class DetailLabel extends CTypo {
  /// Detail
  const DetailLabel()
      : super(
          fontFamily: null,
          size: 12,
          weight: FontWeight.w500,
          height: 0,
          tracking: 0,
        );
}

/// Detail
class ActionLabel extends CTypo {
  /// Detail
  const ActionLabel()
      : super(
          fontFamily: null,
          size: 14,
          weight: FontWeight.w600,
          height: 0,
          tracking: 0,
        );
}
