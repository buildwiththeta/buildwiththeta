import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/widgets/animations/index.dart';
import 'package:theta_open_widgets/src/elements/widgets/cta/social_button_login.dart';
import 'package:theta_open_widgets/src/elements/widgets/navigation/index.dart';
import 'package:theta_open_widgets/src/elements/widgets/responsive/index.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Align
@dynamicAdapter
@NodeKey(NType.align)
class AlignWidgetAdapter extends WidgetAdapter {
  const AlignWidgetAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAlign(
        context: context,
        nodeState: state,
        child: state.node.child,
        align: state.node.getAttributes[DBKeys.align] as FAlign,
      );

  AlignWidgetAdapter.create() : this();
}

/// Aspect Ratio
@dynamicAdapter
@NodeKey(NType.aspectRatio)
class AspectRatioAdapter extends WidgetAdapter {
  const AspectRatioAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAspectRation(
        context: context,
        nodeState: state,
        aspectRatio: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        child: state.node.child,
      );

  AspectRatioAdapter.create() : this();
}

/// Badge
@dynamicAdapter
@NodeKey(NType.badge)
class BadgeAdapter extends WidgetAdapter {
  const BadgeAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWBadge(
        nodeState: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        child: state.node.child,
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  BadgeAdapter.create() : this();
}

/// Barcode
@dynamicAdapter
@NodeKey(NType.barcode)
class BarcodeAdapter extends WidgetAdapter {
  const BarcodeAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWBarcode(
        nodeState: state,
        child: state.node.child,
        data: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        barcodeType: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  BarcodeAdapter.create() : this();
}

/// BottomBarItem
@dynamicAdapter
@NodeKey(NType.bottombaritem)
class BottomBarItemAdapter extends WidgetAdapter {
  const BottomBarItemAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWBottomBarItem(
        nodeState: state,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        icon: state.node.getAttributes[DBKeys.icon] as String? ?? 'plus',
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        isFullWidth: state.node.getAttributes[DBKeys.isFullWidth] as bool,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(),
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle? ??
            const FTextStyle(),
        onTap: () {},
        onLongPress: () {},
        onDoubleTap: () {},
      );

  BottomBarItemAdapter.create() : this();
}

/// Bouncing
@dynamicAdapter
@NodeKey(NType.bouncingWidget)
class BouncingAdapter extends WidgetAdapter {
  const BouncingAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWBouncingWidget(
        nodeState: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        valueOfCondition:
            state.node.getAttributes[DBKeys.valueOfCondition] as FTextTypeInput,
        onPressed: () {},
      );

  BouncingAdapter.create() : this();
}

/// Button
@dynamicAdapter
@NodeKey(NType.button)
class ButtonAdapter extends WidgetAdapter {
  const ButtonAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWButton(
        nodeState: state,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle,
        textAlignPosition: state.node.getAttributes[DBKeys.align] as FAlign,
        actionValue:
            state.node.getAttributes[DBKeys.actionValue] as FTextTypeInput,
        pageTransition:
            state.node.getAttributes[DBKeys.pageTransition] as FPageTransition,
        onTap: () {},
        onDoubleTap: () {},
        onLongPress: () {},
      );

  ButtonAdapter.create() : this();
}

/// Card
@dynamicAdapter
@NodeKey(NType.card)
class CardAdaptor extends WidgetAdapter {
  const CardAdaptor();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCard(
        nodeState: state,
        child: state.node.child,
        elevation: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        color: state.node.getAttributes[DBKeys.fill] as FFill,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
      );

  CardAdaptor.create() : this();
}

/// Center
@dynamicAdapter
@NodeKey(NType.center)
class CenterAdaptor extends WidgetAdapter {
  const CenterAdaptor();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCenter(
        context: context,
        state: state,
        child: state.node.child,
      );

  CenterAdaptor.create() : this();
}

/// Checkbox
@dynamicAdapter
@NodeKey(NType.checkbox)
class CheckBoxAdaptor extends WidgetAdapter {
  const CheckBoxAdaptor();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCheckBox(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  CheckBoxAdaptor.create() : this();
}

/// Circular Progress Indicator
@dynamicAdapter
@NodeKey(NType.circularProgressIndicator)
class CircularProgressIndicatorAdaptor extends WidgetAdapter {
  const CircularProgressIndicatorAdaptor();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCircularProgressIndicator(
        nodeState: state,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  CircularProgressIndicatorAdaptor.create() : this();
}

/// Clip Oval
@dynamicAdapter
@NodeKey(NType.clipOval)
class ClipOvalAdaptor extends WidgetAdapter {
  const ClipOvalAdaptor();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWClipOval(
        context: context,
        state: state,
        child: state.node.child,
      );

  ClipOvalAdaptor.create() : this();
}

/// Clip Rect
@dynamicAdapter
@NodeKey(NType.clipRect)
class ClipRectAdapter extends WidgetAdapter {
  const ClipRectAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWClipRect(
        context: context,
        state: state,
        child: state.node.child,
      );

  ClipRectAdapter.create() : this();
}

/// Clip RRect
@dynamicAdapter
@NodeKey(NType.clipRoundedRect)
class ClipRRectAdapter extends WidgetAdapter {
  const ClipRRectAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWClipRRect(
        context: context,
        state: state,
        child: state.node.child,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
      );

  ClipRRectAdapter.create() : this();
}

/// Column
@dynamicAdapter
@NodeKey(NType.column)
class ColumnAdapter extends WidgetAdapter {
  const ColumnAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWColumn(
        context: context,
        state: state,
        children: state.node.children ?? [],
        mainAxisAlignment: state.node.getAttributes[DBKeys.mainAxisAlignment]
            as FMainAxisAlignment,
        crossAxisAlignment: state.node.getAttributes[DBKeys.crossAxisAlignment]
            as FCrossAxisAlignment,
        mainAxisSize:
            state.node.getAttributes[DBKeys.mainAxisSize] as FMainAxisSize,
      );

  ColumnAdapter.create() : this();
}

/// Concentric Page
@dynamicAdapter
@NodeKey(NType.concentricPageView)
class ConcentricPageViewAdapter extends WidgetAdapter {
  const ConcentricPageViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWConcentricPageView(
        nodeState: state,
        children: state.node.children ?? [],
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  ConcentricPageViewAdapter.create() : this();
}

/// Condition
@dynamicAdapter
@NodeKey(NType.condition)
class ConditionAdapter extends WidgetAdapter {
  const ConditionAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCondition(
        nodeState: state,
        children: state.node.children ?? [],
        firstValueToCompare:
            state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        secondValueToCompare:
            state.node.getAttributes[DBKeys.valueOfCondition] as FTextTypeInput,
        conditionType:
            state.node.getAttributes[DBKeys.conditionType] as FConditionType,
      );

  ConditionAdapter.create() : this();
}

/// ConstrainedBox
@dynamicAdapter
@NodeKey(NType.constrainedBox)
class ConstrainedBoxAdapter extends WidgetAdapter {
  const ConstrainedBoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWConstrainedBox(
        context: context,
        state: state,
        child: state.node.child,
        minWidth: state.node.getAttributes[DBKeys.minWidth] as FSize,
        minHeight: state.node.getAttributes[DBKeys.minHeight] as FSize,
        maxWidth: state.node.getAttributes[DBKeys.maxWidth] as FSize,
        maxHeight: state.node.getAttributes[DBKeys.maxHeight] as FSize,
      );

  ConstrainedBoxAdapter.create() : this();
}

/// Container
@dynamicAdapter
@NodeKey(NType.container)
class BoxAdapter extends WidgetAdapter {
  const BoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWContainer(
        context: context,
        state: state,
        child: state.node.child,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        margins: state.node.getAttributes[DBKeys.margins] as FMargins,
        paddings: state.node.getAttributes[DBKeys.padding] as FMargins,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        shadows: state.node.getAttributes[DBKeys.shadows] as FShadow,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        borders: state.node.getAttributes[DBKeys.borders] as FBorder,
      );

  BoxAdapter.create() : this();
}

/// Cupertino App Bar
@dynamicAdapter
@NodeKey(NType.cupertinoAppBar)
class CupertinoAppBarAdapter extends WidgetAdapter {
  const CupertinoAppBarAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCupertinoAppBar(
        context: context,
        state: state,
        children: state.node.children ?? [],
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  CupertinoAppBarAdapter.create() : this();
}

/// Cupertino Picker
@dynamicAdapter
@NodeKey(NType.cupertinoPicker)
class CupertinoPickerAdapter extends WidgetAdapter {
  const CupertinoPickerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCupertinoPicker(
        context: context,
        state: state,
        children: state.node.children ?? <CNode>[],
        loopingFlag: state.node.getAttributes[DBKeys.flag] as bool,
        height: state.node.getAttributes[DBKeys.height] as FSize,
      );

  CupertinoPickerAdapter.create() : this();
}

/// Cupertino Segmented Control
@dynamicAdapter
@NodeKey(NType.cupertinoSegmentedControl)
class CupertinoSegmentedControlAdapter extends WidgetAdapter {
  const CupertinoSegmentedControlAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCupertinoSegmentedControl(
        state: state,
        children: state.node.children ?? <CNode>[],
        pressedColor: state.node.getAttributes[DBKeys.textFill] as FFill,
        borderColor: state.node.getAttributes[DBKeys.activeFill] as FFill,
        selectedColor: state.node.getAttributes[DBKeys.fill] as FFill,
        unselectedColor: state.node.getAttributes[DBKeys.bgFill] as FFill,
        //action: state.node.getAttributes[DBKeys.action] as NodeGestureActions,
      );

  CupertinoSegmentedControlAdapter.create() : this();
}

/// Cupertino Switch
@dynamicAdapter
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchAdapter extends WidgetAdapter {
  const CupertinoSwitchAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWCupertinoSegmentedControl(
        state: state,
        children: state.node.children ?? <CNode>[],
        pressedColor: state.node.getAttributes[DBKeys.textFill] as FFill,
        borderColor: state.node.getAttributes[DBKeys.activeFill] as FFill,
        selectedColor: state.node.getAttributes[DBKeys.fill] as FFill,
        unselectedColor: state.node.getAttributes[DBKeys.bgFill] as FFill,
        //action: state.node.getAttributes[DBKeys.action] as NodeGestureActions,
      );

  CupertinoSwitchAdapter.create() : this();
}

/// Decorated Box
@dynamicAdapter
@NodeKey(NType.decoratedBox)
class DecoratedBoxAdapter extends WidgetAdapter {
  const DecoratedBoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWDecoratedBox(
        context: context,
        state: state,
        child: state.node.child,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        shadows: state.node.getAttributes[DBKeys.shadows] as FShadow,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  DecoratedBoxAdapter.create() : this();
}

/// Divider
@dynamicAdapter
@NodeKey(NType.divider)
class DividerAdapter extends WidgetAdapter {
  const DividerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWDivider(
        context: context,
        state: state,
        child: state.node.child,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  DividerAdapter.create() : this();
}

/// Dots Indicator
@dynamicAdapter
@NodeKey(NType.dotsIndicator)
class DotsIndicatorAdapter extends WidgetAdapter {
  const DotsIndicatorAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWDotsIndicator(
        nodeState: state,
        child: state.node.child,
        activeColor: state.node.getAttributes[DBKeys.fill] as FFill,
        color: state.node.getAttributes[DBKeys.bgFill] as FFill,
        dotsCount: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        position:
            state.node.getAttributes[DBKeys.valueOfCondition] as FTextTypeInput,
        margins: state.node.getAttributes[DBKeys.margins] as FMargins,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        shadow: state.node.getAttributes[DBKeys.shadows] as FShadow,
        border: state.node.getAttributes[DBKeys.borders] as FBorder,
        activeBorder: state.node.getAttributes[DBKeys.activeBorders] as FBorder,
      );

  DotsIndicatorAdapter.create() : this();
}

/// Expanded
@dynamicAdapter
@NodeKey(NType.expanded)
class ExpandedAdapter extends WidgetAdapter {
  const ExpandedAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWExpanded(
        context: context,
        state: state,
        child: state.node.child,
      );

  ExpandedAdapter.create() : this();
}

/// Gesture Detector
@dynamicAdapter
@NodeKey(NType.gestureDetector)
class GestureDetectorAdapter extends WidgetAdapter {
  const GestureDetectorAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWGestureDetector(
        state: state,
        child: state.node.child,
        onTap: () {},
        onDoubleTap: () {},
        onLongPress: () {},
      );

  GestureDetectorAdapter.create() : this();
}

/// GridView
@dynamicAdapter
@NodeKey(NType.gridView)
class GridViewAdapter extends WidgetAdapter {
  const GridViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWGridView(
        nodeState: state,
        children: state.node.children ?? [],
        isPrimary: state.node.getAttributes[DBKeys.isPrimary] as bool,
        isVertical: state.node.getAttributes[DBKeys.isVertical] as bool,
        shrinkWrap: state.node.getAttributes[DBKeys.flag] as bool,
        mainAxisSpacing:
            state.node.getAttributes[DBKeys.mainAxisSpacing] as FTextTypeInput,
        childAspectRatio:
            state.node.getAttributes[DBKeys.childAspectRatio] as FTextTypeInput,
        crossAxisCount:
            state.node.getAttributes[DBKeys.crossAxisCount] as FTextTypeInput,
        crossAxisSpacing:
            state.node.getAttributes[DBKeys.crossAxisSpacing] as FTextTypeInput,
      );

  GridViewAdapter.create() : this();
}

/// Hero
@dynamicAdapter
@NodeKey(NType.hero)
class HeroAdapter extends WidgetAdapter {
  const HeroAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWHero(
        context: context,
        nodeState: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  HeroAdapter.create() : this();
}

// TODO: Implement a generic method 'GeneralIconAdapter' to handle all icons
/// Generic Icon
// @NodeKey(NType.featherIcon)
// @NodeKey(NType.fontAwesomeIcon)
// @NodeKey(NType.lineIcon)
// @NodeKey(NType.icon)
class IconAdapter extends WidgetAdapter {
  const IconAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) {
    final iconType =
        (state.node.getAttributes[DBKeys.iconType] as FIconType).value;
    if (iconType == IconLibrary.feather) {
      return const IconFeatherAdapter().toWidget(
        context: context,
        state: state,
      );
    } else if (iconType == IconLibrary.line) {
      return const IconLineAdapter().toWidget(
        context: context,
        state: state,
      );
    } else if (iconType == IconLibrary.fontAwesome) {
      return const IconFeatherAdapter().toWidget(
        context: context,
        state: state,
      );
    } else {
      return const MaterialIconAdapter().toWidget(
        context: context,
        state: state,
      );
    }
  }

  IconAdapter.create() : this();
}

/// Icon Feather
@dynamicAdapter
@NodeKey(NType.featherIcon)
class IconFeatherAdapter extends WidgetAdapter {
  const IconFeatherAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWFeatherIcon(
        context: context,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        icon: state.node.getAttributes[DBKeys.featherIcon] as String? ?? 'plus',
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  IconFeatherAdapter.create() : this();
}

/// Icon Font Awesome
@dynamicAdapter
@NodeKey(NType.fontAwesomeIcon)
class IconFontAwesomeAdapter extends WidgetAdapter {
  const IconFontAwesomeAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWFontAwesome(
        context: context,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        icon: state.node.getAttributes[DBKeys.faIcon] as String? ?? 'plus',
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  IconFontAwesomeAdapter.create() : this();
}

/// Icon Line
@dynamicAdapter
@NodeKey(NType.lineIcon)
class IconLineAdapter extends WidgetAdapter {
  const IconLineAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWLineIcon(
        context: context,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        icon: state.node.getAttributes[DBKeys.faIcon] as String? ?? 'plus',
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  IconLineAdapter.create() : this();
}

/// Material Line
@dynamicAdapter
@NodeKey(NType.icon)
class MaterialIconAdapter extends WidgetAdapter {
  const MaterialIconAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      state.node.getAttributes[DBKeys.featherIcon] != null
          ? OpenWFeatherIcon(
              context: context,
              width: state.node.getAttributes[DBKeys.width] as FSize,
              icon: state.node.getAttributes[DBKeys.featherIcon] ?? 'plus',
              fill: state.node.getAttributes[DBKeys.fill] as FFill,
            )
          : state.node.getAttributes[DBKeys.faIcon] != null
              ? OpenWFontAwesome(
                  context: context,
                  width: state.node.getAttributes[DBKeys.width] as FSize,
                  icon: state.node.getAttributes[DBKeys.faIcon] ?? 'plus',
                  fill: state.node.getAttributes[DBKeys.fill] as FFill,
                )
              : OpenWIcon(
                  context: context,
                  width: state.node.getAttributes[DBKeys.width] as FSize,
                  icon: state.node.getAttributes[DBKeys.icon] ?? 'plus',
                  fill: state.node.getAttributes[DBKeys.fill] as FFill,
                );

  MaterialIconAdapter.create() : this();
}

/// IgnorePointer
@dynamicAdapter
@NodeKey(NType.ignorePointer)
class IgnorePointerAdapter extends WidgetAdapter {
  const IgnorePointerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWIgnorePointer(
        context: context,
        state: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  IgnorePointerAdapter.create() : this();
}

/// Image
@dynamicAdapter
@NodeKey(NType.image)
class ImageAdapter extends WidgetAdapter {
  const ImageAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWImage(
        nodeState: state,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        boxFit: state.node.getAttributes[DBKeys.boxFit] as FBoxFit,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        shadows: state.node.getAttributes[DBKeys.shadows] as FShadow,
      );

  ImageAdapter.create() : this();
}

/// Index Stack
@dynamicAdapter
@NodeKey(NType.indexedStack)
class IndexStackAdapter extends WidgetAdapter {
  const IndexStackAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWIndexedStack(
        nodeState: state,
        index: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        children: state.node.children ?? [],
      );

  IndexStackAdapter.create() : this();
}

/// LinearProgressIndicator
@dynamicAdapter
@NodeKey(NType.linearProgressIndicator)
class LinearProgressIndicatorAdapter extends WidgetAdapter {
  const LinearProgressIndicatorAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWLinearProgressIndicator(
        nodeState: state,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        background: state.node.getAttributes[DBKeys.bgFill] as FFill,
      );

  LinearProgressIndicatorAdapter.create() : this();
}

/// LiquidSwipe
@dynamicAdapter
@NodeKey(NType.liquidSwipe)
class LiquidSwipeAdapter extends WidgetAdapter {
  const LiquidSwipeAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWLiquidSwipe(
        state: state,
        children: state.node.children ?? [],
      );

  LiquidSwipeAdapter.create() : this();
}

/// ListTile
@dynamicAdapter
@NodeKey(NType.listTile)
class ListTileAdapter extends WidgetAdapter {
  const ListTileAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWListTile(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        isThreeLine: state.node.getAttributes[DBKeys.flag] as bool,
        children: state.node.children ?? [],
      );

  ListTileAdapter.create() : this();
}

/// ListView
@dynamicAdapter
@NodeKey(NType.listView)
class ListViewAdapter extends WidgetAdapter {
  const ListViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWListView(
        state: state,
        children: state.node.children ?? [],
        flagValue: false, //Check
        value: const FTextTypeInput(),
        physic: state.node.getAttributes[DBKeys.physic] as FPhysic,
        isPrimary: state.node.getAttributes[DBKeys.isPrimary] as bool, //Check
        isVertical: state.node.getAttributes[DBKeys.isVertical] as bool,
        shrinkWrap: state.node.getAttributes[DBKeys.flag] as bool,
        isReverse: state.node.getAttributes[DBKeys.isFullWidth] as bool,
        //action: state.node.getAttributes[DBKeys.action] as NodeGestureActions,
      );

  ListViewAdapter.create() : this();
}

/// Lottie
@dynamicAdapter
@NodeKey(NType.lottie)
class LottieAdapter extends WidgetAdapter {
  const LottieAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWLottie(
        nodeState: state,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        boxFit: state.node.getAttributes[DBKeys.boxFit] as FBoxFit,
      );

  LottieAdapter.create() : this();
}

/// Offstage
@dynamicAdapter
@NodeKey(NType.offStage)
class OffstageAdapter extends WidgetAdapter {
  const OffstageAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWOffStage(
        nodeState: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  OffstageAdapter.create() : this();
}

/// Opacity
@dynamicAdapter
@NodeKey(NType.opacity)
class OpacityAdapter extends WidgetAdapter {
  const OpacityAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWOpacity(
        context: context,
        state: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  OpacityAdapter.create() : this();
}

/// Padding
@dynamicAdapter
@NodeKey(NType.padding)
class PaddingAdapter extends WidgetAdapter {
  const PaddingAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWPadding(
        context: context,
        state: state,
        child: state.node.child,
        padding: state.node.getAttributes[DBKeys.padding] as FMargins,
      );

  PaddingAdapter.create() : this();
}

//TODO: Create a generic adapter to merge PageView and LiquidSwipe

/// PageView
@dynamicAdapter
@NodeKey(NType.pageView)
class PageViewAdapter extends WidgetAdapter {
  const PageViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWPageView(
        state: state,
        children: state.node.children ?? [],
        flagValue: false,
        isVertical: state.node.getAttributes[DBKeys.isVertical] as bool,
      );

  PageViewAdapter.create() : this();
}

/// Placeholder
@dynamicAdapter
@NodeKey(NType.placeholder)
class PlaceholderAdapter extends WidgetAdapter {
  const PlaceholderAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWPlaceholder(
        nodeState: state,
        color: state.node.getAttributes[DBKeys.fill] as FFill,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        child: state.node.child,
      );

  PlaceholderAdapter.create() : this();
}

/// Positioned
@dynamicAdapter
@NodeKey(NType.positioned)
class PositionedAdapter extends WidgetAdapter {
  const PositionedAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWPositioned(
        context: context,
        state: state,
        child: state.node.child,
        margins: state.node.getAttributes[DBKeys.margins] as FMargins,
        left: state.node.getAttributes[DBKeys.left] as bool,
        top: state.node.getAttributes[DBKeys.top] as bool,
        right: state.node.getAttributes[DBKeys.right] as bool,
        bottom: state.node.getAttributes[DBKeys.bottom] as bool,
      );

  PositionedAdapter.create() : this();
}

/// QR Scanner
@dynamicAdapter
@NodeKey(NType.qrScanner)
class QRScannerAdapter extends WidgetAdapter {
  const QRScannerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWQRScanner(
        state: state,
      );

  QRScannerAdapter.create() : this();
}

/// QR Code
@dynamicAdapter
@NodeKey(NType.qrCode)
class QRCodeAdapter extends WidgetAdapter {
  const QRCodeAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWQR(
        nodeState: state,
        content: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        withImage: state.node.getAttributes[DBKeys.flag] as bool,
        size: state.node.getAttributes[DBKeys.width] as FSize,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  QRCodeAdapter.create() : this();
}

/// Radio
@dynamicAdapter
@NodeKey(NType.radio)
class RadioAdapter extends WidgetAdapter {
  const RadioAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWRadio(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        groupValue:
            state.node.getAttributes[DBKeys.actionValue] as FTextTypeInput,
      );

  RadioAdapter.create() : this();
}

/// Refresh Indicator
@dynamicAdapter
@NodeKey(NType.refreshIndicator)
class RefreshIndicatorAdapter extends WidgetAdapter {
  const RefreshIndicatorAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWRefreshIndicator(
        nodeState: state,
        actionValue:
            state.node.getAttributes[DBKeys.actionValue] as FTextTypeInput,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        duration: state.node.getAttributes[DBKeys.duration] as FTextTypeInput,
        children: state.node.children ?? [],
      );

  RefreshIndicatorAdapter.create() : this();
}

/// Responsive Condition
@dynamicAdapter
@NodeKey(NType.responsiveCondition)
class ResponsiveConditionAdapter extends WidgetAdapter {
  const ResponsiveConditionAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWResponsiveCondition(
        nodeState: state,
        child: state.node.child,
        visibleOnDesktop:
            state.node.getAttributes[DBKeys.visibleOnDesktop] as bool,
        visibleOnMobile:
            state.node.getAttributes[DBKeys.visibleOnMobile] as bool,
        visibleOnTablet:
            state.node.getAttributes[DBKeys.visibleOnTablet] as bool,
      );

  ResponsiveConditionAdapter.create() : this();
}

/// Rotated Box
@dynamicAdapter
@NodeKey(NType.rotatedBox)
class RotatedBoxAdapter extends WidgetAdapter {
  const RotatedBoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWRotatedBox(
        context: context,
        state: state,
        child: state.node.child,
        quarterTurns: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  RotatedBoxAdapter.create() : this();
}

/// Row
@dynamicAdapter
@NodeKey(NType.row)
class RowAdapter extends WidgetAdapter {
  const RowAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWRow(
        context: context,
        state: state,
        children: state.node.children ?? [],
        mainAxisAlignment: state.node.getAttributes[DBKeys.mainAxisAlignment]
            as FMainAxisAlignment,
        crossAxisAlignment: state.node.getAttributes[DBKeys.crossAxisAlignment]
            as FCrossAxisAlignment,
        mainAxisSize:
            state.node.getAttributes[DBKeys.mainAxisSize] as FMainAxisSize,
      );

  RowAdapter.create() : this();
}

/// SafeArea
@dynamicAdapter
@NodeKey(NType.safeArea)
class SafeAreaAdapter extends WidgetAdapter {
  const SafeAreaAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSafeArea(
        state: state,
        context: context,
        child: state.node.child,
        left: state.node.getAttributes[DBKeys.left] as bool,
        top: state.node.getAttributes[DBKeys.top] as bool,
        right: state.node.getAttributes[DBKeys.right] as bool,
        bottom: state.node.getAttributes[DBKeys.bottom] as bool,
      );

  SafeAreaAdapter.create() : this();
}

/// Scaffold
@dynamicAdapter
@NodeKey(NType.scaffold)
class ScaffoldAdapter extends WidgetAdapter {
  const ScaffoldAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWScaffold(
        key: ValueKey(state.node.id),
        nodeState: state,
        children: state.node.children ?? [],
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        flag: state.node.getAttributes[DBKeys.flag] as bool,
        isBoxed: state.node.getAttributes[DBKeys.isBoxed] as bool,
        showAppBar: state.node.getAttributes[DBKeys.showAppBar] as bool,
        showBottomBar: state.node.getAttributes[DBKeys.showBottomBar] as bool,
        showDrawer: state.node.getAttributes[DBKeys.showDrawer] as bool,
        isScrollable: false,
        isClipped: false,
        bodyExtended: false,
      );

  ScaffoldAdapter.create() : this();
}

/// SizedBox
@dynamicAdapter
@NodeKey(NType.sizedBox)
class SizedBoxAdapter extends WidgetAdapter {
  const SizedBoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSizedBox(
        context: context,
        state: state,
        child: state.node.child,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
      );

  SizedBoxAdapter.create() : this();
}

/// Spacer
@dynamicAdapter
@NodeKey(NType.spacer)
class SpacerAdapter extends WidgetAdapter {
  const SpacerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      const OpenWSpacer();

  SpacerAdapter.create() : this();
}

/// Stack
@dynamicAdapter
@NodeKey(NType.stack)
class StackAdapter extends WidgetAdapter {
  const StackAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWStack(
        context: context,
        state: state,
        children: state.node.children ?? [],
      );

  StackAdapter.create() : this();
}

/// TCard
@dynamicAdapter
@NodeKey(NType.tcard)
class TCardAdapter extends WidgetAdapter {
  const TCardAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTCard(
        state: state,
        children: state.node.children ?? [],
        lockYAxis: state.node.getAttributes[DBKeys.flag] as bool,
        slideSpeed: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        delaySlideFor:
            state.node.getAttributes[DBKeys.valueOfCondition] as FTextTypeInput,
      );

  TCardAdapter.create() : this();
}

/// Text
@dynamicAdapter
@NodeKey(NType.text)
class TextAdapter extends WidgetAdapter {
  const TextAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWText(
        state: state,
        isFullWidth: state.node.getAttributes[DBKeys.isFullWidth] as bool,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(),
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle? ??
            const FTextStyle(),
        maxLines: state.node.getAttributes[DBKeys.maxLines] as FTextTypeInput,
      );

  TextAdapter.create() : this();
}

/// TextField
@dynamicAdapter
@NodeKey(NType.textField)
class TextFieldAdapter extends WidgetAdapter {
  const TextFieldAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTextField(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(),
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle? ??
            const FTextStyle(),
        labelText:
            state.node.getAttributes[DBKeys.labelText] as FTextTypeInput? ??
                const FTextTypeInput(),
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        margins: state.node.getAttributes[DBKeys.margins] as FMargins,
        paddings: state.node.getAttributes[DBKeys.padding] as FMargins,
        keyboardType:
            state.node.getAttributes[DBKeys.keyboardType] as FKeyboardType,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        maxLenght: state.node.getAttributes[DBKeys.maxLenght] as FTextTypeInput,
        maxLines: state.node.getAttributes[DBKeys.maxLines] as FTextTypeInput,
        minLines: state.node.getAttributes[DBKeys.minLines] as FTextTypeInput,
        showCursor:
            state.node.getAttributes[DBKeys.showCursor] as bool? ?? false,
        autoCorrect:
            state.node.getAttributes[DBKeys.autoCorrect] as bool? ?? false,
        obscureText:
            state.node.getAttributes[DBKeys.obscureText] as bool? ?? false,
        cursorColor: state.node.getAttributes[DBKeys.cursorColor] as FFill,
        hintTextColor: state.node.getAttributes[DBKeys.hintTextColor] as FFill,
        enabledBorderColor:
            state.node.getAttributes[DBKeys.enabledBorderColor] as FFill,
        focusedBorderColor:
            state.node.getAttributes[DBKeys.focusedBorderColor] as FFill,
        showBorders:
            state.node.getAttributes[DBKeys.showBorders] as bool? ?? false,
        bordersSize:
            state.node.getAttributes[DBKeys.bordersSize] as FTextTypeInput,
      );

  TextFieldAdapter.create() : this();
}

/// Tooltip
@dynamicAdapter
@NodeKey(NType.tooltip)
class TooltipAdapter extends WidgetAdapter {
  const TooltipAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTooltip(
        nodeState: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  TooltipAdapter.create() : this();
}

/// Transform Rotate
@dynamicAdapter
@NodeKey(NType.transformRotate)
class TransformRotateAdapter extends WidgetAdapter {
  const TransformRotateAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTransformRotate(
        context: context,
        state: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  TransformRotateAdapter.create() : this();
}

/// Transform
@dynamicAdapter
@NodeKey(NType.transformTranslate)
class TransformAdapter extends WidgetAdapter {
  const TransformAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTransform(
        context: context,
        state: state,
        child: state.node.child,
        valueX: state.node.getAttributes[DBKeys.rotateX] as FTextTypeInput,
        valueY: state.node.getAttributes[DBKeys.rotateY] as FTextTypeInput,
        valueZ: state.node.getAttributes[DBKeys.rotateZ] as FTextTypeInput,
      );

  TransformAdapter.create() : this();
}

/// Video
@dynamicAdapter
@NodeKey(NType.video)
class VideoAdapter extends WidgetAdapter {
  const VideoAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWVideo(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(value: 'K18cpp_-gP8'),
        startAt: state.node.getAttributes[DBKeys.startAt] as int? ?? 0,
        showControls:
            state.node.getAttributes[DBKeys.showControls] as bool? ?? false,
        showFullScreen:
            state.node.getAttributes[DBKeys.isFullWidth] as bool? ?? false,
        loopVideo: state.node.getAttributes[DBKeys.loopVideo] as bool? ?? false,
      );

  VideoAdapter.create() : this();
}

/// Visibility
@dynamicAdapter
@NodeKey(NType.visibility)
class VisibilityAdapter extends WidgetAdapter {
  const VisibilityAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWVisibility(
        context: context,
        state: state,
        child: state.node.child,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
      );

  VisibilityAdapter.create() : this();
}

/// Wrap
@dynamicAdapter
@NodeKey(NType.wrap)
class WrapAdapter extends WidgetAdapter {
  const WrapAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWWrap(
        context: context,
        state: state,
        children: state.node.children ?? [],
      );

  WrapAdapter.create() : this();
}

/// Animation Config Grid
@dynamicAdapter
@NodeKey(NType.animationConfigGrid)
class AnimationConfigGridAdapter extends WidgetAdapter {
  const AnimationConfigGridAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAnimationConfigGridView(
        nodeState: state,
        child: state.node.child,
        index: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        duration: state.node.getAttributes[DBKeys.duration] as FTextTypeInput,
        numberColumns:
            state.node.getAttributes[DBKeys.valueOfCondition] as FTextTypeInput,
      );

  AnimationConfigGridAdapter.create() : this();
}

/// Animation Config List
@dynamicAdapter
@NodeKey(NType.animationConfigList)
class AnimationConfigListAdapter extends WidgetAdapter {
  const AnimationConfigListAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAnimationConfigurationListView(
        nodeState: state,
        child: state.node.child,
        index: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        duration: state.node.getAttributes[DBKeys.duration] as FTextTypeInput,
      );

  AnimationConfigListAdapter.create() : this();
}

/// Fade In
@dynamicAdapter
@NodeKey(NType.fadeInAnimation)
class FadeInAdapter extends WidgetAdapter {
  const FadeInAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWFadeInAnimation(
        state: state,
        child: state.node.child,
      );

  FadeInAdapter.create() : this();
}

/// Scale
@dynamicAdapter
@NodeKey(NType.scaleAnimation)
class ScaleAdapter extends WidgetAdapter {
  const ScaleAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWScaleAnimation(
        state: state,
        child: state.node.child,
      );

  ScaleAdapter.create() : this();
}

/// Slide
@dynamicAdapter
@NodeKey(NType.slideAnimation)
class SlideAdapter extends WidgetAdapter {
  const SlideAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSlideAnimation(
        state: state,
        child: state.node.child,
      );

  SlideAdapter.create() : this();
}

/// Login with Apple
@dynamicAdapter
@NodeKey(NType.loginWithApple)
class LoginWithAppleAdapter extends WidgetAdapter {
  const LoginWithAppleAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.apple,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithAppleAdapter.create() : this();
}

/// Login with BitBucket
@dynamicAdapter
@NodeKey(NType.loginWithBitBucket)
class LoginWithBitBucketAdapter extends WidgetAdapter {
  const LoginWithBitBucketAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.bitbucket,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithBitBucketAdapter.create() : this();
}

/// Login with Discord
@dynamicAdapter
@NodeKey(NType.loginWithDiscord)
class LoginWithDiscordAdapter extends WidgetAdapter {
  const LoginWithDiscordAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.discord,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithDiscordAdapter.create() : this();
}

/// Login with Facebook
@dynamicAdapter
@NodeKey(NType.loginWithFacebook)
class LoginWithFacebookAdapter extends WidgetAdapter {
  const LoginWithFacebookAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.facebook,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithFacebookAdapter.create() : this();
}

/// Login with GitHub
@dynamicAdapter
@NodeKey(NType.loginWithGitHub)
class LoginWithGitHubAdapter extends WidgetAdapter {
  const LoginWithGitHubAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.github,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithGitHubAdapter.create() : this();
}

/// Login with GitLab
@dynamicAdapter
@NodeKey(NType.loginWithGitlab)
class LoginWithGitLabAdapter extends WidgetAdapter {
  const LoginWithGitLabAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.gitlab,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithGitLabAdapter.create() : this();
}

/// Login with Google
@dynamicAdapter
@NodeKey(NType.loginWithGoogle)
class LoginWithGoogleAdapter extends WidgetAdapter {
  const LoginWithGoogleAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.google,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithGoogleAdapter.create() : this();
}

/// Login with Linkedin
@dynamicAdapter
@NodeKey(NType.loginWithLinkedin)
class LoginWithLinkedinAdapter extends WidgetAdapter {
  const LoginWithLinkedinAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.linkedin,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithLinkedinAdapter.create() : this();
}

/// Login with Microsoft
@dynamicAdapter
@NodeKey(NType.loginWithMicrosoft)
class LoginWithMicrosoftAdapter extends WidgetAdapter {
  const LoginWithMicrosoftAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.microsoft,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithMicrosoftAdapter.create() : this();
}

/// Login with Twitch
@dynamicAdapter
@NodeKey(NType.loginWithTwitch)
class LoginWithTwitchAdapter extends WidgetAdapter {
  const LoginWithTwitchAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.twitch,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithTwitchAdapter.create() : this();
}

/// Login with Twitter
@dynamicAdapter
@NodeKey(NType.loginWithTwitter)
class LoginWithTwitterAdapter extends WidgetAdapter {
  const LoginWithTwitterAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSocialButton(
        nodeState: state,
        child: state.node.child,
        type: SocialButtonType.twitter,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        onPressed: () {},
        onLongPress: () {},
      );

  LoginWithTwitterAdapter.create() : this();
}

/// AppBar
@dynamicAdapter
@NodeKey(NType.appBar)
class AppBarAdapter extends WidgetAdapter {
  const AppBarAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAppBar(
        state: state,
        child: state.node.child,
      );

  AppBarAdapter.create() : this();
}

/// BottomBar
@dynamicAdapter
@NodeKey(NType.bottomBar)
class BottomBarAdapter extends WidgetAdapter {
  const BottomBarAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWBottomBar(
        state: state,
        child: state.node.child,
      );

  BottomBarAdapter.create() : this();
}

/// Drawer
@dynamicAdapter
@NodeKey(NType.drawer)
class DrawerAdapter extends WidgetAdapter {
  const DrawerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWDrawer(
        state: state,
        child: state.node.child,
      );

  DrawerAdapter.create() : this();
}

/// Wrapper
@dynamicAdapter
@NodeKey(NType.wrapper)
class WrapperAdapter extends WidgetAdapter {
  const WrapperAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWWrapperContainer(
        isBoxed: state.node.getAttributes[DBKeys.flag] as bool,
        nodeState: state,
        child: state.node.child,
      );

  WrapperAdapter.create() : this();
}
