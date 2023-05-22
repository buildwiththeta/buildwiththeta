import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class RectProperties extends Equatable {
  const RectProperties({
    required this.rect,
    this.flipRectWhileResizing = false,
    this.flipChild = false,
    this.constraintsEnabled = false,
    this.resizable = false,
    this.movable = false,
    this.hideHandlesWhenNotResizable = false,
    this.verticalAlign = ResponsiveAlignment.start,
    this.horizontalAlign = ResponsiveAlignment.start,
  });

  final ResponsiveRect rect;
  final bool flipRectWhileResizing;
  final bool flipChild;
  final bool constraintsEnabled;
  final bool resizable;
  final bool movable;
  final bool hideHandlesWhenNotResizable;
  final ResponsiveAlignment verticalAlign;
  final ResponsiveAlignment horizontalAlign;

  RectProperties copyWith({
    ResponsiveRect? rect,
    bool? flipRectWhileResizing,
    bool? flipChild,
    bool? constraintsEnabled,
    bool? resizable,
    bool? movable,
    bool? hideHandlesWhenNotResizable,
    ResponsiveAlignment? verticalAlign,
    ResponsiveAlignment? horizontalAlign,
  }) {
    return RectProperties(
      rect: rect ?? this.rect,
      flipRectWhileResizing:
          flipRectWhileResizing ?? this.flipRectWhileResizing,
      flipChild: flipChild ?? this.flipChild,
      constraintsEnabled: constraintsEnabled ?? this.constraintsEnabled,
      resizable: resizable ?? this.resizable,
      movable: movable ?? this.movable,
      hideHandlesWhenNotResizable:
          hideHandlesWhenNotResizable ?? this.hideHandlesWhenNotResizable,
      verticalAlign: verticalAlign ?? this.verticalAlign,
      horizontalAlign: horizontalAlign ?? this.horizontalAlign,
    );
  }

  Map<String, dynamic> toJson() => {
        'rect': rect.toJson(),
        'flipRectWhileResizing': flipRectWhileResizing,
        'flipChild': flipChild,
        'constraintsEnabled': constraintsEnabled,
        'resizable': resizable,
        'movable': movable,
        'hideHandlesWhenNotResizable': hideHandlesWhenNotResizable,
        'vertical_align': verticalAlign.name,
        'horizontal_align': horizontalAlign.name,
      };

  static RectProperties fromJson(Map<String, dynamic> json) => json
          .entries.isEmpty
      ? CNode.defaultRProperties
      : RectProperties(
          rect: ResponsiveRect.fromJson(json['rect']),
          flipRectWhileResizing: json['flipRectWhileResizing'],
          flipChild: json['flipChild'],
          constraintsEnabled: json['constraintsEnabled'],
          resizable: json['resizable'],
          movable: json['movable'],
          hideHandlesWhenNotResizable: json['hideHandlesWhenNotResizable'],
          verticalAlign: EnumToString.fromString(
              ResponsiveAlignment.values, json['vertical_align'] ?? 'start')!,
          horizontalAlign: EnumToString.fromString(
              ResponsiveAlignment.values, json['horizontal_align'] ?? 'start')!,
        );

  @override
  List<Object?> get props => [
        rect,
        flipRectWhileResizing,
        flipChild,
        constraintsEnabled,
        resizable,
        movable,
        hideHandlesWhenNotResizable,
        verticalAlign,
        horizontalAlign,
      ];
}
