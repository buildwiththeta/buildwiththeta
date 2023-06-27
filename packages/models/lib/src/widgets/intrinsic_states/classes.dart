import 'package:theta_models/theta_models.dart';

/// Align
@nodeTypeISKey
@NodeKey(NType.align)
class AlignIntrinsicStates extends IntrinsicState {
  AlignIntrinsicStates()
      : super(
          nodeIcon: 'nodes/align/',
          synonymous: [NodeType.name(NType.align), 'baseline', 'bottom'],
          displayName: NodeType.name(NType.align),
          type: NType.align,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  AlignIntrinsicStates.create() : this();
}

/// Audio Player
@nodeTypeISKey
@NodeKey(NType.audioPlayer)
class AudioPlayerIntrinsicStates extends IntrinsicState {
  AudioPlayerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.audioPlayer.path,
          synonymous: [
            NodeType.name(NType.audioPlayer),
          ],
          displayName: NodeType.name(NType.audioPlayer),
          type: NType.audioPlayer,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  AudioPlayerIntrinsicStates.create() : this();
}

/// Audio Player Progress Indicator
@nodeTypeISKey
@NodeKey(NType.audioPlayerProgressIndicator)
class AudioPlayerProgressIndicatorIntrinsicStates extends IntrinsicState {
  AudioPlayerProgressIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.audioplayerProgressidicator.path,
          synonymous: [
            NodeType.name(NType.audioPlayerProgressIndicator),
          ],
          displayName: NodeType.name(NType.audioPlayerProgressIndicator),
          type: NType.audioPlayerProgressIndicator,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  AudioPlayerProgressIndicatorIntrinsicStates.create() : this();
}

/// Audio Player Volume Indicator
@nodeTypeISKey
@NodeKey(NType.audioPlayerVolumeIndicator)
class AudioPlayerVolumeIndicatorIntrinsicStates extends IntrinsicState {
  AudioPlayerVolumeIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.audioplayerVolumeidicator.path,
          synonymous: [
            NodeType.name(NType.audioPlayerVolumeIndicator),
          ],
          displayName: NodeType.name(NType.audioPlayerVolumeIndicator),
          type: NType.audioPlayerVolumeIndicator,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  AudioPlayerVolumeIndicatorIntrinsicStates.create() : this();
}

/// Badge
@nodeTypeISKey
@NodeKey(NType.badge)
class BadgeIntrinsicStates extends IntrinsicState {
  BadgeIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.badge.path,
          synonymous: const ['badge', 'notification'],
          displayName: NodeType.name(NType.badge),
          type: NType.badge,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  BadgeIntrinsicStates.create() : this();
}

/// Barcode
@nodeTypeISKey
@NodeKey(NType.barcode)
class BarcodeIntrinsicStates extends IntrinsicState {
  BarcodeIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.barcode.path,
          synonymous: [NodeType.name(NType.barcode), 'qrcode', 'code'],
          displayName: NodeType.name(NType.barcode),
          type: NType.barcode,
          category: NodeCategories.unclassified,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  BarcodeIntrinsicStates.create() : this();
}

/// BottomBar
@nodeTypeISKey
@NodeKey(NType.bottombaritem)
class BottombaritemIntrinsicStates extends IntrinsicState {
  BottombaritemIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.icon.path,
          synonymous: const [
            'bottom',
            'bottom bar',
            'bottombar',
            'bottombaritem'
          ],
          displayName: 'BottomBar Item',
          type: NType.bottombaritem,
          category: NodeCategories.layout,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  BottombaritemIntrinsicStates.create() : this();
}

/// Bouncing Widget
@nodeTypeISKey
@NodeKey(NType.bouncingWidget)
class BouncingWidgetIntrinsicStates extends IntrinsicState {
  BouncingWidgetIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.bouncingWidget.path,
          synonymous: const ['bouncing widget', 'animation', 'hover', 'on tap'],
          displayName: NodeType.name(NType.bouncingWidget),
          type: NType.bouncingWidget,
          category: NodeCategories.animations,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          gestures: const [
            Trigger.onTap,
          ],
        );
  BouncingWidgetIntrinsicStates.create() : this();
}

/// Button
@nodeTypeISKey
@NodeKey(NType.button)
class ButtonIntrinsicStates extends IntrinsicState {
  ButtonIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.button.path,
          blockedTypes: const [],
          synonymous: const ['button', 'send', 'submit', 'form', 'input'],
          displayName: NodeType.name(NType.button),
          type: NType.button,
          category: NodeCategories.basic,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [
            Trigger.onTap,
            Trigger.onLongPress,
            Trigger.onDoubleTap
          ],
        );
  ButtonIntrinsicStates.create() : this();
}

/// Calendar
@nodeTypeISKey
@NodeKey(NType.calendar)
class CalendarIntrinsicStates extends IntrinsicState {
  CalendarIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.calendar.path,
          blockedTypes: const [],
          synonymous: [NodeType.name(NType.calendar), 'baseline', 'bottom'],
          displayName: NodeType.name(NType.calendar),
          type: NType.calendar,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const ['Add Day Builder', 'Add Month Builder'],
          gestures: const [],
        );
  CalendarIntrinsicStates.create() : this();
}

/// CalendarV2
@nodeTypeISKey
@NodeKey(NType.calendarV2)
class CalendarV2IntrinsicStates extends IntrinsicState {
  CalendarV2IntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.calendar.path,
          blockedTypes: const [],
          synonymous: [NodeType.name(NType.calendarV2), 'baseline', 'bottom'],
          displayName: NodeType.name(NType.calendarV2),
          type: NType.calendarV2,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [
            // 'Add Day Builder', 'Add Month Builder'
          ],
          gestures: const [],
        );
  CalendarV2IntrinsicStates.create() : this();
}

/// Card
@nodeTypeISKey
@NodeKey(NType.card)
class CardIntrinsicStates extends IntrinsicState {
  CardIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.card.path,
          synonymous: const ['container', 'card', 'alignment'],
          displayName: NodeType.name(NType.card),
          type: NType.card,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  CardIntrinsicStates.create() : this();
}

/// Checkbox
@nodeTypeISKey
@NodeKey(NType.center)
class CenterIntrinsicStates extends IntrinsicState {
  CenterIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.center.path,
          blockedTypes: const [],
          synonymous: const ['center', 'alignment'],
          displayName: NodeType.name(NType.center),
          type: NType.center,
          category: NodeCategories.basic,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  CenterIntrinsicStates.create() : this();
}

/// Checkbox
@nodeTypeISKey
@NodeKey(NType.checkbox)
class CheckBoxIntrinsicStates extends IntrinsicState {
  CheckBoxIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.checkbox.path,
          synonymous: const ['checkbox', 'form', 'input'],
          displayName: NodeType.name(NType.checkbox),
          type: NType.checkbox,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          gestures: const [],
        );
  CheckBoxIntrinsicStates.create() : this();
}

/// CicrularProgressIndicator
@nodeTypeISKey
@NodeKey(NType.circularProgressIndicator)
class CircularProgressIndicatorIntrinsicStates extends IntrinsicState {
  CircularProgressIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.circularProgress.path,
          synonymous: const [
            'circularProgressIndicator',
            'linearProgressIndicator'
          ],
          displayName: NodeType.name(NType.circularProgressIndicator),
          type: NType.circularProgressIndicator,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  CircularProgressIndicatorIntrinsicStates.create() : this();
}

/// ClipRRect
@nodeTypeISKey
@NodeKey(NType.clipRoundedRect)
class ClipRRectIntrinsicStates extends IntrinsicState {
  ClipRRectIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.clipRrect.path,
          synonymous: const [
            'clip rounded',
            'mask',
            'rounded',
            'clipRoundedRect'
          ],
          displayName: NodeType.name(NType.clipRoundedRect),
          type: NType.clipRoundedRect,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ClipRRectIntrinsicStates.create() : this();
}

/// Column
@nodeTypeISKey
@NodeKey(NType.column)
class ColumnIntrinsicStates extends IntrinsicState {
  ColumnIntrinsicStates()
      : super(
          nodeIcon: 'nodes/column/',
          synonymous: const ['column', 'list', 'vertical list'],
          displayName: NodeType.name(NType.column),
          type: NType.column,
          category: NodeCategories.basic,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  ColumnIntrinsicStates.create() : this();
}

/// Component
@nodeTypeISKey
@NodeKey(NType.component)
class ComponentIntrinsicStates extends IntrinsicState {
  ComponentIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component/',
          synonymous: const ['component', 'symbol', 'widget'],
          displayName: NodeType.name(NType.component),
          type: NType.component,
          category: NodeCategories.unclassified,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  ComponentIntrinsicStates.create() : this();
}

/// ConcentricPageView
@nodeTypeISKey
@NodeKey(NType.concentricPageView)
class ConcentricPageViewIntrinsicStates extends IntrinsicState {
  ConcentricPageViewIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.concentricPageView.path,
          synonymous: const ['concentric pageview', 'slider', 'carousel'],
          displayName: NodeType.name(NType.concentricPageView),
          type: NType.concentricPageView,
          category: NodeCategories.layout,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  ConcentricPageViewIntrinsicStates.create() : this();
}

/// Condition
@nodeTypeISKey
@NodeKey(NType.condition)
class ConditionIntrinsicStates extends IntrinsicState {
  ConditionIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.ifCondition.path,
          synonymous: const [
            'condition',
            'logic',
            'if',
            'else',
          ],
          displayName: NodeType.name(NType.condition),
          type: NType.condition,
          category: NodeCategories.visibility,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: const ['Add Widget If True', 'Add Widget If False'],
        );
  ConditionIntrinsicStates.create() : this();
}

/// Container
@nodeTypeISKey
@NodeKey(NType.container)
class ContainerIntrinsicStates extends IntrinsicState {
  ContainerIntrinsicStates()
      : super(
          nodeIcon: 'nodes/container/',
          synonymous: const ['box', 'container', 'square', 'div'],
          displayName: NodeType.name(NType.container),
          type: NType.container,
          category: NodeCategories.basic,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ContainerIntrinsicStates.create() : this();
}

/// CupertinoPicker
@nodeTypeISKey
@NodeKey(NType.cupertinoPicker)
class CupertinoPickerIntrinsicStates extends IntrinsicState {
  CupertinoPickerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.cupertinoPicker.path,
          synonymous: const [
            'cupertino picker',
            'picker',
            'date',
            'cupertino',
          ],
          displayName: NodeType.name(NType.cupertinoPicker),
          type: NType.cupertinoPicker,
          category: NodeCategories.unclassified,
          maxChildren: null,
          canHave: ChildrenEnum.children,
          gestures: const [],
        );
  CupertinoPickerIntrinsicStates.create() : this();
}

/// CupertinoSegmentedControl
@nodeTypeISKey
@NodeKey(NType.cupertinoSegmentedControl)
class CupertinoSegmentedControlIntrinsicState extends IntrinsicState {
  CupertinoSegmentedControlIntrinsicState()
      : super(
          nodeIcon: Assets.wIcons.cupertinoSegmentedControl.path,
          synonymous: const [
            'cupertinoSwitch',
            'checkbox',
            'radio',
            'ontap',
            'onpressed',
            'click'
          ],
          displayName: NodeType.name(NType.cupertinoSegmentedControl),
          type: NType.cupertinoSegmentedControl,
          category: NodeCategories.form,
          maxChildren: 4,
          canHave: ChildrenEnum.children,
          gestures: const [
            Trigger.onTap,
          ],
        );
  CupertinoSegmentedControlIntrinsicState.create() : this();
}

/// CupertinoSwitch
@nodeTypeISKey
@NodeKey(NType.cupertinoSwitch)
class CupertinoSwitchIntrinsicStates extends IntrinsicState {
  CupertinoSwitchIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.cupertinoSwitch.path,
          synonymous: [
            'cupertinoSwitch',
            'checkbox',
            'radio',
            'ontap',
            'onpressed',
            'click'
          ],
          displayName: NodeType.name(NType.cupertinoSwitch),
          type: NType.cupertinoSwitch,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.none,
          addChildLabels: [],
          gestures: [],
        );
  CupertinoSwitchIntrinsicStates.create() : this();
}

/// Divider
@nodeTypeISKey
@NodeKey(NType.divider)
class DividerIntrinsicStates extends IntrinsicState {
  DividerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.divider.path,
          synonymous: const ['divider', 'separator', 'div'],
          displayName: NodeType.name(NType.divider),
          type: NType.divider,
          category: NodeCategories.basic,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  DividerIntrinsicStates.create() : this();
}

/// DotsIndicator
@nodeTypeISKey
@NodeKey(NType.dotsIndicator)
class DotsIndicatorIntrinsicStates extends IntrinsicState {
  DotsIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.dotsIndicator.path,
          synonymous: const ['dots', 'indicator'],
          displayName: NodeType.name(NType.dotsIndicator),
          type: NType.dotsIndicator,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  DotsIndicatorIntrinsicStates.create() : this();
}

/// Expanded
@nodeTypeISKey
@NodeKey(NType.expanded)
class ExpandedIntrinsicStates extends IntrinsicState {
  ExpandedIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.expanded.path,
          synonymous: const ['expanded', 'auto', 'space', 'flex'],
          displayName: NodeType.name(NType.expanded),
          type: NType.expanded,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ExpandedIntrinsicStates.create() : this();
}

/// GestureDetector
@nodeTypeISKey
@NodeKey(NType.gestureDetector)
class GestureDetectorIntrinsicStates extends IntrinsicState {
  GestureDetectorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.gestureDetector.path,
          blockedTypes: const [],
          synonymous: const ['gesture', 'ontap', 'onpressed', 'click'],
          displayName: NodeType.name(NType.gestureDetector),
          type: NType.gestureDetector,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: const [],
          gestures: const [
            Trigger.onTap,
            Trigger.onLongPress,
            Trigger.onDoubleTap,
          ],
        );
  GestureDetectorIntrinsicStates.create() : this();
}

/// GoogleAdMobBannerAd
@nodeTypeISKey
@NodeKey(NType.adMobBanner)
class GoogleAdMobBannerAdIntrinsicStates extends IntrinsicState {
  GoogleAdMobBannerAdIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.admob.path,
          blockedTypes: [],
          synonymous: ['ad', 'AdMob', 'banner'],
          displayName: NodeType.name(NType.adMobBanner),
          type: NType.adMobBanner,
          category: NodeCategories.advanced,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: [],
          gestures: [],
        );
  GoogleAdMobBannerAdIntrinsicStates.create() : this();
}

/// Hero
@nodeTypeISKey
@NodeKey(NType.hero)
class HeroIntrinsicStates extends IntrinsicState {
  HeroIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.hero.path,
          synonymous: const [
            'hero',
            'smart animate',
            'animation',
            'transition'
          ],
          displayName: NodeType.name(NType.hero),
          type: NType.hero,
          category: NodeCategories.animations,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  HeroIntrinsicStates.create() : this();
}

/// Feather Icon
@nodeTypeISKey
@NodeKey(NType.featherIcon)
class FeatherIconIntrinsicStates extends IntrinsicState {
  FeatherIconIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.icon.path,
          synonymous: ['feather', 'icon', 'font'],
          displayName: 'Feather Icon',
          type: NType.featherIcon,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  FeatherIconIntrinsicStates.create() : this();
}

/// FontAwesome Icon
@nodeTypeISKey
@NodeKey(NType.fontAwesomeIcon)
class FontAwesomeIconIntrinsicStates extends IntrinsicState {
  FontAwesomeIconIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.icon.path,
          synonymous: ['fontawesome', 'fa', 'icon', 'font'],
          displayName: 'FA Icon',
          type: NType.fontAwesomeIcon,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  FontAwesomeIconIntrinsicStates.create() : this();
}

/// Line Icon
@nodeTypeISKey
@NodeKey(NType.lineIcon)
class LineIconIntrinsicStates extends IntrinsicState {
  LineIconIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.icon.path,
          synonymous: ['line', 'icons', 'lineicons', 'icon', 'font'],
          displayName: 'Line Icon',
          type: NType.lineIcon,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  LineIconIntrinsicStates.create() : this();
}

/// Material Icon
@nodeTypeISKey
@NodeKey(NType.icon)
class IconIntrinsicStates extends IntrinsicState {
  IconIntrinsicStates()
      : super(
          nodeIcon: 'nodes/icon/',
          synonymous: ['icon', 'menu'],
          displayName: 'Material Icon',
          type: NType.icon,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  IconIntrinsicStates.create() : this();
}

/// IgnorePointer
@nodeTypeISKey
@NodeKey(NType.ignorePointer)
class IgnorePointerIntrinsicStates extends IntrinsicState {
  IgnorePointerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.ignorePointer.path,
          synonymous: const ['disabled', 'ignore pointer'],
          displayName: NodeType.name(NType.ignorePointer),
          type: NType.ignorePointer,
          category: NodeCategories.visibility,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  IgnorePointerIntrinsicStates.create() : this();
}

/// Image
@nodeTypeISKey
@NodeKey(NType.image)
class ImageIntrinsicStates extends IntrinsicState {
  ImageIntrinsicStates()
      : super(
          nodeIcon: 'nodes/image/',
          synonymous: const ['image', 'picture', 'photo'],
          displayName: NodeType.name(NType.image),
          type: NType.image,
          category: NodeCategories.basic,
          canHave: ChildrenEnum.none,
        );
  ImageIntrinsicStates.create() : this();
}

/// IndexedStack
@nodeTypeISKey
@NodeKey(NType.indexedStack)
class IndexedStackIntrinsicStates extends IntrinsicState {
  IndexedStackIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.indexStack.path,
          synonymous: const ['indexed stack', 'list', 'vertical list'],
          displayName: NodeType.name(NType.indexedStack),
          type: NType.indexedStack,
          category: NodeCategories.layout,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  IndexedStackIntrinsicStates.create() : this();
}

/// LinearProgressIndicator
@nodeTypeISKey
@NodeKey(NType.linearProgressIndicator)
class LinearProgressIndicatorIntrinsicStates extends IntrinsicState {
  LinearProgressIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.progressBar.path,
          synonymous: const ['linearProgressIndicator'],
          displayName: NodeType.name(NType.linearProgressIndicator),
          type: NType.linearProgressIndicator,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  LinearProgressIndicatorIntrinsicStates.create() : this();
}

/// Liquid Swipe
/// https://pub.dev/packages/liquid_swipe
@nodeTypeISKey
@NodeKey(NType.liquidSwipe)
class LiquidSwipeIntrinsicStates extends IntrinsicState {
  LiquidSwipeIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.liquidSwipe.path,
          synonymous: const [
            'liquid swipe',
            'cuberto',
            'special',
            'effects',
            'pageview'
          ],
          displayName: NodeType.name(NType.liquidSwipe),
          type: NType.liquidSwipe,
          category: NodeCategories.unclassified,
          canHave: ChildrenEnum.children,
        );
  LiquidSwipeIntrinsicStates.create() : this();
}

/// ListTile
/// https://api.flutter.dev/flutter/material/ListTile-class.html
@nodeTypeISKey
@NodeKey(NType.listTile)
class ListTileIntrinsicStates extends IntrinsicState {
  ListTileIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.list.path,
          synonymous: [
            NodeType.name(NType.cupertinoAppBar),
            'navigation',
            'navbar'
          ],
          displayName: NodeType.name(NType.listTile),
          type: NType.listTile,
          category: NodeCategories.unclassified,
          maxChildren: 3,
          canHave: ChildrenEnum.children,
          addChildLabels: const [
            'Add Leading',
            'Add Trailing',
            'Add Title',
          ],
        );
  ListTileIntrinsicStates.create() : this();
}

/// ListView & GridView
/// https://api.flutter.dev/flutter/widgets/ListView-class.html
/// https://api.flutter.dev/flutter/widgets/GridView-class.html
@nodeTypeISKey
@NodeKey(NType.listView)
@NodeKey(NType.gridView)
class ListViewIntrinsicStates extends IntrinsicState {
  const ListViewIntrinsicStates()
      : super(
          nodeIcon: 'nodes/collection/',
          blockedTypes: const [],
          synonymous: const ['scroll', 'vertical list', 'listview', 'gridview'],
          displayName: 'Collection',
          type: NType.listView,
          category: NodeCategories.layout,
          maxChildren: null,
          canHave: ChildrenEnum.children,
          addChildLabels: const [],
          gestures: const [],
        );

  const ListViewIntrinsicStates.create() : this();
}

/// Lottie
/// https://pub.dev/packages/lottie
@nodeTypeISKey
@NodeKey(NType.lottie)
class LottieIntrinsicStates extends IntrinsicState {
  LottieIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.lottieFiles.path,
          blockedTypes: const [],
          synonymous: const ['lottie', 'animation'],
          displayName: NodeType.name(NType.lottie),
          type: NType.lottie,
          category: NodeCategories.animations,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [],
        );
  LottieIntrinsicStates.create() : this();
}

/// Map
@nodeTypeISKey
@NodeKey(NType.mapBuilder)
class MapBuilderIntrinsicStates extends IntrinsicState {
  MapBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.maps.path,
          blockedTypes: const [],
          synonymous: const ['map builder'],
          displayName: 'Mapbox builder',
          type: NType.mapBuilder,
          category: NodeCategories.unclassified,
          maxChildren: null,
          canHave: ChildrenEnum.child,
          addChildLabels: const [],
          gestures: const [
            Trigger.onDoubleTap,
          ],
        );
  MapBuilderIntrinsicStates.create() : this();
}

/// Map
@nodeTypeISKey
@NodeKey(NType.map)
class MapIntrinsicStates extends IntrinsicState {
  MapIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.maps.path,
          blockedTypes: const [],
          synonymous: const ['map'],
          displayName: 'Mapbox',
          type: NType.map,
          category: NodeCategories.advanced,
          maxChildren: null,
          canHave: ChildrenEnum.children,
          addChildLabels: const [],
          gestures: const [
            Trigger.onDoubleTap,
          ],
        );
  MapIntrinsicStates.create() : this();
}

/// Marker
@nodeTypeISKey
@NodeKey(NType.marker)
class MarkerIntrinsicStates extends IntrinsicState {
  MarkerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.marker.path,
          blockedTypes: const [],
          synonymous: [NodeType.name(NType.marker), 'map', 'icon'],
          displayName: 'Mapbox Marker',
          type: NType.marker,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: const [],
          gestures: const [],
        );
  MarkerIntrinsicStates.create() : this();
}

/// Material App Bar
@nodeTypeISKey
@NodeKey(NType.materialAppBar)
class MaterialAppBarIntrinsicStates extends IntrinsicState {
  MaterialAppBarIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.box.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.materialAppBar),
            'navigation',
            'navbar'
          ],
          displayName: NodeType.name(NType.materialAppBar),
          type: NType.materialAppBar,
          category: NodeCategories.unclassified,
          maxChildren: 5,
          canHave: ChildrenEnum.children,
          addChildLabels: const [
            'Add Title',
            'Add Leading',
            'Add Action',
            'Add Action',
            'Add Action'
          ],
          gestures: const [],
        );
  MaterialAppBarIntrinsicStates.create() : this();
}

/// Material Bottom Bar
@nodeTypeISKey
@NodeKey(NType.materialBottomBar)
class MaterialBottomBarIntrinsicStates extends IntrinsicState {
  MaterialBottomBarIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.box.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.materialAppBar),
            'navigation',
            'navbar'
          ],
          displayName: NodeType.name(NType.materialBottomBar),
          type: NType.materialBottomBar,
          category: NodeCategories.unclassified,
          maxChildren: 3,
          canHave: ChildrenEnum.children,
          addChildLabels: const [
            'Add Leading',
            'Add Title',
            'Add Trailing',
          ],
        );
  MaterialBottomBarIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.opacity)
class OpacityIntrinsicStates extends IntrinsicState {
  OpacityIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.opacity.path,
          synonymous: const ['opacity', 'alpha'],
          displayName: NodeType.name(NType.opacity),
          type: NType.opacity,
          category: NodeCategories.visibility,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  OpacityIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.pageView)
class PageViewIntrinsicStates extends IntrinsicState {
  PageViewIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.pageView.path,
          synonymous: const ['pageview', 'slider', 'carousel'],
          displayName: NodeType.name(NType.pageView),
          type: NType.pageView,
          category: NodeCategories.layout,
          maxChildren: null,
          canHave: ChildrenEnum.children,
          gestures: const [],
        );
  PageViewIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.placeholder)
class PlaceholderIntrinsicStates extends IntrinsicState {
  PlaceholderIntrinsicStates()
      : super(
          nodeIcon: 'nodes/placeholder/',
          synonymous: const ['placeholder', 'text'],
          displayName: NodeType.name(NType.placeholder),
          type: NType.placeholder,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  PlaceholderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.positioned)
class PositionedIntrinsicStates extends IntrinsicState {
  PositionedIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.positioned.path,
          synonymous: const ['positioned', 'absolute', 'relative'],
          displayName: NodeType.name(NType.positioned),
          type: NType.positioned,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  PositionedIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.qrScanner)
class QrScannerIntrinsicStates extends IntrinsicState {
  QrScannerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.qrcode.path,
          synonymous: [
            NodeType.name(NType.qrScanner),
            'qrcode',
            'camera',
            'scanner'
          ],
          displayName: NodeType.name(NType.qrScanner),
          type: NType.qrScanner,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  QrScannerIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.qrCode)
class QrCodeIntrinsicStates extends IntrinsicState {
  QrCodeIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.qrcode.path,
          synonymous: [NodeType.name(NType.qrCode), 'baseline', 'bottom'],
          displayName: NodeType.name(NType.qrCode),
          type: NType.qrCode,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  QrCodeIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.radio)
class RadioIntrinsicStates extends IntrinsicState {
  RadioIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.radio.path,
          synonymous: [
            NodeType.name(NType.radio),
            'radio',
            'form',
            'input',
            'checkbox',
            'button'
          ],
          displayName: NodeType.name(NType.radio),
          type: NType.radio,
          category: NodeCategories.form,
          canHave: ChildrenEnum.none,
          gestures: const [],
        );
  RadioIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.refreshIndicator)
class RefreshIndicatorIntrinsicStates extends IntrinsicState {
  RefreshIndicatorIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.refreshIndicator.path,
          synonymous: const [
            'refresh indicator',
            'linearProgressIndicator',
            'circularProgressIndicator'
          ],
          displayName: NodeType.name(NType.refreshIndicator),
          type: NType.refreshIndicator,
          category: NodeCategories.unclassified,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
        );
  RefreshIndicatorIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.padding)
class PaddingIntrinsicStates extends IntrinsicState {
  PaddingIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.refreshIndicator.path,
          synonymous: const ['padding', 'margins', 'border'],
          displayName: NodeType.name(NType.padding),
          type: NType.padding,
          category: NodeCategories.unclassified,
          canHave: ChildrenEnum.child,
        );
  PaddingIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.responsiveCondition)
class ResponsiveConditionIntrinsicStates extends IntrinsicState {
  ResponsiveConditionIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.ifCondition.path,
          synonymous: const [
            'responsive condition',
            'mobile',
            'desktop',
            'tablet',
            'only',
            'device'
          ],
          displayName: NodeType.name(NType.responsiveCondition),
          type: NType.responsiveCondition,
          category: NodeCategories.visibility,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ResponsiveConditionIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.rotatedBox)
class RotatedBoxIntrinsicStates extends IntrinsicState {
  RotatedBoxIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.rotatedbox.path,
          synonymous: const ['rotatedBox'],
          displayName: NodeType.name(NType.rotatedBox),
          type: NType.rotatedBox,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  RotatedBoxIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.row)
class RowIntrinsicStates extends IntrinsicState {
  RowIntrinsicStates()
      : super(
          nodeIcon: 'nodes/row/',
          synonymous: const ['row', 'horizontal list'],
          displayName: NodeType.name(NType.row),
          type: NType.row,
          category: NodeCategories.basic,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  RowIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.safeArea)
class SafeAreaIntrinsicStates extends IntrinsicState {
  SafeAreaIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.safearea.path,
          synonymous: const ['safearea', 'padding'],
          displayName: NodeType.name(NType.safeArea),
          type: NType.safeArea,
          category: NodeCategories.advanced,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  SafeAreaIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.scaffold)
class ScaffoldIntrinsicStates extends IntrinsicState {
  ScaffoldIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component/',
          synonymous: const ['safearea', 'padding'],
          displayName: 'Component',
          type: NType.scaffold,
          category: NodeCategories.unclassified,
          canHave: ChildrenEnum.children,
          gestures: const [],
        );
  ScaffoldIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.spacer)
class SpacerIntrinsicStates extends IntrinsicState {
  SpacerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.spacer.path,
          synonymous: const ['spacer', 'space', 'br'],
          displayName: NodeType.name(NType.spacer),
          type: NType.spacer,
          category: NodeCategories.unclassified,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  SpacerIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.stack)
class StackIntrinsicStates extends IntrinsicState {
  const StackIntrinsicStates()
      : super(
          nodeIcon: 'nodes/freeform/',
          synonymous: const ['stack', 'overlay', 'position absolute'],
          displayName: 'Freeform',
          type: NType.stack,
          category: NodeCategories.layout,
          canHave: ChildrenEnum.children,
        );
  const StackIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tcardBuilder)
class TCardBuilderIntrinsicStates extends IntrinsicState {
  TCardBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.tcardBuilder.path,
          synonymous: const [
            'tcard builder',
            'tinder',
            'card',
            'online meet',
            'swipe',
            'pageview'
          ],
          displayName: NodeType.name(NType.tcardBuilder),
          type: NType.tcardBuilder,
          category: NodeCategories.layout,
          maxChildren: null,
          canHave: ChildrenEnum.child,
          gestures: const [],
        );
  TCardBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tcard)
class TCardIntrinsicStates extends IntrinsicState {
  TCardIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.tcardBuilder.path,
          synonymous: const [
            'tcard',
            'tinder',
            'card',
            'online meet',
            'swipe',
            'pageview'
          ],
          displayName: NodeType.name(NType.tcard),
          type: NType.tcard,
          category: NodeCategories.layout,
          canHave: ChildrenEnum.children,
          gestures: const [],
        );
  TCardIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.text)
class TextIntrinsicStates extends IntrinsicState {
  TextIntrinsicStates()
      : super(
          nodeIcon: 'nodes/text/',
          synonymous: const ['text', 'label', 'title'],
          displayName: NodeType.name(NType.text),
          type: NType.text,
          category: NodeCategories.basic,
          canHave: ChildrenEnum.none,
        );
  TextIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.textField)
class TextFieldIntrinsicStates extends IntrinsicState {
  TextFieldIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.textfield.path,
          synonymous: const ['textfield', 'form', 'input'],
          displayName: NodeType.name(NType.textField),
          type: NType.textField,
          category: NodeCategories.form,
          canHave: ChildrenEnum.none,
          gestures: const [],
        );
  TextFieldIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tooltip)
class TooltipIntrinsicStates extends IntrinsicState {
  TooltipIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.toolTip.path,
          synonymous: [NodeType.name(NType.tooltip), 'tooltip'],
          displayName: NodeType.name(NType.tooltip),
          type: NType.tooltip,
          category: NodeCategories.form,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  TooltipIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.video)
class VideoIntrinsicStates extends IntrinsicState {
  VideoIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.video.path,
          synonymous: const ['video', 'youtube', 'player'],
          displayName: NodeType.name(NType.video),
          type: NType.video,
          category: NodeCategories.basic,
          canHave: ChildrenEnum.none,
        );
  VideoIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.visibility)
class VisibilityIntrinsicStates extends IntrinsicState {
  VisibilityIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.visibility.path,
          synonymous: const ['visibility', 'opacity', 'alpha'],
          displayName: NodeType.name(NType.visibility),
          type: NType.visibility,
          category: NodeCategories.visibility,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  VisibilityIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.webview)
class WebviewIntrinsicStates extends IntrinsicState {
  WebviewIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.webview.path,
          synonymous: const ['webview', 'web', 'browser'],
          displayName: NodeType.name(NType.webview),
          type: NType.webview,
          category: NodeCategories.advanced,
          canHave: ChildrenEnum.none,
        );
  WebviewIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.animationConfigGrid)
class AnimationConfigGridIntrinsicStates extends IntrinsicState {
  AnimationConfigGridIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.animConfigGrid.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.animationConfigGrid),
            'animation',
            'entry'
          ],
          displayName: NodeType.name(NType.animationConfigList),
          type: NType.animationConfigGrid,
          category: NodeCategories.animations,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: const [],
          gestures: const [],
        );
  AnimationConfigGridIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.animationConfigList)
class AnimationConfigListIntrinsicStates extends IntrinsicState {
  AnimationConfigListIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.animConfigList.path,
          synonymous: [
            NodeType.name(NType.animationConfigList),
            'animation',
            'entry'
          ],
          displayName: NodeType.name(NType.animationConfigList),
          type: NType.animationConfigList,
          category: NodeCategories.animations,
          canHave: ChildrenEnum.child,
        );
  AnimationConfigListIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.fadeInAnimation)
class FadeInAnimationIntrinsicStates extends IntrinsicState {
  FadeInAnimationIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.fadeIn.path,
          synonymous: [
            NodeType.name(NType.fadeInAnimation),
            'animation',
            'entry'
          ],
          displayName: NodeType.name(NType.fadeInAnimation),
          type: NType.fadeInAnimation,
          category: NodeCategories.animations,
          canHave: ChildrenEnum.child,
        );
  FadeInAnimationIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.scaleAnimation)
class ScaleAnimationIntrinsicStates extends IntrinsicState {
  ScaleAnimationIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.scale.path,
          synonymous: [
            NodeType.name(NType.scaleAnimation),
            'animation',
            'entry'
          ],
          displayName: NodeType.name(NType.scaleAnimation),
          type: NType.scaleAnimation,
          category: NodeCategories.animations,
          canHave: ChildrenEnum.child,
        );
  ScaleAnimationIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.slideAnimation)
class SlideAnimationIntrinsicStates extends IntrinsicState {
  SlideAnimationIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.slide.path,
          synonymous: [
            NodeType.name(NType.slideAnimation),
            'animation',
            'entry'
          ],
          displayName: NodeType.name(NType.slideAnimation),
          type: NType.slideAnimation,
          category: NodeCategories.animations,
          canHave: ChildrenEnum.child,
        );
  SlideAnimationIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.apiCallsFetch)
class ApiCallsFetchIntrinsicStates extends IntrinsicState {
  ApiCallsFetchIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.api.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.apiCallsFetch),
            'http',
            'request',
            'api',
            'calls',
            'cms',
            'teta',
            'articles',
            'feed',
          ],
          displayName: NodeType.name(NType.apiCallsFetch),
          type: NType.apiCallsFetch,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: const [
            'Add new if successful',
            'Add new if empty or failed',
          ],
          gestures: const [],
        );
  ApiCallsFetchIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithApple)
class LoginAppleIntrinsicStates extends IntrinsicState {
  LoginAppleIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginApple.path,
          blockedTypes: const [],
          synonymous: const ['apple', 'login', 'cta', 'button'],
          displayName: 'Login with Apple',
          type: NType.loginWithApple,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const <Trigger>[Trigger.onTap, Trigger.onLongPress],
        );
  LoginAppleIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithBitBucket)
class LoginBitBucketIntrinsicStates extends IntrinsicState {
  LoginBitBucketIntrinsicStates()
      : super(
          //!TODO: Add icon
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['bitbucket', 'login', 'cta', 'button'],
          displayName: 'Login with BitBucket',
          type: NType.loginWithBitBucket,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginBitBucketIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithDiscord)
class LoginDiscordIntrinsicStates extends IntrinsicState {
  LoginDiscordIntrinsicStates()
      : super(
          //!TODO: Add icon
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['linkedin', 'login', 'cta', 'button'],
          displayName: 'Login with Discord',
          type: NType.loginWithDiscord,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginDiscordIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithFacebook)
class LoginFacebookIntrinsicStates extends IntrinsicState {
  LoginFacebookIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginFacebook.path,
          blockedTypes: const [],
          synonymous: const ['facebook', 'login', 'cta', 'button'],
          displayName: 'Login with Facebook',
          type: NType.loginWithFacebook,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginFacebookIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithGitHub)
class LoginGitHubIntrinsicStates extends IntrinsicState {
  LoginGitHubIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginGItHub.path,
          blockedTypes: const [],
          synonymous: const ['github', 'login', 'cta', 'button'],
          displayName: 'Login with GitHub',
          type: NType.loginWithGitHub,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginGitHubIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithGitlab)
class LoginGitlabIntrinsicStates extends IntrinsicState {
  LoginGitlabIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['linkedin', 'login', 'cta', 'button'],
          displayName: 'Login with Gitlab',
          type: NType.loginWithGitlab,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginGitlabIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithGoogle)
class LoginGoogleIntrinsicStates extends IntrinsicState {
  LoginGoogleIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['google', 'login', 'cta', 'button'],
          displayName: 'Login with Google',
          type: NType.loginWithGoogle,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginGoogleIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithLinkedin)
class LoginLinkedinIntrinsicStates extends IntrinsicState {
  LoginLinkedinIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['linkedin', 'login', 'cta', 'button'],
          displayName: 'Login with Linkedin',
          type: NType.loginWithLinkedin,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginLinkedinIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithMicrosoft)
class LoginMicrosoftIntrinsicStates extends IntrinsicState {
  LoginMicrosoftIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginFacebook.path,
          synonymous: const ['microsoft', 'login', 'cta', 'button'],
          displayName: 'Login with Microsoft',
          type: NType.loginWithMicrosoft,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          gestures: const <Trigger>[Trigger.onTap, Trigger.onLongPress],
        );
  LoginMicrosoftIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithTwitch)
class LoginTwitchIntrinsicStates extends IntrinsicState {
  LoginTwitchIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginGoogle.path,
          blockedTypes: const [],
          synonymous: const ['twitch', 'login', 'cta', 'button'],
          displayName: 'Login with Twitch',
          type: NType.loginWithTwitch,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginTwitchIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.loginWithTwitter)
class LoginTwitterIntrinsicStates extends IntrinsicState {
  LoginTwitterIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.loginTwitter.path,
          blockedTypes: const [],
          synonymous: const ['twitter', 'login', 'cta', 'button'],
          displayName: 'Login with Twitter',
          type: NType.loginWithTwitter,
          category: NodeCategories.form,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
          addChildLabels: const [],
          gestures: const [Trigger.onTap, Trigger.onLongPress],
        );
  LoginTwitterIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.httpRequest)
class HttpRequestFutureBuilderIntrinsicStates extends IntrinsicState {
  HttpRequestFutureBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.api.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.httpRequest),
            'apis',
            'future builder',
          ],
          displayName: NodeType.name(NType.httpRequest),
          type: NType.httpRequest,
          category: NodeCategories.unclassified,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: const [],
          gestures: const [],
        );
  HttpRequestFutureBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.customHttpRequest)
class CustomHttpRequestIntrinsicStates extends IntrinsicState {
  CustomHttpRequestIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.api.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.customHttpRequest),
            'http',
            'request',
            'cms',
            'teta',
            'articles',
            'feed',
          ],
          displayName: NodeType.name(NType.customHttpRequest),
          type: NType.customHttpRequest,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: const [
            'Add new if successful',
            'Add new if empty or failed',
          ],
          gestures: const [],
        );
  CustomHttpRequestIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.appBar)
class AppBarIntrinsicStates extends IntrinsicState {
  AppBarIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.appBar.path,
          blockedTypes: const [],
          synonymous: const [],
          displayName: NodeType.name(NType.appBar),
          type: NType.appBar,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: const ['Add AppBar Widget'],
          gestures: const [],
        );
  AppBarIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.bottomBar)
class BottomBarIntrinsicStates extends IntrinsicState {
  BottomBarIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.bottomBar.path,
          blockedTypes: [],
          synonymous: [],
          displayName: NodeType.name(NType.bottomBar),
          type: NType.bottomBar,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: ['Add BottomBar Widget'],
          gestures: [],
        );
  BottomBarIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.drawer)
class DrawerIntrinsicStates extends IntrinsicState {
  DrawerIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.drawer.path,
          blockedTypes: [],
          synonymous: [],
          displayName: 'Menu (Drawer)',
          type: NType.drawer,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
          addChildLabels: ['Add Widget To Drawer'],
          gestures: [],
        );
  DrawerIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.qonversionProducts)
class QonversionProductIntrinsicStates extends IntrinsicState {
  QonversionProductIntrinsicStates()
      : super(
          // !TODO: add icon
          nodeIcon: '',
          synonymous: [
            NodeType.name(NType.qonversionProducts),
            'monetizations',
            'monetization',
            'stripe',
            'revenue cat',
            'revenuecat',
            'payments',
            'payment'
          ],
          displayName: 'Qonversion Product',
          type: NType.qonversionProducts,
          category: NodeCategories.subscriptions,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  QonversionProductIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.qonversionSubStatus)
class QonversionSubStatusIntrinsicStates extends IntrinsicState {
  QonversionSubStatusIntrinsicStates()
      : super(
          // !TODO: add icon
          nodeIcon: '',
          synonymous: [
            NodeType.name(NType.qonversionSubStatus),
            'monetizations',
            'monetization',
            'stripe',
            'revenue cat',
            'revenuecat',
            'payments',
            'payment'
          ],
          displayName: 'Qonversion Sub Status',
          type: NType.qonversionSubStatus,
          category: NodeCategories.subscriptions,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  QonversionSubStatusIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.wrapper)
class WrapperIntrinsicStates extends IntrinsicState {
  WrapperIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.wrapper.path,
          synonymous: [NodeType.name(NType.wrapper), 'baseline', 'bottom'],
          displayName: 'Section',
          type: NType.wrapper,
          category: NodeCategories.basic,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  WrapperIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.revenueCatProducts)
class RevenueCatProductIntrinsicStates extends IntrinsicState {
  RevenueCatProductIntrinsicStates()
      : super(
          // !TODO: add icon
          nodeIcon: '',
          synonymous: [
            NodeType.name(NType.revenueCatProducts),
            'monetization',
            'stripe',
            'revenue cat',
            'revenuecat',
            'payment'
          ],
          displayName: NodeType.name(NType.revenueCatProducts),
          type: NType.revenueCatProducts,
          category: NodeCategories.subscriptions,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  RevenueCatProductIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.revenueCatSubStatus)
class RevenueCatSubStatusIntrinsicStates extends IntrinsicState {
  RevenueCatSubStatusIntrinsicStates()
      : super(
          // !TODO: add icon
          nodeIcon: '',
          synonymous: [
            NodeType.name(NType.revenueCatSubStatus),
            'monetizations',
            'monetization',
            'stripe',
            'revenue cat',
            'revenuecat',
            'payments',
            'payment'
          ],
          displayName: 'RevenueCat Sub Status',
          type: NType.revenueCatSubStatus,
          category: NodeCategories.subscriptions,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  RevenueCatSubStatusIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.supabaseFutureBuilder)
class SupabaseFutureBuilderIntrinsicStates extends IntrinsicState {
  SupabaseFutureBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: [
            NodeType.name(NType.supabaseFutureBuilder),
            'firestore',
            'firebase',
            'future builder',
          ],
          displayName: NodeType.name(NType.supabaseFutureBuilder),
          type: NType.supabaseFutureBuilder,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
        );
  SupabaseFutureBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.supabaseStreamBuilder)
class SupabaseStreamBuilderIntrinsicStates extends IntrinsicState {
  SupabaseStreamBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: [
            NodeType.name(NType.supabaseStreamBuilder),
            'firestore',
            'firebase',
            'future builder',
            'stream builder',
          ],
          displayName: NodeType.name(NType.supabaseStreamBuilder),
          type: NType.supabaseStreamBuilder,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
        );
  SupabaseStreamBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.supabaseLoggedUser)
class SupabaseLoggedUserIntrinsicStates extends IntrinsicState {
  SupabaseLoggedUserIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: [
            NodeType.name(NType.supabaseLoggedUser),
            'firestore',
            'firebase',
            'login',
            'user',
            'profile',
          ],
          displayName: NodeType.name(NType.supabaseLoggedUser),
          type: NType.supabaseLoggedUser,
          category: NodeCategories.dynamicCollection,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  SupabaseLoggedUserIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.cmsCount)
class CmsCountIntrinsicStates extends IntrinsicState {
  CmsCountIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.dataset.path,
          synonymous: [
            NodeType.name(NType.cmsCount),
            'cms',
            'teta',
            'articles',
            'feed',
          ],
          displayName: NodeType.name(NType.cmsCount),
          type: NType.cmsCount,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: [
            'Add new if successful',
            'Add new if empty or failed'
          ],
        );
  CmsCountIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.cmsCustomQuery)
class CmsCustomQueryIntrinsicStates extends IntrinsicState {
  CmsCustomQueryIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.dataset.path,
          blockedTypes: const [],
          synonymous: [
            NodeType.name(NType.cmsCustomQuery),
            'cms custom query',
            'teta',
            'articles',
            'feed',
          ],
          displayName: NodeType.name(NType.cmsCustomQuery),
          type: NType.cmsCustomQuery,
          category: NodeCategories.unclassified,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: const [],
          gestures: const [],
        );
  CmsCustomQueryIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.cmsFetch)
class CmsFetchIntrinsicStates extends IntrinsicState {
  CmsFetchIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.dataset.path,
          synonymous: [
            NodeType.name(NType.cmsFetch),
            'cms',
            'teta',
            'articles',
            'feed',
          ],
          displayName: NodeType.name(NType.cmsFetch),
          type: NType.cmsFetch,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: [
            'Add new if successful',
            'Add new if empty or failed',
          ],
        );
  CmsFetchIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.cmsLoggedUser)
class CmsLoggedUserIntrinsicStates extends IntrinsicState {
  CmsLoggedUserIntrinsicStates()
      : super(
          nodeIcon: 'nodes/image/',
          synonymous: [
            NodeType.name(NType.cmsLoggedUser),
            'cms',
            'login',
            'user',
            'profile',
          ],
          displayName: NodeType.name(NType.cmsLoggedUser),
          type: NType.cmsLoggedUser,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
        );
  CmsLoggedUserIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.cmsStream)
class CmsStreamIntrinsicStates extends IntrinsicState {
  CmsStreamIntrinsicStates()
      : super(
          nodeIcon: Assets.icons.left.dataset.path,
          synonymous: [
            NodeType.name(NType.cmsStream),
            'cms',
            'teta',
            'articles',
            'stream',
            'feed'
          ],
          displayName: NodeType.name(NType.cmsStream),
          type: NType.cmsStream,
          category: NodeCategories.dynamicCollection,
          maxChildren: 2,
          canHave: ChildrenEnum.children,
          addChildLabels: [
            'Add new if successful',
            'Add new if empty or failed',
          ],
          gestures: [],
        );
  CmsStreamIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tetaStoreCartItemsBuilder)
class ThetaStoreCartItemsBuilderBodyIntrinsicStates extends IntrinsicState {
  ThetaStoreCartItemsBuilderBodyIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: [
            'stripe',
            'scroll',
            'vertical list',
            'products',
            'cart',
            'checkout'
          ],
          displayName: NodeType.name(NType.tetaStoreCartItemsBuilder),
          type: NType.tetaStoreCartItemsBuilder,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ThetaStoreCartItemsBuilderBodyIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tetaStoreProductsBuilder)
class ThetaStoreProductsBuilderIntrinsicStates extends IntrinsicState {
  ThetaStoreProductsBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: ['stripe', 'scroll', 'vertical list', 'products'],
          displayName: NodeType.name(NType.tetaStoreProductsBuilder),
          type: NType.tetaStoreProductsBuilder,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ThetaStoreProductsBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tetaStoreShippingBuilder)
class ThetaStoreShippingBuilderIntrinsicStates extends IntrinsicState {
  ThetaStoreShippingBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: ['stripe', 'shipping', 'vertical list', 'products'],
          displayName: NodeType.name(NType.tetaStoreShippingBuilder),
          type: NType.tetaStoreShippingBuilder,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ThetaStoreShippingBuilderIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.tetaStoreTransactionsBuilder)
class ThetaStoreTransactionsBuilderIntrinsicStates extends IntrinsicState {
  ThetaStoreTransactionsBuilderIntrinsicStates()
      : super(
          nodeIcon: Assets.wIcons.supabaseLogoIcon.path,
          synonymous: ['stripe', 'scroll', 'vertical list', 'transactions'],
          displayName: NodeType.name(NType.tetaStoreTransactionsBuilder),
          type: NType.tetaStoreTransactionsBuilder,
          category: NodeCategories.unclassified,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ThetaStoreTransactionsBuilderIntrinsicStates.create() : this();
}
