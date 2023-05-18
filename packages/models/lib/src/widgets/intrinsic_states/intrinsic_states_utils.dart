import 'package:theta_models/theta_models.dart';

class IntrinsicStateUtils {
  static final IntrinsicStateUtils _instance = IntrinsicStateUtils._internal();

  factory IntrinsicStateUtils() {
    return _instance;
  }

  IntrinsicStateUtils._internal();

  final Map<String, IntrinsicState> _intrinsicStates = {
    NType.align: AlignIntrinsicStates(),
    NType.column: ColumnIntrinsicStates(),
    NType.condition: ConditionIntrinsicStates(),
    NType.container: ContainerIntrinsicStates(),
    NType.divider: DividerIntrinsicStates(),
    NType.hero: HeroIntrinsicStates(),
    NType.icon: IconIntrinsicStates(),
    NType.ignorePointer: IgnorePointerIntrinsicStates(),
    NType.image: ImageIntrinsicStates(),
    NType.liquidSwipe: LiquidSwipeIntrinsicStates(),
    NType.listView: ListViewIntrinsicStates(),
    NType.gridView: ListViewIntrinsicStates(),
    NType.lottie: LottieIntrinsicStates(),
    NType.opacity: OpacityIntrinsicStates(),
    NType.pageView: PageViewIntrinsicStates(),
    NType.positioned: PositionedIntrinsicStates(),
    NType.responsiveCondition: ResponsiveConditionIntrinsicStates(),
    NType.row: RowIntrinsicStates(),
    NType.safeArea: SafeAreaIntrinsicStates(),
    NType.scaffold: ScaffoldIntrinsicStates(),
    NType.spacer: SpacerIntrinsicStates(),
    NType.stack: StackIntrinsicStates(),
    NType.text: TextIntrinsicStates(),
    NType.adMobBanner: GoogleAdMobBannerAdIntrinsicStates(),
    NType.textField: TextFieldIntrinsicStates(),
    NType.video: VideoIntrinsicStates(),
    NType.appBar: AppBarIntrinsicStates(),
    NType.bottomBar: BottomBarIntrinsicStates(),
    NType.drawer: DrawerIntrinsicStates(),
    NType.loginWithTwitter: LoginTwitterIntrinsicStates(),
    NType.loginWithApple: LoginAppleIntrinsicStates(),
    NType.loginWithGoogle: LoginGoogleIntrinsicStates(),
    NType.loginWithFacebook: LoginFacebookIntrinsicStates(),
    NType.loginWithGitHub: LoginGitHubIntrinsicStates(),
    NType.loginWithTwitch: LoginTwitchIntrinsicStates(),
    NType.loginWithLinkedin: LoginLinkedinIntrinsicStates(),
    NType.loginWithDiscord: LoginDiscordIntrinsicStates(),
    NType.loginWithGitlab: LoginGitlabIntrinsicStates(),
    NType.loginWithBitBucket: LoginBitBucketIntrinsicStates(),
    NType.radio: RadioIntrinsicStates(),
    NType.tooltip: TooltipIntrinsicStates(),
    NType.materialAppBar: MaterialAppBarIntrinsicStates(),
    NType.materialBottomBar: MaterialBottomBarIntrinsicStates(),
    NType.bottombaritem: BottombaritemIntrinsicStates(),
    NType.linearProgressIndicator: LinearProgressIndicatorIntrinsicStates(),
    NType.card: CardIntrinsicStates(),
    NType.visibility: VisibilityIntrinsicStates(),
    NType.placeholder: PlaceholderIntrinsicStates(),
    NType.rotatedBox: RotatedBoxIntrinsicStates(),
    NType.circularProgressIndicator: CircularProgressIndicatorIntrinsicStates(),
    NType.clipRoundedRect: ClipRRectIntrinsicStates(),
    NType.indexedStack: IndexedStackIntrinsicStates(),
    NType.refreshIndicator: RefreshIndicatorIntrinsicStates(),
    NType.cupertinoSwitch: CupertinoSwitchIntrinsicStates(),
    NType.tcard: TCardIntrinsicStates(),
    NType.bouncingWidget: BouncingWidgetIntrinsicStates(),
    NType.calendar: CalendarIntrinsicStates(),
    NType.calendarV2: CalendarV2IntrinsicStates(),
    NType.webview: WebviewIntrinsicStates(),
    NType.dotsIndicator: DotsIndicatorIntrinsicStates(),
    NType.wrapper: WrapperIntrinsicStates(),
    NType.animationConfigList: AnimationConfigListIntrinsicStates(),
    NType.animationConfigGrid: AnimationConfigGridIntrinsicStates(),
    NType.fadeInAnimation: FadeInAnimationIntrinsicStates(),
    NType.scaleAnimation: ScaleAnimationIntrinsicStates(),
    NType.slideAnimation: SlideAnimationIntrinsicStates(),
    NType.qrCode: QrCodeIntrinsicStates(),
    NType.barcode: BarcodeIntrinsicStates(),
    NType.qrScanner: QrScannerIntrinsicStates(),
  };

  IntrinsicState getStateByType(final NType type) {
    return _intrinsicStates[type] ?? IntrinsicState.basic;
  }
}
