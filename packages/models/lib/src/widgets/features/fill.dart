// Flutter imports:
// ignore_for_file: public_member_api_docs, unrelated_type_equality_checks, lines_longer_than_80_chars

// Flutter imports:
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';

/// Types of a FFill
enum FFillType {
  /// Solid color
  solid,

  /// Linear gradient
  linearGradient,

  /// Radial gradient
  radialGradient,

  /// Color style
  style,

  /// Image
  image,

  /// None
  none,
}

/// Make easier including colors, gradients and images in Teta
@immutable
class FFillElement extends Equatable {
  /// Constructor
  const FFillElement({
    required this.color,
    required this.stop,
    this.opacity = 1,
  });

  /// Hex [String] (6 chars)
  final String color;

  /// [double] value for opacity
  final double opacity;

  /// [int] value for gradients
  final double stop;

  @override
  List<Object?> get props => [
        color,
        opacity,
        stop,
      ];

  static FFillElement fromJson({required final Map<String, dynamic> json}) {
    final opacity = (json['opacity'] as num? ?? 1).toDouble();
    return FFillElement(
      color: json['color'] as String,
      stop: double.tryParse('${json['stop']}') ?? 0,
      opacity: opacity >= 0 && opacity <= 1 ? opacity : 1,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'color': color,
        'stop': stop,
        'opacity': opacity,
      };

  FFillElement copyWith({
    String? color,
    double? opacity,
    double? stop,
  }) {
    return FFillElement(
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      stop: stop ?? this.stop,
    );
  }
}

/// Class to use solid colors, gradients, images inside Teta
class FFill extends Equatable {
  /// Constructor
  const FFill({
    this.type = FFillType.solid,
    this.begin,
    this.end,
    this.center,
    this.radius,
    this.boxFit,
    this.paletteStyle,
    this.levels = const [FFillElement(color: '000000', stop: 0)],
  });

  final List<FFillElement> levels;
  final FFillType type;
  final Alignment? begin;
  final Alignment? end;
  final Alignment? center;
  final double? radius;
  final FBoxFit? boxFit;
  final String? paletteStyle;

  @override
  List<Object?> get props => [
        levels,
        type,
        begin,
        end,
        center,
        radius,
        boxFit,
        paletteStyle,
      ];

  FFill get(
    final BuildContext context,
    final List<ColorStyleEntity> styles,
    final ThemeMode themeMode,
  ) {
    if (paletteStyle == null) {
      return FFill(
        levels: levels,
        type: type,
        begin: begin,
        end: end,
        center: center,
        radius: radius,
        boxFit: boxFit,
        paletteStyle: paletteStyle,
      );
    } else {
      ColorStyleEntity? model;
      for (var element in styles) {
        if (element.id == paletteStyle) model = element;
        if (element.name == paletteStyle) model = element;
      }
      if (model != null) {
        return themeMode == ThemeMode.light ? model.light : model.dark;
      } else {
        return const FFill().ready(FFillType.solid);
      }
    }
  }

  FFill copyWith({
    List<FFillElement>? levels,
    FFillType? type,
    Alignment? begin,
    Alignment? end,
    Alignment? center,
    double? radius,
    FBoxFit? boxFit,
    dynamic paletteStyle,
  }) {
    return FFill(
      levels: levels ?? this.levels,
      type: type ?? this.type,
      begin: begin ?? this.begin,
      end: end ?? this.end,
      center: center ?? this.center,
      radius: radius ?? this.radius,
      boxFit: boxFit ?? this.boxFit,
      paletteStyle: paletteStyle,
    );
  }

  /// Get Hex String value.
  /// Includes PaletteStyle checks.
  /// String is uppercased.
  String getHexColor(
    final BuildContext context,
    final List<ColorStyleEntity> styles,
    final ThemeMode themeMode,
  ) {
    FFill fill = this;
    if (paletteStyle != null) {
      ColorStyleEntity? model;
      for (var element in styles) {
        if (element.id == paletteStyle) model = element;
        if (element.name == paletteStyle) model = element;
      }
      fill = (model != null)
          ? themeMode == ThemeMode.light
              ? model.light
              : model.dark
          : const FFill().ready(FFillType.solid);
    }
    return fill.levels.first.color.toUpperCase();
  }

  Color getColor(
    final BuildContext context,
    final List<ColorStyleEntity> styles,
    final ThemeMode themeMode,
  ) {
    FFill fill = this;
    if (paletteStyle != null) {
      ColorStyleEntity? model;
      for (var element in styles) {
        if (element.id == paletteStyle) model = element;
        if (element.name == paletteStyle) model = element;
      }
      fill = (model != null)
          ? themeMode == ThemeMode.light
              ? model.light
              : model.dark
          : const FFill().ready(FFillType.solid);
    }
    final tempOpacity = fill.levels.first.opacity;
    final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
    return HexColor(fill.levels.first.color.toUpperCase()).withOpacity(opacity);
  }

  /// Set of FFill ready to be used
  FFill ready(final FFillType type) {
    if (type == FFillType.none) {
      return FFill(
        levels: const [
          FFillElement(
            color: '000000',
            stop: 0,
          ),
        ],
        type: type,
      );
    } else if (type == FFillType.radialGradient) {
      return FFill(
        levels: const [
          FFillElement(
            color: 'ffffff',
            stop: 0,
          ),
          FFillElement(
            color: '000000',
            stop: 1,
          ),
        ],
        center: Alignment.center,
        type: type,
        radius: 1,
      );
    } else if (type == FFillType.linearGradient) {
      return FFill(
        levels: const [
          FFillElement(
            color: 'ffffff',
            stop: 0,
          ),
          FFillElement(
            color: '000000',
            stop: 1,
          ),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        type: type,
      );
    } else if (type == FFillType.solid) {
      return FFill(
        levels: const [
          FFillElement(
            color: '000000',
            stop: 0,
          ),
        ],
        type: type,
      );
    } else {
      return FFill(
        levels: const [
          FFillElement(
            color: 'https://source.unsplash.com/random',
            stop: 0,
          ),
        ],
        boxFit: const FBoxFit(value: BoxFit.cover),
        type: type,
      );
    }
  }

  static FFill fromJson(final Map<String, dynamic> json) {
    if (json['color'] != null) {
      return FFill(
        levels: [
          FFillElement(
            color: (json['color'] as String).replaceAll('#', ''),
            stop: 0,
          ),
        ],
        type: FFillType.solid,
      );
    }
    if (json['pltt'] == null) {
      final levels = <FFillElement>[];
      var type = FFillType.solid;
      Alignment? begin, end, center;
      if (json['l'] != null) {
        for (final e in json['l'] as List<dynamic>) {
          levels.add(FFillElement.fromJson(json: e as Map<String, dynamic>));
        }
      }
      if (json['t'] != null) {
        if (json['t'] == 's') type = FFillType.solid;
        if (json['t'] == 'l') type = FFillType.linearGradient;
        if (json['t'] == 'r') type = FFillType.radialGradient;
        if (json['t'] == 'i') type = FFillType.image;
        if (json['t'] == 'n') type = FFillType.none;
      } else {
        type = FFillType.solid;
      }
      if (json['b'] != null) begin = alignFromJson(json, 'b');
      if (json['e'] != null) end = alignFromJson(json, 'e');
      if (json['c'] != null) center = alignFromJson(json, 'c');
      return FFill(
        levels: levels,
        type: type,
        begin: begin,
        end: end,
        center: center,
        radius: double.tryParse('${json['r']}') ?? 0,
        boxFit: FBoxFit.fromJson(json['bF'] as String),
      );
    } else {
      var value = json['pltt'] as String;
      if (value == 'Background / Blank') {
        value = 'Background / Primary';
      }
      return FFill(
        paletteStyle: value,
      );
    }
  }

  Map<String, dynamic> toJson() {
    if (paletteStyle == null) {
      String? typeString;
      if (type == FFillType.solid) typeString = 's';
      if (type == FFillType.linearGradient) typeString = 'l';
      if (type == FFillType.radialGradient) typeString = 'r';
      if (type == FFillType.image) typeString = 'i';
      if (type == FFillType.none) typeString = 'n';
      final levelsMap = <Map<String, dynamic>>[];
      for (final e in levels) {
        levelsMap.add(e.toJson());
      }
      return <String, dynamic>{
        'l': levelsMap,
        't': typeString,
        'b': alignToJson(begin),
        'e': alignToJson(end),
        'c': alignToJson(center),
        'r': radius,
        'pltt': paletteStyle,
        'bF': (boxFit != null)
            ? boxFit!.toJson()
            : const FBoxFit(value: BoxFit.cover).toJson(),
      }..removeWhere((final String key, final dynamic value) => value == null);
    } else {
      return <String, dynamic>{
        'pltt': paletteStyle,
      };
    }
  }

  static Alignment? alignFromJson(
      final Map<String, dynamic> json, final String key) {
    if (json[key] == 'bC') return Alignment.bottomCenter;
    if (json[key] == 'bL') return Alignment.bottomLeft;
    if (json[key] == 'bR') return Alignment.bottomRight;
    if (json[key] == 'c') return Alignment.center;
    if (json[key] == 'cL') return Alignment.centerLeft;
    if (json[key] == 'cR') return Alignment.centerRight;
    if (json[key] == 'tC') return Alignment.topCenter;
    if (json[key] == 'tL') return Alignment.topLeft;
    if (json[key] == 'tR') return Alignment.topRight;
    return null;
  }

  String? alignToJson(final Alignment? value) {
    if (value == Alignment.bottomCenter) return 'bC';
    if (value == Alignment.bottomLeft) return 'bL';
    if (value == Alignment.bottomRight) return 'bR';
    if (value == Alignment.center) return 'c';
    if (value == Alignment.centerLeft) return 'cL';
    if (value == Alignment.centerRight) return 'cR';
    if (value == Alignment.topCenter) return 'tC';
    if (value == Alignment.topLeft) return 'tL';
    if (value == Alignment.topRight) return 'tR';
    return null;
  }

  String alignToCode(final Alignment? value) {
    if (value == Alignment.bottomCenter) return 'Alignment.bottomCenter';
    if (value == Alignment.bottomLeft) return 'Alignment.bottomLeft';
    if (value == Alignment.bottomRight) return 'Alignment.bottomRight';
    if (value == Alignment.center) return 'Alignment.center';
    if (value == Alignment.centerLeft) return 'Alignment.centerLeft';
    if (value == Alignment.centerRight) return 'Alignment.centerRight';
    if (value == Alignment.topCenter) return 'Alignment.topCenter';
    if (value == Alignment.topLeft) return 'Alignment.topLeft';
    if (value == Alignment.topRight) return 'Alignment.topRight';
    return 'null';
  }

  String typeToCode(final FFillType? type) {
    if (type == FFillType.solid) return 'FFillType.solid';
    if (type == FFillType.linearGradient) return 'FFillType.linearGradient';
    if (type == FFillType.radialGradient) return 'FFillType.radialGradient';
    if (type == FFillType.image) return 'FFillType.image';
    if (type == FFillType.none) return 'FFillType.none';
    return 'null';
  }

  static String? toCode(
    final FFill fill,
    final BuildContext context, {
    final bool? flagConst,
    required final List<ColorStyleEntity> colorStyles,
  }) {
    ColorStyleEntity? currentPaletteElement;

    for (final e in colorStyles) {
      if (e.id == fill.paletteStyle || e.name == fill.paletteStyle) {
        currentPaletteElement = e;
      }
    }

    if (fill.type == FFillType.none) return null;

    if (fill.paletteStyle != null) {
      if (currentPaletteElement != null) {
        return "color: BlocProvider.of<ThemeCubit>(context).getColor('${currentPaletteElement.name}'),";
      } else {
        return 'color: Colors.black,';
      }
    }

    if (fill.type == FFillType.solid) {
      final tempOpacity = fill.levels.first.opacity;
      final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
      return 'color: ${flagConst ?? false ? 'const' : ''} Color(0xFF${fill.getHexColor(context, colorStyles, ThemeMode.light)}).withOpacity($opacity),';
    }
    if (fill.type == FFillType.linearGradient) {
      return '''
      gradient: LinearGradient(
        begin: ${fill.begin},
        end: ${fill.end},
        colors: <Color>${fill.levels.map((final e) {
        final tempOpacity = e.opacity;
        final opacity =
            tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
        return 'Color(0xFF${e.color.toUpperCase()}).withOpacity($opacity)';
      }).toList()},
        stops: ${fill.levels.map((final e) => e.stop).toList()},
      ),''';
    }
    if (fill.type == FFillType.radialGradient) {
      return '''
      gradient: RadialGradient(
        center: ${fill.center},
        radius: ${fill.radius},
        colors: <Color>${fill.levels.map((final e) {
        final tempOpacity = e.opacity;
        final opacity =
            tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
        return 'Color(0xFF${e.color.toUpperCase()}).withOpacity($opacity)';
      }).toList()},
        stops: ${fill.levels.map((final e) => e.stop).toList()},
      ),''';
    }
    if (fill.type == FFillType.image) {
      return '''
        image: DecorationImage(
          image: NetworkImage(${fill.levels.first.color}), 
          fit: ${fill.boxFit!.toCode()}
        )
      ''';
    }
    return null;
  }

  static String? toCodeTests(
    final FFill fill,
  ) {
    if (fill.type == FFillType.none) return null;
    if (fill.type == FFillType.solid) {
      final tempOpacity = fill.levels.first.opacity;
      final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
      return 'color: Color(0xFF${fill.levels.first.color}).withOpacity($opacity),';
    }
    if (fill.type == FFillType.linearGradient) {
      return '''
      gradient: LinearGradient(
        begin: ${fill.begin},
        end: ${fill.end},
        colors: <Color>${fill.levels.map((final e) {
        final tempOpacity = e.opacity;
        final opacity =
            tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
        return 'Color(0xFF${e.color.toUpperCase()}).withOpacity($opacity)';
      }).toList()},
        stops: ${fill.levels.map((final e) => e.stop).toList()},
      ),''';
    }
    if (fill.type == FFillType.radialGradient) {
      return '''
      gradient: RadialGradient(
        center: ${fill.center},
        radius: ${fill.radius},
        colors: <Color>${fill.levels.map((final e) {
        final tempOpacity = e.opacity;
        final opacity =
            tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;
        return 'Color(0xFF${e.color.toUpperCase()}).withOpacity($opacity)';
      }).toList()},
        stops: ${fill.levels.map((final e) => e.stop).toList()},
      ),''';
    }
    if (fill.type == FFillType.image) {
      return '''
        image: DecorationImage(
          image: NetworkImage('${fill.levels.first.color}'), 
          fit: ${fill.boxFit!.toCode()}
        ),
      ''';
    }
    return null;
  }

  @override
  String toString() => 'FFill { levels: $levels, type: $type }';
}
