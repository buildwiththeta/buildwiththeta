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

/// Aspect Ratio
@dynamicDefaultAttribute
@NodeKey(NType.aspectRatio)
class AspectRatioDefaultAttributes extends DefaultAttributesAdapter {
  const AspectRatioDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  AspectRatioDefaultAttributes.create() : this();
}

/// Audio Player Progress Indicator
@dynamicDefaultAttribute
@NodeKey(NType.audioPlayerProgressIndicator)
class AudioPlayerProgressIndicatorDefaultAttributes
    extends DefaultAttributesAdapter {
  const AudioPlayerProgressIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(type: FTextTypeEnum.state),
      };

  AudioPlayerProgressIndicatorDefaultAttributes.create() : this();
}

/// Audio Player Volume Indicator
@dynamicDefaultAttribute
@NodeKey(NType.audioPlayerVolumeIndicator)
class AudioPlayerVolumeIndicatorDefaultAttributes
    extends DefaultAttributesAdapter {
  const AudioPlayerVolumeIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(type: FTextTypeEnum.state),
      };

  AudioPlayerVolumeIndicatorDefaultAttributes.create() : this();
}

/// Badge
@dynamicDefaultAttribute
@NodeKey(NType.badge)
class BadgeDefaultAttributes extends DefaultAttributesAdapter {
  const BadgeDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.textStyle: FTextStyle(),
        DBKeys.fill: FFill(),
      };

  BadgeDefaultAttributes.create() : this();
}

/// Barcode
@dynamicDefaultAttribute
@NodeKey(NType.barcode)
class BarcodeDefaultAttributes extends DefaultAttributesAdapter {
  const BarcodeDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.image: FTextTypeInput(),
        DBKeys.width: FSize(
          size: '200',
          sizeTablet: '200',
          sizeDesktop: '200',
        ),
        DBKeys.height: FSize(
          size: '200',
          sizeTablet: '200',
          sizeDesktop: '200',
        ),
        DBKeys.fill: FFill(
          levels: [
            FFillElement(
              color: 'ffffff',
              stop: 0,
            ),
          ],
        ),
      };

  BarcodeDefaultAttributes.create() : this();
}

/// BottomBarItem
@dynamicDefaultAttribute
@NodeKey(NType.bottombaritem)
class BottomBarItemDefaultAttributes extends DefaultAttributesAdapter {
  const BottomBarItemDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.image: FTextTypeInput(),
        DBKeys.width: FSize(
          size: '200',
          sizeTablet: '200',
          sizeDesktop: '200',
        ),
        DBKeys.height: FSize(
          size: '200',
          sizeTablet: '200',
          sizeDesktop: '200',
        ),
        DBKeys.fill: FFill(
          levels: [
            FFillElement(
              color: 'ffffff',
              stop: 0,
            ),
          ],
        ),
      };

  BottomBarItemDefaultAttributes.create() : this();
}

/// Bouncing
@dynamicDefaultAttribute
@NodeKey(NType.bouncingWidget)
class BouncingWidgetDefaultAttributes extends DefaultAttributesAdapter {
  const BouncingWidgetDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: '100'),
        DBKeys.valueOfCondition: FTextTypeInput(value: '1.5'),
      };

  BouncingWidgetDefaultAttributes.create() : this();
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
          radiusTablet: [8, 8, 8, 8],
          radiusDesktop: [8, 8, 8, 8],
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

/// Card
@dynamicDefaultAttribute
@NodeKey(NType.card)
class CardDefaultAttributes extends DefaultAttributesAdapter {
  const CardDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.fill: FFill(),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [0, 0, 0, 0],
          radiusTablet: [0, 0, 0, 0],
          radiusDesktop: [0, 0, 0, 0],
        ),
      };

  CardDefaultAttributes.create() : this();
}

/// Center
@dynamicDefaultAttribute
@NodeKey(NType.center)
class CenterDefaultAttributes extends DefaultAttributesAdapter {
  const CenterDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.align: FAlign(
          align: Alignment.center,
          alignTablet: Alignment.center,
          alignDesktop: Alignment.center,
        ),
      };

  CenterDefaultAttributes.create() : this();
}

/// CheckBox
@dynamicDefaultAttribute
@NodeKey(NType.checkbox)
class CheckBoxDefaultAttributes extends DefaultAttributesAdapter {
  const CheckBoxDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        // TODO: Change to boolean value
        DBKeys.value: FTextTypeInput(),
      };

  CheckBoxDefaultAttributes.create() : this();
}

/// Circular Progress Indicator
@dynamicDefaultAttribute
@NodeKey(NType.circularProgressIndicator)
class CircularProgressIndicatorDefaultAttributes
    extends DefaultAttributesAdapter {
  const CircularProgressIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        // TODO: Set a default value
        DBKeys.bgFill: FFill(),
        // TODO: Set a default value
        DBKeys.fill: FFill(),
      };

  CircularProgressIndicatorDefaultAttributes.create() : this();
}

/// Clip Oval, Clip Rect
@dynamicDefaultAttribute
@NodeKey(NType.clipOval)
@NodeKey(NType.clipRect)
class ClipsDefaultAttributes extends DefaultAttributesAdapter {
  const ClipsDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  ClipsDefaultAttributes.create() : this();
}

/// Clip Rounded Rect
@dynamicDefaultAttribute
@NodeKey(NType.clipRoundedRect)
class ClipRoundedRectDefaultAttributes extends DefaultAttributesAdapter {
  const ClipRoundedRectDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [8, 8, 8, 8],
          radiusTablet: [8, 8, 8, 8],
          radiusDesktop: [16, 16, 16, 16],
        ),
      };

  ClipRoundedRectDefaultAttributes.create() : this();
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
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.componentName: '',
        DBKeys.paramsToSend: <String, dynamic>{},
      };

  ComponentDefaultAttributes.create() : this();
}

/// Concentric Page View
@dynamicDefaultAttribute
@NodeKey(NType.concentricPageView)
class ConcentricPageViewDefaultAttributes extends DefaultAttributesAdapter {
  const ConcentricPageViewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.fill: FFill(),
      };

  ConcentricPageViewDefaultAttributes.create() : this();
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

/// Image, ConstrainedBox, Container, LimitedBox, SizedBox, DecoratedBox
@dynamicDefaultAttribute
@NodeKey(NType.constrainedBox)
@NodeKey(NType.container)
@NodeKey(NType.limitedBox)
@NodeKey(NType.sizedBox)
@NodeKey(NType.decoratedBox)
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
          size: '',
          sizeTablet: '',
          sizeDesktop: '',
        ),
        DBKeys.height: FSize(
          size: '',
          sizeTablet: '',
          sizeDesktop: '',
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
          radiusTablet: [0, 0, 0, 0],
          radiusDesktop: [0, 0, 0, 0],
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

/// Cupertino Picker
@dynamicDefaultAttribute
@NodeKey(NType.cupertinoPicker)
class CupertinoPickerDefaultAttributes extends DefaultAttributesAdapter {
  const CupertinoPickerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.flag: false,
        DBKeys.height: FSize(
          size: '44',
          sizeTablet: '44',
          sizeDesktop: '44',
        ),
      };

  CupertinoPickerDefaultAttributes.create() : this();
}

/// Cupertino Segmented Control
@dynamicDefaultAttribute
@NodeKey(NType.cupertinoSegmentedControl)
class CupertinoSegmentedControlDefaultAttributes
    extends DefaultAttributesAdapter {
  const CupertinoSegmentedControlDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        //DBKeys.action: NodeGestureActions.empty(),
        DBKeys.fill: FFill(
          levels: [
            FFillElement(color: '3285FF', stop: 0),
          ],
        ), //selected
        DBKeys.bgFill: FFill(
          levels: [
            FFillElement(color: '222222', stop: 0),
          ],
        ), //unselected
        DBKeys.textFill: FFill(
          levels: [
            FFillElement(color: '444444', stop: 0),
          ],
        ), //pressed
        DBKeys.activeFill: FFill(
          levels: [
            FFillElement(color: '000000', stop: 0),
          ],
        ), //border
      };

  CupertinoSegmentedControlDefaultAttributes.create() : this();
}

/// Cupertino Switch
@dynamicDefaultAttribute
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchControlDefaultAttributes extends DefaultAttributesAdapter {
  const CupertinoSwitchControlDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  CupertinoSwitchControlDefaultAttributes.create() : this();
}

/// Cupertino Switch
@dynamicDefaultAttribute
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchDefaultAttributes extends DefaultAttributesAdapter {
  const CupertinoSwitchDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};
}

/// Divider
@dynamicDefaultAttribute
@NodeKey(NType.divider)
class DividerDefaultAttributes extends DefaultAttributesAdapter {
  const DividerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.height: FSize(
          size: '1.0',
          sizeTablet: '1.0',
          sizeDesktop: '1.0',
        ),
        DBKeys.fill: FFill(),
      };

  DividerDefaultAttributes.create() : this();
}

/// Dots Indicator
@dynamicDefaultAttribute
@NodeKey(NType.dotsIndicator)
class DotsIndicatorDefaultAttributes extends DefaultAttributesAdapter {
  const DotsIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: '3'),
        DBKeys.valueOfCondition: FTextTypeInput(value: '0'),
        DBKeys.margins: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [8, 8, 8, 8],
          radiusTablet: [8, 8, 8, 8],
          radiusDesktop: [8, 8, 8, 8],
        ),
        DBKeys.width: FSize(
          size: '8',
          sizeTablet: '8',
          sizeDesktop: '8',
        ),
        DBKeys.height: FSize(
          size: '8',
          sizeTablet: '8',
          sizeDesktop: '8',
        ),
        DBKeys.fill: FFill(levels: [FFillElement(color: 'a1a1a1', stop: 0)]),
        DBKeys.bgFill: FFill(levels: [FFillElement(color: '444444', stop: 0)]),
        DBKeys.borderStyle: FBorderStyle(
          value: BorderStyle.none,
        ),
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
        DBKeys.activeBorders: FBorder(
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
      };

  DotsIndicatorDefaultAttributes.create() : this();
}

/// Expanded
@dynamicDefaultAttribute
@NodeKey(NType.expanded)
class ExpandedDefaultAttributes extends DefaultAttributesAdapter {
  const ExpandedDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  ExpandedDefaultAttributes.create() : this();
}

/// Google Admob Banner
@dynamicDefaultAttribute
@NodeKey(NType.adMobBanner)
class AdMobBannerDefaultAttributes extends DefaultAttributesAdapter {
  const AdMobBannerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.adMobAdIosUnitId: FTextTypeInput(value: 'iOS Ad unit Key'),
        DBKeys.adMobAdAndroidUnitId:
            FTextTypeInput(value: 'Android Ad unit key'),
      };

  AdMobBannerDefaultAttributes.create() : this();
}

/// GridView, GridView.builder
@dynamicDefaultAttribute
@NodeKey(NType.gridView)
@NodeKey(NType.gridViewBuilder)
class GridViewDefaultAttributes extends DefaultAttributesAdapter {
  const GridViewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.flag: true,
        DBKeys.isVertical: true,
        DBKeys.isPrimary: true,
        DBKeys.mainAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.crossAxisCount: FTextTypeInput(value: '2'),
        DBKeys.crossAxisSpacing: FTextTypeInput(value: '2'),
        DBKeys.childAspectRatio: FTextTypeInput(value: '1'),
        DBKeys.value: FTextTypeInput(value: '0'),
        DBKeys.valueOfCondition: FTextTypeInput(),
      };

  GridViewDefaultAttributes.create() : this();
}

/// Hero
@dynamicDefaultAttribute
@NodeKey(NType.hero)
class HeroDefaultAttributes extends DefaultAttributesAdapter {
  const HeroDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  HeroDefaultAttributes.create() : this();
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

/// IgnorePoints
@dynamicDefaultAttribute
@NodeKey(NType.ignorePointer)
class IgnorePointerDefaultAttributes extends DefaultAttributesAdapter {
  const IgnorePointerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  IgnorePointerDefaultAttributes.create() : this();
}

/// Indexed Stack
@dynamicDefaultAttribute
@NodeKey(NType.indexedStack)
class IndexedStackDefaultAttributes extends DefaultAttributesAdapter {
  const IndexedStackDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: '0'),
      };

  IndexedStackDefaultAttributes.create() : this();
}

/// LinearProgressIndicator
@dynamicDefaultAttribute
@NodeKey(NType.linearProgressIndicator)
class LinearProgressIndicatorDefaultAttributes
    extends DefaultAttributesAdapter {
  const LinearProgressIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.bgFill: FFill(),
        DBKeys.fill: FFill(),
      };

  LinearProgressIndicatorDefaultAttributes.create() : this();
}

/// LiquidSwipe
@dynamicDefaultAttribute
@NodeKey(NType.liquidSwipe)
class LiquidSwipeDefaultAttributes extends DefaultAttributesAdapter {
  const LiquidSwipeDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  LiquidSwipeDefaultAttributes.create() : this();
}

/// ListTile
@dynamicDefaultAttribute
@NodeKey(NType.listTile)
class ListTileDefaultAttributes extends DefaultAttributesAdapter {
  const ListTileDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.flag: false,
      };

  ListTileDefaultAttributes.create() : this();
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
        DBKeys.isPrimary: true,
        DBKeys.isFullWidth: false,
        DBKeys.physic: FPhysic(),
        DBKeys.value: FTextTypeInput(value: '0'),
        DBKeys.valueOfCondition: FTextTypeInput(),
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

/// Opacity
@dynamicDefaultAttribute
@NodeKey(NType.opacity)
class OffstageDefaultAttributes extends DefaultAttributesAdapter {
  const OffstageDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        // TODO: Convert to a boolean flag
        DBKeys.value: FTextTypeInput(),
      };

  OffstageDefaultAttributes.create() : this();
}

/// Padding
@dynamicDefaultAttribute
@NodeKey(NType.padding)
class PaddingDefaultAttributes extends DefaultAttributesAdapter {
  const PaddingDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.padding: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
      };

  PaddingDefaultAttributes.create() : this();
}

/// PageView
@dynamicDefaultAttribute
@NodeKey(NType.pageView)
class PageViewDefaultAttributes extends DefaultAttributesAdapter {
  const PageViewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.isVertical: true,
      };

  PageViewDefaultAttributes.create() : this();
}

/// Placeholder
@dynamicDefaultAttribute
@NodeKey(NType.placeholder)
class PlaceholderDefaultAttributes extends DefaultAttributesAdapter {
  const PlaceholderDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.fill: FFill(),
        DBKeys.value: FTextTypeInput(),
        DBKeys.width: FSize(
          size: '400',
          sizeTablet: '400',
          sizeDesktop: '400',
        ),
        DBKeys.height: FSize(
          size: '400',
          sizeTablet: '400',
          sizeDesktop: '400',
        ),
      };

  PlaceholderDefaultAttributes.create() : this();
}

/// Positioned
@dynamicDefaultAttribute
@NodeKey(NType.positioned)
@NodeKey(NType.safeArea)
class PositionedDefaultAttributes extends DefaultAttributesAdapter {
  const PositionedDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.left: false,
        DBKeys.top: false,
        DBKeys.right: false,
        DBKeys.bottom: false,
        DBKeys.margins: FMargins(
          margins: [0, 0, 0, 0],
          marginsTablet: [0, 0, 0, 0],
          marginsDesktop: [0, 0, 0, 0],
        ),
      };

  PositionedDefaultAttributes.create() : this();
}

/// QR Scanner
@dynamicDefaultAttribute
@NodeKey(NType.qrScanner)
class QRScannerDefaultAttributes extends DefaultAttributesAdapter {
  const QRScannerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  QRScannerDefaultAttributes.create() : this();
}

/// QR Scanner
@dynamicDefaultAttribute
@NodeKey(NType.qrCode)
class QRCodeDefaultAttributes extends DefaultAttributesAdapter {
  const QRCodeDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.image: FTextTypeInput(),
        DBKeys.flag: false,
        DBKeys.width: FSize(
          size: '250',
          sizeTablet: '250',
          sizeDesktop: '250',
        ),
        DBKeys.fill: FFill(
          levels: [
            FFillElement(
              color: 'ffffff',
              stop: 0,
            ),
          ],
        ),
      };

  QRCodeDefaultAttributes.create() : this();
}

/// Radio
@dynamicDefaultAttribute
@NodeKey(NType.radio)
class RadioDefaultAttributes extends DefaultAttributesAdapter {
  const RadioDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.actionValue: FTextTypeInput(),
      };

  RadioDefaultAttributes.create() : this();
}

/// Refresh Indicator
@dynamicDefaultAttribute
@NodeKey(NType.refreshIndicator)
class RefreshIndicatorDefaultAttributes extends DefaultAttributesAdapter {
  const RefreshIndicatorDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.height: FSize(
          size: '150',
          sizeTablet: '150',
          sizeDesktop: '150',
        ),
        DBKeys.duration: FTextTypeInput(value: '1000'),
        DBKeys.actionValue: FTextTypeInput(),
      };

  RefreshIndicatorDefaultAttributes.create() : this();
}

/// Responsive Condition
@dynamicDefaultAttribute
@NodeKey(NType.responsiveCondition)
class ResponsiveConditionDefaultAttributes extends DefaultAttributesAdapter {
  const ResponsiveConditionDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.visibleOnDesktop: true,
        DBKeys.visibleOnMobile: true,
        DBKeys.visibleOnTablet: true,
      };

  ResponsiveConditionDefaultAttributes.create() : this();
}

/// Rotated Box
@dynamicDefaultAttribute
@NodeKey(NType.rotatedBox)
class RotatedBoxDefaultAttributes extends DefaultAttributesAdapter {
  const RotatedBoxDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(value: '0'),
      };

  RotatedBoxDefaultAttributes.create() : this();
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

/// Spacer
@dynamicDefaultAttribute
@NodeKey(NType.spacer)
class SpacerDefaultAttributes extends DefaultAttributesAdapter {
  const SpacerDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  SpacerDefaultAttributes.create() : this();
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

/// TCard
@dynamicDefaultAttribute
@NodeKey(NType.tcard)
@NodeKey(NType.tcardBuilder)
class TCardDefaultAttributes extends DefaultAttributesAdapter {
  const TCardDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.flag: false,
        DBKeys.width: FSize(
          size: '400',
          sizeTablet: '400',
          sizeDesktop: '400',
        ),
        DBKeys.height: FSize(
          size: '600',
          sizeTablet: '600',
          sizeDesktop: '600',
        ),
        DBKeys.value: FTextTypeInput(value: '20'),
        DBKeys.valueOfCondition: FTextTypeInput(value: '500'),
      };

  TCardDefaultAttributes.create() : this();
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
        DBKeys.maxLines: FTextTypeInput(value: '1'),
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
        DBKeys.maxLines: FTextTypeInput(value: '1'),
        DBKeys.minLines: FTextTypeInput(value: '1'),
        DBKeys.maxLenght: FTextTypeInput(),
        DBKeys.bordersSize: FTextTypeInput(value: '1'),
        DBKeys.keyboardType: FKeyboardType(),
        DBKeys.borderRadius: FBorderRadius(
          radiusMobile: [0, 0, 0, 0],
          radiusTablet: [0, 0, 0, 0],
          radiusDesktop: [0, 0, 0, 0],
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

/// Tooltip
@dynamicDefaultAttribute
@NodeKey(NType.tooltip)
class TooltipDefaultAttributes extends DefaultAttributesAdapter {
  const TooltipDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  TooltipDefaultAttributes.create() : this();
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

/// Visibility
@dynamicDefaultAttribute
@NodeKey(NType.visibility)
class VisibilityDefaultAttributes extends DefaultAttributesAdapter {
  const VisibilityDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        // TODO: Change to boolean value
        DBKeys.value: FTextTypeInput(),
      };

  VisibilityDefaultAttributes.create() : this();
}

/// Webview
@dynamicDefaultAttribute
@NodeKey(NType.webview)
class WebviewDefaultAttributes extends DefaultAttributesAdapter {
  const WebviewDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(type: FTextTypeEnum.state),
        DBKeys.valueOfCondition: FTextTypeInput(value: 'https://teta.so'),
      };

  WebviewDefaultAttributes.create() : this();
}

/// Wrap
@dynamicDefaultAttribute
@NodeKey(NType.wrap)
class WrapDefaultAttributes extends DefaultAttributesAdapter {
  const WrapDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(type: FTextTypeEnum.state),
        DBKeys.valueOfCondition: FTextTypeInput(value: 'https://teta.so'),
      };

  WrapDefaultAttributes.create() : this();
}

/// Animation Config Grid
@dynamicDefaultAttribute
@NodeKey(NType.animationConfigGrid)
class AnimationConfigGridDefaultAttributes extends DefaultAttributesAdapter {
  const AnimationConfigGridDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.duration: FTextTypeInput(),
        DBKeys.valueOfCondition: FTextTypeInput(),
      };

  AnimationConfigGridDefaultAttributes.create() : this();
}

/// Animation Config List
@dynamicDefaultAttribute
@NodeKey(NType.animationConfigList)
class AnimationConfigListDefaultAttributes extends DefaultAttributesAdapter {
  const AnimationConfigListDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
        DBKeys.duration: FTextTypeInput(),
      };

  AnimationConfigListDefaultAttributes.create() : this();
}

/// Fade In, Scale, Slide animation
@dynamicDefaultAttribute
@NodeKey(NType.fadeInAnimation)
@NodeKey(NType.scaleAnimation)
@NodeKey(NType.slideAnimation)
class AnimationDefaultAttributes extends DefaultAttributesAdapter {
  const AnimationDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  AnimationDefaultAttributes.create() : this();
}

/// Social login
@dynamicDefaultAttribute
@NodeKey(NType.loginWithApple)
@NodeKey(NType.loginWithBitBucket)
@NodeKey(NType.loginWithDiscord)
@NodeKey(NType.loginWithFacebook)
@NodeKey(NType.loginWithGitHub)
@NodeKey(NType.loginWithGitlab)
@NodeKey(NType.loginWithGoogle)
@NodeKey(NType.loginWithLinkedin)
@NodeKey(NType.loginWithMicrosoft)
@NodeKey(NType.loginWithTwitch)
@NodeKey(NType.loginWithTwitter)
class SocialLoginDefaultAttributes extends DefaultAttributesAdapter {
  const SocialLoginDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.width: FSize(
          size: 'max',
          sizeTablet: 'max',
          sizeDesktop: 'max',
        ),
        DBKeys.height: FSize(
          size: '42',
          sizeTablet: '42',
          sizeDesktop: '42',
        ),
      };

  SocialLoginDefaultAttributes.create() : this();
}

/// HttpRequest
@dynamicDefaultAttribute
@NodeKey(NType.httpRequest)
class HttpRequestFutureBuilderDefaultAttributes
    extends DefaultAttributesAdapter {
  const HttpRequestFutureBuilderDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        // TODO: Check this
        DBKeys.supabaseFrom: FTextTypeInput(value: 'from'),
      };

  HttpRequestFutureBuilderDefaultAttributes.create() : this();
}

/// AppBar, BottomBar, Drawer
@dynamicDefaultAttribute
@NodeKey(NType.appBar)
@NodeKey(NType.bottomBar)
@NodeKey(NType.drawer)
class NavigationWidgetDefaultAttributes extends DefaultAttributesAdapter {
  const NavigationWidgetDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  NavigationWidgetDefaultAttributes.create() : this();
}

/// Qonversion Products
@dynamicDefaultAttribute
@NodeKey(NType.qonversionProducts)
class QonversionProductsDefaultAttributes extends DefaultAttributesAdapter {
  const QonversionProductsDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  QonversionProductsDefaultAttributes.create() : this();
}

/// Qonversion Sub Status
@dynamicDefaultAttribute
@NodeKey(NType.qonversionSubStatus)
class QonversionSubStatusDefaultAttributes extends DefaultAttributesAdapter {
  const QonversionSubStatusDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  QonversionSubStatusDefaultAttributes.create() : this();
}

/// Responsive Wrapper
@dynamicDefaultAttribute
@NodeKey(NType.wrapper)
class WrapperDefaultAttributes extends DefaultAttributesAdapter {
  const WrapperDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.flag: true,
      };

  WrapperDefaultAttributes.create() : this();
}

/// RevenueCat Products
@dynamicDefaultAttribute
@NodeKey(NType.revenueCatProducts)
class RevenueCatProductsDefaultAttributes extends DefaultAttributesAdapter {
  const RevenueCatProductsDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  RevenueCatProductsDefaultAttributes.create() : this();
}

/// RevenueCat Sub Status
@dynamicDefaultAttribute
@NodeKey(NType.revenueCatSubStatus)
class RevenueCatSubStatusDefaultAttributes extends DefaultAttributesAdapter {
  const RevenueCatSubStatusDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(),
      };

  RevenueCatSubStatusDefaultAttributes.create() : this();
}

/// Supabase Future Builder
@dynamicDefaultAttribute
@NodeKey(NType.supabaseFutureBuilder)
class SupabaseFutureBuilderDefaultAttributes extends DefaultAttributesAdapter {
  const SupabaseFutureBuilderDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.supabaseFrom: FTextTypeInput(value: 'users'),
        DBKeys.supabaseSelect: FTextTypeInput(value: 'id, name'),
        DBKeys.supabaseToRange: FTextTypeInput(value: '15'),
        DBKeys.supabaseFromRange: FTextTypeInput(value: '0'),
        DBKeys.supabaseNumberPage: FTextTypeInput(value: '1'),
        DBKeys.supabaseOrder: FTextTypeInput(value: 'name'),
        DBKeys.supabaseSearchName: FTextTypeInput(),
        DBKeys.supabaseSearchValue: FTextTypeInput(),
        DBKeys.supabaseEqName: FTextTypeInput(),
        DBKeys.supabaseEqValue: FTextTypeInput(),
      };

  SupabaseFutureBuilderDefaultAttributes.create() : this();
}

/// Supabase Stream Builder
@dynamicDefaultAttribute
@NodeKey(NType.supabaseStreamBuilder)
class SupabaseStreamBuilderDefaultAttributes extends DefaultAttributesAdapter {
  const SupabaseStreamBuilderDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.supabaseFrom: FTextTypeInput(value: 'users'),
        DBKeys.supabaseFromRange: FTextTypeInput(value: '0'),
        DBKeys.supabaseOrder: FTextTypeInput(value: 'name'),
      };

  SupabaseStreamBuilderDefaultAttributes.create() : this();
}

/// Supabase Logged
@dynamicDefaultAttribute
@NodeKey(NType.supabaseLoggedUser)
class SupabaseLoggedUserDefaultAttributes extends DefaultAttributesAdapter {
  const SupabaseLoggedUserDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  SupabaseLoggedUserDefaultAttributes.create() : this();
}

/// Theta DB Count
@dynamicDefaultAttribute
@NodeKey(NType.cmsCount)
class CMSCountDefaultAttributes extends DefaultAttributesAdapter {
  const CMSCountDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.cmsCollection: FTextTypeInput(),
        DBKeys.cmsLimit: FTextTypeInput(),
        DBKeys.cmsPage: FTextTypeInput(),
        DBKeys.cmsLikeKey: FTextTypeInput(),
        DBKeys.cmsLikeValue: FTextTypeInput(),
        DBKeys.flag: true,
      };

  CMSCountDefaultAttributes.create() : this();
}

/// Theta DB Custom Query
@dynamicDefaultAttribute
@NodeKey(NType.cmsCustomQuery)
class CMSCustomQueryDefaultAttributes extends DefaultAttributesAdapter {
  const CMSCustomQueryDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.value: FTextTypeInput(
          value: '''
MATCH name EQ CollectionName;
IN docs;
MATCHOR _name EQ 'value' _name LIKE 'value2';
SORT _name 1;
LIMIT 10;''',
        ),
      };

  CMSCustomQueryDefaultAttributes.create() : this();
}

/// Theta DB Fetch
@dynamicDefaultAttribute
@NodeKey(NType.cmsFetch)
class CMSFetchDefaultAttributes extends DefaultAttributesAdapter {
  const CMSFetchDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.cmsCollection: FTextTypeInput(),
        DBKeys.cmsLimit: FTextTypeInput(),
        DBKeys.cmsPage: FTextTypeInput(),
        DBKeys.cmsLikeKey: FTextTypeInput(),
        DBKeys.cmsLikeValue: FTextTypeInput(),
        DBKeys.flag: true,
      };

  CMSFetchDefaultAttributes.create() : this();
}

/// Theta DB Stream
@dynamicDefaultAttribute
@NodeKey(NType.cmsStream)
class CMSStreamDefaultAttributes extends DefaultAttributesAdapter {
  const CMSStreamDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{
        DBKeys.cmsCollection: FTextTypeInput(),
        DBKeys.cmsLimit: FTextTypeInput(),
        DBKeys.cmsPage: FTextTypeInput(),
        DBKeys.cmsLikeKey: FTextTypeInput(),
        DBKeys.cmsLikeValue: FTextTypeInput(),
        DBKeys.flag: true,
      };

  CMSStreamDefaultAttributes.create() : this();
}

/// Theta DB Logged user
@dynamicDefaultAttribute
@NodeKey(NType.cmsLoggedUser)
class CMSLoggedUserDefaultAttributes extends DefaultAttributesAdapter {
  const CMSLoggedUserDefaultAttributes();

  @override
  Map<String, dynamic> get get => const <String, dynamic>{};

  CMSLoggedUserDefaultAttributes.create() : this();
}
