import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

abstract class DefaultAttributesAdapter {
  const DefaultAttributesAdapter();

  /// Get the default attributes for a widget
  Map<String, dynamic> get get;
}

/// Align
class AlignWidgetDefaultAttributes extends DefaultAttributesAdapter {
  const AlignWidgetDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.align: FAlign(),
      };

  AlignWidgetDefaultAttributes.create() : this();
}

/// Button
/*
@dynamicDefaultAttribute
@NodeKey(NType.button)
class ButtonDefaultAttributes extends DefaultAttributesAdapter {
  const ButtonDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: 'Click here'),
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.height: FSize(
          size: '48',
          sizeTablet: null,
          sizeDesktop: null,
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
        DBKeys.align: FAlign(),
      };

  ButtonDefaultAttributes.create() : this();
}*/

/// Column,
class ColumnDefaultAttributes extends DefaultAttributesAdapter {
  const ColumnDefaultAttributes();

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
        DBKeys.direction: FDirection(
          direction: Axis.vertical,
          directionTablet: Axis.vertical,
          directionDesktop: Axis.vertical,
        ),
        DBKeys.spacing: FSize(
          size: '0',
          sizeTablet: '',
          sizeDesktop: '',
        ),
      };
  ColumnDefaultAttributes.create() : this();
}

/// Row
class RowDefaultAttributes extends DefaultAttributesAdapter {
  const RowDefaultAttributes();

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
        DBKeys.direction: FDirection(
          direction: Axis.horizontal,
          directionTablet: Axis.horizontal,
          directionDesktop: Axis.horizontal,
        ),
        DBKeys.spacing: FSize(
          size: '0',
          sizeTablet: '',
          sizeDesktop: '',
        ),
      };
  RowDefaultAttributes.create() : this();
}

/// Component
class ComponentDefaultAttributes extends DefaultAttributesAdapter {
  const ComponentDefaultAttributes();

  @override
  Map<String, dynamic> get get =>
      const <String, dynamic>{DBKeys.overrides: <Override>[]};

  ComponentDefaultAttributes.create() : this();
}

/// Team Component
class TeamComponentDefaultAttributes extends DefaultAttributesAdapter {
  const TeamComponentDefaultAttributes();

  @override
  Map<String, dynamic> get get =>
      const <String, dynamic>{DBKeys.overrides: <Override>[]};

  TeamComponentDefaultAttributes.create() : this();
}

/// Image, Container
class BoxDefaultAttributes extends DefaultAttributesAdapter {
  const BoxDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.width: FSize(
          size: '150',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.margins: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: null,
          marginsDesktop: null,
        ),
        DBKeys.padding: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: null,
          marginsDesktop: null,
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
            sizeTablet: null,
            sizeDesktop: null,
          ),
        ),
        DBKeys.fill: FFill(),
        DBKeys.borders: FBorder(
          fill: FFill(),
          width: FMargins(
            margins: [0, 0, 0, 0],
            marginsTablet: null,
            marginsDesktop: null,
          ),
          style: FBorderStyle(
            value: BorderStyle.none,
          ),
        ),
        DBKeys.image: FTextTypeInput(),
        DBKeys.boxFit: FBoxFit(),
        DBKeys.align: FAlign(),
      };

  BoxDefaultAttributes.create() : this();
}

/// Icon, all types.
class IconDefaultAttributes extends DefaultAttributesAdapter {
  const IconDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.icon: 'plus',
        DBKeys.width: FSize(
          size: '24',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.fill: FFill(),
      };

  IconDefaultAttributes.create() : this();
}

/// ListView
class ListViewDefaultAttributes extends DefaultAttributesAdapter {
  const ListViewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.isVertical: true,
        DBKeys.flag: true,
        DBKeys.isListView: true,
        DBKeys.isPrimary: true,
        DBKeys.isFullWidth: false,
        DBKeys.mainAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.crossAxisCount: FTextTypeInput(value: '2'),
        DBKeys.crossAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.childAspectRatio: FTextTypeInput(value: '1'),
      };

  ListViewDefaultAttributes.create() : this();
}

/// Lottie
class LottieDefaultAttributes extends DefaultAttributesAdapter {
  const LottieDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: null,
          sizeDesktop: null,
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

/// Svg Picture
class SvgPictureDefaultAttributes extends DefaultAttributesAdapter {
  const SvgPictureDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.image: FTextTypeInput(),
        DBKeys.boxFit: FBoxFit(
          value: BoxFit.cover,
        ),
        DBKeys.fill: FFill(
          type: FFillType.none,
        ),
      };

  SvgPictureDefaultAttributes.create() : this();
}

/// Scaffold
class ScaffoldDefaultAttributes extends DefaultAttributesAdapter {
  const ScaffoldDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.fill: FFill(
          paletteStyle: 'Background / Primary',
        ),
        DBKeys.flag: true,
        DBKeys.componentFit: 'absolute',
      };

  ScaffoldDefaultAttributes.create() : this();
}

/// Stack
class StackDefaultAttributes extends DefaultAttributesAdapter {
  const StackDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  StackDefaultAttributes.create() : this();
}

/// Text
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

class TextFieldDefaultAttributes extends DefaultAttributesAdapter {
  const TextFieldDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.labelText: FTextTypeInput(value: 'Placeholder'),
        DBKeys.textStyle: FTextStyle(),
        DBKeys.contentPadding: FMargins(
          margins: [16, 16, 16, 16],
          marginsTablet: null,
          marginsDesktop: null,
        ),
        DBKeys.fill: FFill(),
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: null,
          sizeDesktop: null,
        ),
        DBKeys.maxLines: FTextTypeInput(value: ''),
        DBKeys.minLines: FTextTypeInput(value: ''),
        DBKeys.maxLenght: FTextTypeInput(),
        DBKeys.bordersSize: FTextTypeInput(value: '1'),
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
        DBKeys.hintTextColor: FFill(
          paletteStyle: 'Background / Primary',
        ),
        DBKeys.keyboardType: FKeyboardType(
          type: TextInputType.text,
        ),
      };

  TextFieldDefaultAttributes.create() : this();
}

/*
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
}*/

/// Spacer
class SpacerDefaultAttribute extends DefaultAttributesAdapter {
  const SpacerDefaultAttribute();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.flexValue: FTextTypeInput(value: '1'),
      };

  SpacerDefaultAttribute.create() : this();
}

/// Switch
class SwitchDefaultAttributes extends DefaultAttributesAdapter {
  const SwitchDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.valueBool: false,
        DBKeys.activeColor: FFill(
          levels: [
            FFillElement(color: '0d983c', stop: 0),
          ],
        ),
        DBKeys.activeTrackColor: FFill(
          levels: [
            FFillElement(color: '16511b', stop: 0),
          ],
        ),
        DBKeys.inactiveThumbColor: FFill(
          levels: [
            FFillElement(color: '0d983c', stop: 0),
          ],
        ),
        DBKeys.inactiveTrackColor: FFill(
          levels: [
            FFillElement(color: '16511b', stop: 0),
          ],
        ),
        DBKeys.focusColor: FFill(
          levels: [
            FFillElement(color: 'FFFFFF00', stop: 0),
          ],
        ),
        DBKeys.hoverColor: FFill(
          levels: [
            FFillElement(color: 'FFFFFF00', stop: 0),
          ],
        ),
      };

  SwitchDefaultAttributes.create() : this();
}
