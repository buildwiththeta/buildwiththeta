import 'package:collection/collection.dart';
import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';

class DynamicAttributeKey extends Reflectable {
  const DynamicAttributeKey()
      : super.fromList(const [
          metadataCapability,
          staticInvokeCapability,
        ]);
}

const dynamicAttributeKey = DynamicAttributeKey();

class AttributeKey {
  final String key;
  const AttributeKey(this.key);
}

class DynamicAttributeReflector extends Reflectable {
  const DynamicAttributeReflector() : super();
}

const dynamicAttributeReflector = DynamicAttributeReflector();

@DynamicAttributeReflector()
class DynamicAttributes {
  const DynamicAttributes();

  static const _varMapper = VariableMapper();

  /// fromJson for each class using Reflectable
  dynamic fromJson(final String key, final dynamic value) {
    try {
      /// Get all classes with this key
      final classes = dynamicAttributeKey.annotatedClasses
          .where((element) => element.metadata
              .whereType<AttributeKey>()
              .any((e) => e.key == key))
          .toList();

      /// Get the class with the same name of the key
      final targetClass = classes.firstOrNull;

      /// There is no class with this key
      if (targetClass == null) {
        /// Try to parse manually the remaining keys
        final res = manualFromJson(key, value);
        if (res != null) {
          return res;
        }
        return value;
      }

      /// Invoke the fromJson method of the class
      final i = targetClass.invoke('fromJson', [value]);
      return i;
    } catch (e) {
      Logger.printError(
        'Error in DynamicAttributes, key: $key, value: $value, error: $e',
      );
    }
  }

  ///[value] == [doc[key]]
  dynamic manualFromJson(final String key, final dynamic value) {
    try {
      switch (key) {
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
      case DBKeys.icon:
      case DBKeys.faIcon:
      case DBKeys.featherIcon:
      case DBKeys.lineIcon:
      case DBKeys.isFullWidth:
      case DBKeys.isVertical:
      case DBKeys.left:
      case DBKeys.loopVideo:
      case DBKeys.bottom:
      case DBKeys.componentName:
      case DBKeys.flag:
      case DBKeys.isBoxed:
      case DBKeys.isTight:
      case DBKeys.flexValue:
      case DBKeys.stringDropdown:
      case DBKeys.fontFamily:
      case DBKeys.right:
      case DBKeys.showControls:
      case DBKeys.startAt:
      case DBKeys.textStyleModel:
      case DBKeys.top:
      case DBKeys.isExpandedGap:
      case DBKeys.visibility:
      case DBKeys.visibleOnDesktop:
      case DBKeys.visibleOnMobile:
      case DBKeys.visibleOnTablet:
      case DBKeys.visibleOnLaptop:
      case DBKeys.fadeAnimationEnabled:
      case DBKeys.scaleAnimationEnabled:
      case DBKeys.slideAnimationEnabled:
      case DBKeys.dropdownItem:
      case DBKeys.showAppBar:
      case DBKeys.showBottomBar:
      case DBKeys.showDrawer:
      case DBKeys.isPrimary:
      case DBKeys.showCursor:
      case DBKeys.autoCorrect:
      case DBKeys.obscureText:
      case DBKeys.showBorders:
        return value;
      default:
        return value?.toJson();
    }
  }
}
