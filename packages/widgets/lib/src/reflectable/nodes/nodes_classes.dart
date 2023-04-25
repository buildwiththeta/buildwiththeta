// ignore_for_file: unused_element, unused_import, unnecessary_import

import 'dart:convert';

import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/reflectable/index.dart';

import 'node_annotation_model.dart';
import 'nodes_parse.dart';

part 'nodes_classes.g.dart';

/// Why this line?
/// It is used to generate the file nodes_classes.g.dart
/// Without this line, reflectable will not detect this file
/// Uncomment this line when you want to generate the file nodes_classes.g.dart
part 'nodes_classes.nodebuilder.g.dart';

@NodeInfo(
  type: NType.align,
  optionalDisplayName: 'Align',
)
class _Align {}

@NodeInfo(
  type: NType.aspectRatio,
  optionalDisplayName: 'AspectRatio',
)
class _AspectRatio {}

@NodeInfo(
  type: NType.audioPlayer,
  optionalDisplayName: 'Audio Player',
)
class _AudioPlayer {}

@NodeInfo(
  type: NType.audioPlayerProgressIndicator,
  optionalDisplayName: 'Audio Player Progress Indicator',
)
class _AudioPlayerProgressIndicator {}

@NodeInfo(
  type: NType.audioPlayerVolumeIndicator,
  optionalDisplayName: 'Audio Player Volume Indicator',
)
class _AudioPlayerVolumeIndicator {}

@NodeInfo(
  type: NType.badge,
  optionalDisplayName: 'Badge',
)
class _Badge {}

@NodeInfo(
  type: NType.barcode,
  optionalDisplayName: 'Barcode',
)
class _Barcode {}

@NodeInfo(
  type: NType.bottombaritem,
  optionalDisplayName: 'BottomBar Item',
)
class _BottomBarItem {}

@NodeInfo(
  type: NType.bouncingWidget,
  optionalDisplayName: 'Bouncing Widget',
)
class _BouncingWidget {}

@NodeInfo(
  type: NType.button,
  optionalDisplayName: 'Button',
)
class _Button {}

@NodeInfo(
  type: NType.calendar,
  optionalDisplayName: 'Calendar',
)
class _Calendar {}

@NodeInfo(
  type: NType.calendarV2,
  optionalDisplayName: 'Calendar V2',
)
class _CalendarV2 {}

@NodeInfo(
  type: NType.card,
  optionalDisplayName: 'Card',
)
class _Card {}

@NodeInfo(
  type: NType.center,
  optionalDisplayName: 'Center',
)
class _Center {}

@NodeInfo(
  type: NType.checkbox,
  optionalDisplayName: 'Checkbox',
)
class _Checkbox {}

@NodeInfo(
  type: NType.circularProgressIndicator,
  optionalDisplayName: 'Circular Progress Indicator',
)
class _CircularProgressIndicator {}

@NodeInfo(
  type: NType.clipOval,
  optionalDisplayName: 'Clip Oval',
)
class _ClipOval {}

@NodeInfo(
  type: NType.clipRect,
  optionalDisplayName: 'Clip Rect',
)
class _ClipRect {}

@NodeInfo(
  type: NType.clipRoundedRect,
  optionalDisplayName: 'Clip RRect',
)
class _ClipRRect {}

@NodeInfo(
  type: NType.column,
  optionalDisplayName: 'Column',
)
class _Column {}

@NodeInfo(
  type: NType.component,
  optionalDisplayName: 'Component',
)
class _Component {}

@NodeInfo(
  type: NType.row,
  optionalDisplayName: 'Row',
)
class _Row {}

@NodeInfo(
  type: NType.concentricPageView,
  optionalDisplayName: 'Concentric Page View',
)
class _ConcentricPageView {}

@NodeInfo(
  type: NType.condition,
  optionalDisplayName: 'Condition',
)
class _Condition {}

@NodeInfo(
  type: NType.container,
  optionalDisplayName: 'Container',
)
class _Container {}

@NodeInfo(
  type: NType.constrainedBox,
  optionalDisplayName: 'Constrained Box',
)
class _ConstrainedBox {}

@NodeInfo(
  type: NType.limitedBox,
  optionalDisplayName: 'Limited Box',
)
class _LimitedBox {}

@NodeInfo(
  type: NType.sizedBox,
  optionalDisplayName: 'Sized Box',
)
class _SizedBox {}

@NodeInfo(
  type: NType.decoratedBox,
  optionalDisplayName: 'Decorated Box',
)
class _DecoratedBox {}

@NodeInfo(
  type: NType.image,
  optionalDisplayName: 'Image',
)
class _Image {}

@NodeInfo(
  type: NType.cupertinoPicker,
  optionalDisplayName: 'Cupertino Picker',
)
class _CupertinoPicker {}

@NodeInfo(
  type: NType.cupertinoSegmentedControl,
  optionalDisplayName: 'Cupertino Segmented Control',
)
class _CupertinoSegmentedControl {}

@NodeInfo(
  type: NType.cupertinoSwitch,
  optionalDisplayName: 'Cupertino Switch',
)
class _CupertinoSwitch {}

@NodeInfo(
  type: NType.divider,
  optionalDisplayName: 'Divider',
)
class _Divider {}

@NodeInfo(
  type: NType.dotsIndicator,
  optionalDisplayName: 'Dots Indicator',
)
class _DotsIndicator {}

@NodeInfo(
  type: NType.expanded,
  optionalDisplayName: 'Expanded',
)
class _Expanded {}

@NodeInfo(
  type: NType.adMobBanner,
  optionalDisplayName: 'AdMob Banner',
)
class _AdMobBanner {}

@NodeInfo(
  type: NType.googleMaps,
  optionalDisplayName: 'Google Maps',
)
class _GoogleMaps {}

@NodeInfo(
  type: NType.gridView,
  optionalDisplayName: 'Grid View',
)
class _GridView {}

@NodeInfo(
  type: NType.gridViewBuilder,
  optionalDisplayName: 'Grid View Builder',
)
class _GridViewBuilder {}

@NodeInfo(
  type: NType.hero,
  optionalDisplayName: 'Hero',
)
class _Hero {}

@NodeInfo(
  type: NType.icon,
  optionalDisplayName: 'Icon',
)
class _Icon {}

@NodeInfo(
  type: NType.ignorePointer,
  optionalDisplayName: 'Ignore Pointer',
)
class _IgnorePointer {}

@NodeInfo(
  type: NType.indexedStack,
  optionalDisplayName: 'Indexed Stack',
)
class _IndexedStack {}

@NodeInfo(
  type: NType.linearProgressIndicator,
  optionalDisplayName: 'Linear Progress Indicator',
)
class _LinearProgressIndicator {}

@NodeInfo(
  type: NType.liquidSwipe,
  optionalDisplayName: 'Liquid Swipe',
)
class _LiquidSwipe {}

@NodeInfo(
  type: NType.listTile,
  optionalDisplayName: 'List Tile',
)
class _ListTile {}

@NodeInfo(
  type: NType.listView,
  optionalDisplayName: 'List View',
)
class _ListView {}

@NodeInfo(
  type: NType.listViewBuilder,
  optionalDisplayName: 'List View Builder',
)
class _ListViewBuilder {}

@NodeInfo(
  type: NType.lottie,
  optionalDisplayName: 'Lottie',
)
class _Lottie {}

@NodeInfo(
  type: NType.map,
  optionalDisplayName: 'Map',
)
class _Map {}

@NodeInfo(
  type: NType.marker,
  optionalDisplayName: 'Marker',
)
class _Marker {}

@NodeInfo(
  type: NType.opacity,
  optionalDisplayName: 'Opacity',
)
class _Opacity {}

@NodeInfo(
  type: NType.padding,
  optionalDisplayName: 'Padding',
)
class _Padding {}

@NodeInfo(
  type: NType.pageView,
  optionalDisplayName: 'Page View',
)
class _PageView {}

@NodeInfo(
  type: NType.placeholder,
  optionalDisplayName: 'Placeholder',
)
class _Placeholder {}

@NodeInfo(
  type: NType.positioned,
  optionalDisplayName: 'Positioned',
)
class _Positioned {}

@NodeInfo(
  type: NType.safeArea,
  optionalDisplayName: 'Safe Area',
)
class _SafeArea {}

@NodeInfo(
  type: NType.qrScanner,
  optionalDisplayName: 'QR Scanner',
)
class _QRScanner {}

@NodeInfo(
  type: NType.qrCode,
  optionalDisplayName: 'QR Code',
)
class _QRCode {}

@NodeInfo(
  type: NType.radio,
  optionalDisplayName: 'Radio',
)
class _Radio {}

@NodeInfo(
  type: NType.refreshIndicator,
  optionalDisplayName: 'Refresh Indicator',
)
class _RefreshIndicator {}

@NodeInfo(
  type: NType.responsiveCondition,
  optionalDisplayName: 'Responsive Condition',
)
class _ResponsiveCondition {}

@NodeInfo(
  type: NType.rotatedBox,
  optionalDisplayName: 'Rotated Box',
)
class _RotatedBox {}

@NodeInfo(
  type: NType.scaffold,
  optionalDisplayName: 'Scaffold',
)
class _Scaffold {}

@NodeInfo(
  type: NType.spacer,
  optionalDisplayName: 'Spacer',
)
class _Spacer {}

@NodeInfo(
  type: NType.stack,
  optionalDisplayName: 'Stack',
)
class _Stack {}

@NodeInfo(
  type: NType.tcard,
  optionalDisplayName: 'TCard',
)
class _TCard {}

@NodeInfo(
  type: NType.tcardBuilder,
  optionalDisplayName: 'TCard Builder',
)
class _TCardBuilder {}

@NodeInfo(
  type: NType.text,
  optionalDisplayName: 'Text',
)
class _Text {}

@NodeInfo(
  type: NType.textField,
  optionalDisplayName: 'TextField',
)
class _TextField {}

@NodeInfo(
  type: NType.tooltip,
  optionalDisplayName: 'Tooltip',
)
class _Tooltip {}

@NodeInfo(
  type: NType.video,
  optionalDisplayName: 'Video',
)
class _Video {}

@NodeInfo(
  type: NType.visibility,
  optionalDisplayName: 'Visibility',
)
class _Visibility {}

@NodeInfo(
  type: NType.webview,
  optionalDisplayName: 'Webview',
)
class _Webview {}

@NodeInfo(
  type: NType.wrap,
  optionalDisplayName: 'Wrap',
)
class _Wrap {}

@NodeInfo(
  type: NType.animationConfigGrid,
  optionalDisplayName: 'Animation Config Grid',
)
class _AnimationConfigGrid {}

@NodeInfo(
  type: NType.animationConfigList,
  optionalDisplayName: 'Animation Config List',
)
class _AnimationConfigList {}

@NodeInfo(
  type: NType.fadeInAnimation,
  optionalDisplayName: 'Fade In Animation',
)
class _FadeInAnimation {}

@NodeInfo(
  type: NType.scaleAnimation,
  optionalDisplayName: 'Scale Animation',
)
class _ScaleAnimation {}

@NodeInfo(
  type: NType.slideAnimation,
  optionalDisplayName: 'Slide Animation',
)
class _SlideAnimation {}

@NodeInfo(
  type: NType.apiCallsFetch,
  optionalDisplayName: 'Api Calls Fetch',
)
class _ApiCallsFetch {}

@NodeInfo(
  type: NType.loginWithApple,
  optionalDisplayName: 'Login With Apple',
)
class _LoginWithApple {}

@NodeInfo(
  type: NType.loginWithFacebook,
  optionalDisplayName: 'Login With Facebook',
)
class _LoginWithFacebook {}

@NodeInfo(
  type: NType.loginWithGoogle,
  optionalDisplayName: 'Login With Google',
)
class _LoginWithGoogle {}

@NodeInfo(
  type: NType.loginWithTwitter,
  optionalDisplayName: 'Login With Twitter',
)
class _LoginWithTwitter {}

@NodeInfo(
  type: NType.loginWithGitHub,
  optionalDisplayName: 'Login With Github',
)
class _LoginWithGithub {}

@NodeInfo(
  type: NType.loginWithMicrosoft,
  optionalDisplayName: 'Login With Microsoft',
)
class _LoginWithMicrosoft {}

@NodeInfo(
  type: NType.loginWithLinkedin,
  optionalDisplayName: 'Login With Linkedin',
)
class _LoginWithLinkedin {}

@NodeInfo(
  type: NType.loginWithBitBucket,
  optionalDisplayName: 'Login With Bitbucket',
)
class _LoginWithBitbucket {}

@NodeInfo(
  type: NType.loginWithDiscord,
  optionalDisplayName: 'Login With Discord',
)
class _LoginWithDiscord {}

@NodeInfo(
  type: NType.loginWithTwitch,
  optionalDisplayName: 'Login With Twitch',
)
class _LoginWithTwitch {}

@NodeInfo(
  type: NType.loginWithGitlab,
  optionalDisplayName: 'Login With Gitlab',
)
class _LoginWithGitlab {}

@NodeInfo(
  type: NType.httpRequest,
  optionalDisplayName: 'Http Request',
)
class _HttpRequest {}

@NodeInfo(
  type: NType.customHttpRequest,
  optionalDisplayName: 'Custom Http Request',
)
class _CustomHttpRequest {}

@NodeInfo(
  type: NType.appBar,
  optionalDisplayName: 'App Bar',
)
class _AppBar {}

@NodeInfo(
  type: NType.bottomBar,
  optionalDisplayName: 'Bottom Bar',
)
class _BottomBar {}

@NodeInfo(
  type: NType.drawer,
  optionalDisplayName: 'Drawer',
)
class _Drawer {}

@NodeInfo(
  type: NType.qonversionProducts,
  optionalDisplayName: 'Qonversion Products',
)
class _QonversionProducts {}

@NodeInfo(
  type: NType.qonversionSubStatus,
  optionalDisplayName: 'Qonversion Sub Status',
)
class _QonversionSubStatus {}

@NodeInfo(
  type: NType.revenueCatProducts,
  optionalDisplayName: 'RevenueCat Products',
)
class _RevenueCatProducts {}

@NodeInfo(
  type: NType.revenueCatSubStatus,
  optionalDisplayName: 'RevenueCat Sub Status',
)
class _RevenueCatSubStatus {}

@NodeInfo(
  type: NType.wrapper,
  optionalDisplayName: 'Wrapper',
)
class _Wrapper {}

@NodeInfo(
  type: NType.supabaseFutureBuilder,
  optionalDisplayName: 'Supabase Future Builder',
)
class _SupabaseFutureBuilder {}

@NodeInfo(
  type: NType.supabaseStreamBuilder,
  optionalDisplayName: 'Supabase Stream Builder',
)
class _SupabaseStreamBuilder {}

@NodeInfo(
  type: NType.supabaseLoggedUser,
  optionalDisplayName: 'Supabase Logged User',
)
class _SupabaseLoggedUser {}

@NodeInfo(
  type: NType.cmsCount,
  optionalDisplayName: 'CMS Count',
)
class _CMSCount {}

@NodeInfo(
  type: NType.cmsCustomQuery,
  optionalDisplayName: 'CMS Custom Query',
)
class _CMSCustomQuery {}

@NodeInfo(
  type: NType.cmsFetch,
  optionalDisplayName: 'CMS Fetch',
)
class _CMSFetch {}

@NodeInfo(
  type: NType.cmsStream,
  optionalDisplayName: 'CMS Stream',
)
class _CMSStream {}

@NodeInfo(
  type: NType.cmsLoggedUser,
  optionalDisplayName: 'CMS Logged User',
)
class _CMSLoggedUser {}
