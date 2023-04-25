// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';

enum NType {
  align('align'),
  autoAppBar('autoAppBar'),
  badge('badge'),
  button('button'),
  center('center'),
  checkbox('checkbox'),
  column('column'),
  component('component'),
  condition('condition'),
  container('container'),
  decoratedBox('decoratedBox'),
  divider('divider'),
  expanded('expanded'),
  fractionallySizedBox('fractionallySizedBox'),
  gap('gap'),
  gestureDetector('gestureDetector'),
  gridView('gridView'),
  gridViewBuilder('gridViewBuilder'),
  hero('hero'),
  icon('icon'),
  ignorePointer('ignorePointer'),
  image('image'),
  limitedBox('limitedBox'),
  liquidSwipe('liquidSwipe'),
  listView('listView'),
  listViewBuilder('listViewBuilder'),
  listViewSeparated('listViewSeparated'),
  lottie('lottie'),
  opacity('opacity'),
  outlinedButton('outlinedButton'),
  padding('padding'),
  pageView('pageView'),
  positioned('positioned'),
  responsiveCondition('responsiveCondition'),
  row('row'),
  safeArea('safeArea'),
  scaffold('scaffold'),
  sizedBox('sizedBox'),
  spacer('spacer'),
  stack('stack'),
  text('text'),
  textButton('textButton'),
  textField('textField'),
  videoPlayer('videoPlayer'),
  wrap('wrap'),
  appBar('appBar'),
  bottomBar('bottomBar'),
  drawer('drawer'),
  firebaseFutureBuilder('firebaseFutureBuilder'),
  firebaseStreamBuilder('firebaseStreamBuilder'),
  firebasePagination('firebasePagination'),
  firebaseIsAuthenticated('firebaseIsAuthenticated'),
  loginWithApple('loginWithApple'),
  loginWithGoogle('loginWithGoogle'),
  loginWithFacebook('loginWithFacebook'),
  loginWithMicrosoft('loginWithMicrosoft'),
  loginWithGitHub('loginWithGitHub'),
  loginWithTwitter('loginWithTwitter'),
  loginWithTwitch('loginWithTwitch'),
  loginWithLinkedin('loginWithLinkedin'),
  loginWithDiscord('loginWithDiscord'),
  loginWithGitlab('loginWithGitlab'),
  loginWithBitBucket('loginWithBitBucket'),
  nil('nil'),
  materialAppBar('materialAppBar'),
  cupertinoAppBar('cupertinoAppBar'),
  materialBottomBar('materialBottomBar'),
  exampleWP('exampleWP'),
  radio('radio'),
  tooltip('tooltip'),
  bottombaritem('bottombaritem'),
  clipRect('clipRect'),
  clipRoundedRect('clipRoundedRect'),
  linearProgressIndicator('linearProgressIndicator'),
  rotatedBox('rotatedBox'),
  circularProgressIndicator('circularProgressIndicator'),
  clipOval('clipOval'),
  card('card'),
  visibility('visibility'),
  fittedBox('fittedBox'),
  aspectRatio('aspectRatio'),
  placeholder('placeholder'),
  animatedContainer('animatedContainer'),
  animatedOpacity('animatedOpacity'),
  animatedAlign('animatedAlign'),
  offStage('offStage'),
  overflowbox('overflowbox'),
  indexedStack('indexedStack'),
  listTile('listTile'),
  refreshIndicator('refreshIndicator'),
  constrainedBox('constrainedBox'),
  expansionPanel('expansionPanel'),
  cupertinoSwitch('cupertinoSwitch'),
  cupertinoPicker('cupertinoPicker'),
  cupertinoSegmentedControl('cupertinoSegmentedControl'),
  map('map'),
  mapBuilder('mapBuilder'),
  googleMaps('googleMaps'),
  mapBox('mapBox'),
  marker('marker'),
  tcard('tcard'),
  tcardBuilder('tcardBuilder'),
  concentricPageView('concentricPageView'),
  bouncingWidget('bouncingWidget'),
  calendar('calendar'),
  calendarV2('calendarV2'),
  camera('camera'),
  audioPlayer('audioPlayer'),
  audioPlayerProgressIndicator('audioPlayerProgressIndicator'),
  audioPlayerVolumeIndicator('audioPlayerVolumeIndicator'),
  webview('webview'),
  parallax('parallax'),
  dotsIndicator('dotsIndicator'),
  wrapper('wrapper'),
  fontAwesomeIcon('fontAwesomeIcon'),
  featherIcon('featherIcon'),
  lineIcon('lineIcon'),
  qrCode('qrCode'),
  qrScanner('qrScanner'),
  barcode('barcode'),
  video('video'),

  // Transform
  transformRotate('transformRotate'),
  transformTranslate('transformTranslate'),
  transformScale('transformScale'),
  transformPerspective('transformPerspective'),

  // Supabase
  supabaseFutureBuilder('supabaseFutureBuilder'),
  supabaseStreamBuilder('supabaseStreamBuilder'),
  supabaseLoggedUser('supabaseLoggedUser'),

  //Teta Store
  tetaStoreProductsBuilder('tetaStoreProductsBuilder'),
  tetaStoreShippingBuilder('tetaStoreShippingBuilder'),
  tetaStoreCartItemsBuilder('tetaStoreCartItemsBuilder'),
  tetaStoreTransactionsBuilder('tetaStoreTransactionsBuilder'),

  // RevenueCat
  revenueCatProducts('revenueCatProducts'),
  revenueCatSubStatus('revenueCatSubStatus'),

  // Qonversion
  qonversionProducts('qonversionProducts'),
  qonversionSubStatus('qonversionSubStatus'),

  // HTTP Requests
  httpRequest('httpRequest'),

  // HTTP Request from custom backend
  customHttpRequest('customHttpRequest'),

  // TetaCMS
  cmsFetch('cmsFetch'),
  cmsStream('cmsStream'),
  cmsLoggedUser('cmsLoggedUser'),
  cmsCount('cmsCount'),
  cmsCustomQuery('cmsCustomQuery'),

  // AdMob
  adMobBanner('adMobBanner'),

  // Animations
  animationConfigList('animationConfigList'),
  animationConfigGrid('animationConfigGrid'),
  animationConfigStaticList('animationConfigStaticList'),
  fadeInAnimation('fadeInAnimation'),
  slideAnimation('slideAnimation'),
  scaleAnimation('scaleAnimation'),
  location('location'),

  // Airtable
  airtableFetch('airtableFetch'),

  // Api Calls
  apiCallsFetch('apiCallsFetch');

  final String name;
  const NType(this.name);
}

class NodeType {
  ///Get node's type from NType enum value
  static String type(final NType type) => EnumToString.convertToString(type);

  ///Get node's display name from NType enum value
  static String name(final NType type) =>
      EnumToString.convertToString(type, camelCase: true);

  ///Get NType enum value from string
  static NType fromString(final String x) =>
      EnumToString.fromString(NType.values, x) ?? NType.nil;

  static NType fromStringCamelCase(final String x) =>
      EnumToString.fromString(NType.values, x, camelCase: true) ?? NType.nil;
}
