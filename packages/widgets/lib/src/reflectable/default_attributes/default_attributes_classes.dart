import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

import 'index.dart';

abstract class DefaultAttributesAdapter {
  const DefaultAttributesAdapter();

  /// Get the default attributes for a widget
  Map<String, dynamic> get get;
}

/// Align
@dynamicDefaultAttribute
@NodeKey(NType.align)
class AlignWidgetDefaultAttributes extends DefaultAttributesAdapter {
  const AlignWidgetDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.align: FAlign(),
      };

  AlignWidgetDefaultAttributes.create() : this();
}

/// Button
@dynamicDefaultAttribute
@NodeKey(NType.button)
class ButtonDefaultAttributes extends DefaultAttributesAdapter {
  const ButtonDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: 'Click here'),
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: 'max',
          sizeDesktop: 'max',
        ),
        DBKeys.height: FSize(
          size: '48',
          sizeTablet: '48',
          sizeDesktop: '48',
        ),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [8, 8, 8, 8],
          radiusTablet: null,
          radiusDesktop: null,
        ),
        DBKeys.fill: FFill(
          levels: [
            FFillElement(color: '3285FF', stop: 0),
          ],
        ),
        DBKeys.textStyle: FTextStyle(
          textAlign: FTextAlign(
            value: TextAlign.center,
          ),
          fill: FFill(
            levels: [
              FFillElement(color: 'FFFFFF', stop: 0),
            ],
          ),
        ),
        DBKeys.actionValue: FTextTypeInput(),
        DBKeys.pageTransition: FPageTransition(),
        DBKeys.align: FAlign(),
      };

  ButtonDefaultAttributes.create() : this();
}

/// Column, Row
@dynamicDefaultAttribute
@NodeKey(NType.column)
@NodeKey(NType.row)
class FlexDefaultAttributes extends DefaultAttributesAdapter {
  const FlexDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.mainAxisAlignment: FMainAxisAlignment(
          value: MainAxisAlignment.start,
        ),
        DBKeys.crossAxisAlignment: FCrossAxisAlignment(
          value: CrossAxisAlignment.start,
        ),
        DBKeys.mainAxisSize: FMainAxisSize(
          value: MainAxisSize.max,
        ),
      };

  FlexDefaultAttributes.create() : this();
}

/// Component
@dynamicDefaultAttribute
@NodeKey(NType.component)
class ComponentDefaultAttributes extends DefaultAttributesAdapter {
  const ComponentDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  ComponentDefaultAttributes.create() : this();
}

/// Condition
@dynamicDefaultAttribute
@NodeKey(NType.condition)
class ConditionDefaultAttributes extends DefaultAttributesAdapter {
  const ConditionDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.valueOfCondition: FTextTypeInput(),
        DBKeys.conditionType: FConditionType(),
      };

  ConditionDefaultAttributes.create() : this();
}

/// Image, Container
@dynamicDefaultAttribute
@NodeKey(NType.container)
@NodeKey(NType.image)
class BoxDefaultAttributes extends DefaultAttributesAdapter {
  const BoxDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.minWidth: FSize(
          size: '0',
          sizeTablet: '0',
          sizeDesktop: '0',
        ),
        DBKeys.maxWidth: FSize(
          size: 'max',
          sizeTablet: 'max',
          sizeDesktop: 'max',
        ),
        DBKeys.minHeight: FSize(
          size: '0',
          sizeTablet: '0',
          sizeDesktop: '0',
        ),
        DBKeys.maxHeight: FSize(
          size: '250',
          sizeTablet: '250',
          sizeDesktop: '250',
        ),
        DBKeys.width: FSize(
          size: '150',
          sizeTablet: '150',
          sizeDesktop: '150',
        ),
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: '150',
          sizeDesktop: '150',
        ),
        DBKeys.margins: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
        DBKeys.padding: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [0, 0, 0, 0],
          radiusTablet: null,
          radiusDesktop: null,
        ),
        DBKeys.shadows: FShadow(
          x: FTextTypeInput(value: '0'),
          y: FTextTypeInput(value: '0'),
          spread: FTextTypeInput(value: '8'),
          blur: FTextTypeInput(value: '16'),
          fill: FFill(type: FFillType.none),
          opacity: FSize(
            size: '0',
            sizeTablet: '0',
            sizeDesktop: '0',
          ),
        ),
        DBKeys.fill: FFill(),
        DBKeys.borders: FBorder(
          fill: FFill(),
          width: FMargins(
            margins: [0, 0, 0, 0],
            marginsTablet: [0, 0, 0, 0],
            marginsDesktop: [0, 0, 0, 0],
          ),
          style: FBorderStyle(
            value: BorderStyle.none,
          ),
        ),
        DBKeys.image: FTextTypeInput(),
        DBKeys.boxFit: FBoxFit(),
      };

  BoxDefaultAttributes.create() : this();
}

/// Icon, all types.
@dynamicDefaultAttribute
@NodeKey(NType.icon)
class IconDefaultAttributes extends DefaultAttributesAdapter {
  const IconDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.icon: 'plus',
        DBKeys.width: FSize(
          size: '24',
          sizeTablet: '32',
          sizeDesktop: '40',
        ),
        DBKeys.fill: FFill(),
      };

  IconDefaultAttributes.create() : this();
}

/// ListView
@dynamicDefaultAttribute
@NodeKey(NType.listView)
@NodeKey(NType.listViewBuilder)
class ListViewDefaultAttributes extends DefaultAttributesAdapter {
  const ListViewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.isVertical: true,
        DBKeys.flag: true,
        DBKeys.isListView: true,
        DBKeys.isPrimary: true,
        DBKeys.isFullWidth: false,
        DBKeys.physic: FPhysic(),
        DBKeys.mainAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.crossAxisCount: FTextTypeInput(value: '2'),
        DBKeys.crossAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.childAspectRatio: FTextTypeInput(value: '1'),
      };

  ListViewDefaultAttributes.create() : this();
}

/// Lottie
@dynamicDefaultAttribute
@NodeKey(NType.lottie)
class LottieDefaultAttributes extends DefaultAttributesAdapter {
  const LottieDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: 'max',
          sizeDesktop: 'max',
        ),
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: '150',
          sizeDesktop: '150',
        ),
        DBKeys.image: FTextTypeInput(
          value: 'https://assets6.lottiefiles.com/packages/lf20_c7mbzzus.json',
        ),
        DBKeys.boxFit: FBoxFit(
          value: BoxFit.cover,
        ),
      };

  LottieDefaultAttributes.create() : this();
}

/// Scaffold
@dynamicDefaultAttribute
@NodeKey(NType.scaffold)
class ScaffoldDefaultAttributes extends DefaultAttributesAdapter {
  const ScaffoldDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.fill: FFill(
          paletteStyle: 'Background / Primary',
        ),
        DBKeys.showAppBar: true,
        DBKeys.showBottomBar: true,
        DBKeys.showDrawer: false,
        DBKeys.flag: true,
        DBKeys.isBoxed: false,
      };

  ScaffoldDefaultAttributes.create() : this();
}

/// Stack
@dynamicDefaultAttribute
@NodeKey(NType.stack)
class StackDefaultAttributes extends DefaultAttributesAdapter {
  const StackDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  StackDefaultAttributes.create() : this();
}

/// Text
@dynamicDefaultAttribute
@NodeKey(NType.text)
class TextDefaultAttributes extends DefaultAttributesAdapter {
  const TextDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: 'text'),
        DBKeys.textStyle: FTextStyle(
          textStyleModel: 'Headline',
          fill: FFill(paletteStyle: 'Text / Primary'),
        ),
        DBKeys.isFullWidth: false,
        DBKeys.maxLines: FTextTypeInput(value: ''),
      };

  TextDefaultAttributes.create() : this();
}

/// TextField
@dynamicDefaultAttribute
@NodeKey(NType.textField)
class TextFieldDefaultAttributes extends DefaultAttributesAdapter {
  const TextFieldDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.labelText: FTextTypeInput(value: 'Placeholder'),
        DBKeys.textStyle: FTextStyle(),
        DBKeys.margins: FMargins(
          margins: [16, 8, 16, 8],
          marginsTablet: [16, 8, 16, 8],
          marginsDesktop: [16, 8, 16, 8],
        ),
        DBKeys.padding: FMargins(
          margins: [16, 0, 0, 0],
          marginsTablet: [16, 0, 0, 0],
          marginsDesktop: [16, 0, 0, 0],
        ),
        DBKeys.fill: FFill(),
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: 'max',
          sizeDesktop: 'max',
        ),
        DBKeys.maxLines: FTextTypeInput(value: ''),
        DBKeys.minLines: FTextTypeInput(value: ''),
        DBKeys.maxLenght: FTextTypeInput(),
        DBKeys.bordersSize: FTextTypeInput(value: '1'),
        DBKeys.keyboardType: FKeyboardType(),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [0, 0, 0, 0],
          radiusTablet: null,
          radiusDesktop: null,
        ),
        DBKeys.showCursor: true,
        DBKeys.autoCorrect: false,
        DBKeys.obscureText: false,
        DBKeys.showBorders: false,
        DBKeys.enabledBorderColor: FFill(),
        DBKeys.focusedBorderColor: FFill(),
        DBKeys.cursorColor: FFill(),
        DBKeys.hintTextColor: FFill(),
      };

  TextFieldDefaultAttributes.create() : this();
}

/// Video
@dynamicDefaultAttribute
@NodeKey(NType.video)
class VideoDefaultAttributes extends DefaultAttributesAdapter {
  const VideoDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.startAt: 0,
        DBKeys.showControls: false,
        DBKeys.isFullWidth: false,
        DBKeys.loopVideo: false,
      };

  VideoDefaultAttributes.create() : this();
}
