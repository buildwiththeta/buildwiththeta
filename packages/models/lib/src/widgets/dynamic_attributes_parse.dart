import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';

class DynamicAttributes {
  const DynamicAttributes();

  static const _varMapper = VariableMapper();

  /// fromJson for each class using Reflectable
  dynamic fromJson(final String key, final dynamic value) {
    final res = manualFromJson(key, value);
    if (res != null) {
      return res;
    }
    return value;
  }

  ///[value] == [doc[key]]
  dynamic manualFromJson(final String key, final dynamic value) {
    try {
      switch (key) {
        case DBKeys.align:
          return FAlign.fromJson(value);
        case DBKeys.blendMode:
          return FBlendMode.fromJson(value);
        case DBKeys.borderRadius:
          return FBorderRadius.fromJson(value);
        case DBKeys.borderStyle:
          return FBorderStyle.fromJson(value);
        case DBKeys.borders:
        case DBKeys.activeBorders:
          return FBorder.fromJson(value);
        case DBKeys.boxFit:
          return FBoxFit.fromJson(value);
        case DBKeys.conditionType:
          return FConditionType.fromJson(value);
        case DBKeys.crossAxisAlignment:
          return FCrossAxisAlignment.fromJson(value);
        case DBKeys.direction:
          return FDirection.fromJson(value);
        case DBKeys.bgFill:
        case DBKeys.textFill:
        case DBKeys.activeFill:
        case DBKeys.borderFill:
        case DBKeys.fill:
          return FFill.fromJson(value);
        case DBKeys.fontSize:
          return FFontSize.fromJson(value);
        case DBKeys.fontStyle:
          return FFontStyle.fromJson(value);
        case DBKeys.fontWeight:
          return FFontWeight.fromJson(value);
        case DBKeys.iconType:
          return FIconType.fromJson(value);
        case DBKeys.imageType:
          return FImageType.fromJson(value);
        case DBKeys.mainAxisAlignment:
          return FMainAxisAlignment.fromJson(value);
        case DBKeys.mainAxisSize:
          return FMainAxisSize.fromJson(value);
        case DBKeys.margins:
        case DBKeys.padding:
          return FMargins.fromJson(value);
        case DBKeys.shadows:
          return FShadow.fromJson(value);
        case DBKeys.minWidth:
        case DBKeys.maxWidth:
        case DBKeys.minHeight:
        case DBKeys.maxHeight:
          return FSizeRange.fromJson(value);
        case DBKeys.width:
        case DBKeys.widthFactor:
        case DBKeys.height:
        case DBKeys.heightFactor:
          return FSize.fromJson(value);
        case DBKeys.textAlign:
          return FTextAlign.fromJson(value);
        case DBKeys.textDecoration:
          return FTextDecoration.fromJson(value);
        case DBKeys.textDirection:
          return FTextDirection.fromJson(value);
        case DBKeys.textStyle:
          return FTextStyle.fromJson(value);
        case DBKeys.image:
        case DBKeys.value:
        case DBKeys.flexValue:
        case DBKeys.rotateX:
        case DBKeys.rotateY:
        case DBKeys.rotateZ:
        case DBKeys.duration:
        case DBKeys.mainAxisSpacing:
        case DBKeys.crossAxisCount:
        case DBKeys.crossAxisSpacing:
        case DBKeys.maxLines:
        case DBKeys.minLines:
        case DBKeys.maxLenght:
        case DBKeys.childAspectRatio:
        case DBKeys.labelText:
        case DBKeys.rotation:
          return FTextTypeInput.fromJson(value);
        case DBKeys.overrides:
          {
            return Override.fromJsonList(value ?? []);
          }
        case 'params':
          {
            final params = <VariableEntity>[];
            if (value != null) {
              for (final e in value as List<Map<String, dynamic>>) {
                params.add(_varMapper.fromJson(e));
              }
            }
            return params;
          }
        case 'states':
          {
            final states = <VariableEntity>[];
            if (value != null) {
              for (final e in value as List<Map<String, dynamic>>) {
                states.add(_varMapper.fromJson(e));
              }
            }
            return states;
          }
        default:
          return value;
      }
    } catch (e) {
      Logger.printError(
        'Error in key_costants.dart, key: $key, value: $value, error: $e',
      );
    }
  }

  dynamic toJson(final String key, final dynamic value) {
    switch (key) {
      case DBKeys.overrides:
        {
          return (value as List<Override>).map((e) => e.toJson()).toList();
        }
      case DBKeys.icon:
      case DBKeys.faIcon:
      case DBKeys.featherIcon:
      case DBKeys.lineIcon:
      case DBKeys.isVertical:
      case DBKeys.componentName:
      case DBKeys.flag:
      case DBKeys.fontFamily:
      case DBKeys.textStyleModel:
      case DBKeys.visibility:
      case DBKeys.visibleOnDesktop:
      case DBKeys.visibleOnMobile:
      case DBKeys.visibleOnTablet:
      case DBKeys.visibleOnLaptop:
      case DBKeys.fadeAnimationEnabled:
      case DBKeys.scaleAnimationEnabled:
      case DBKeys.slideAnimationEnabled:
      case DBKeys.isPrimary:
      case DBKeys.showCursor:
        return value;
      default:
        return value?.toJson();
    }
  }
}
