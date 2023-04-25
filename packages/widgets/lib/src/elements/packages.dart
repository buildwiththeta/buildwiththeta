import 'package:theta_models/src/models/package.dart';

///This file contains all the packages we support & export in each app.
const PackageModel pLottie = PackageModel(
  packageName: 'lottie',
  packageVersion: '1.3.0',
  isDart: false,
);
const PackageModel pFlutterStaggeredAnimations = PackageModel(
  packageName: 'flutter_staggered_animations',
  packageVersion: '1.0.0',
  isDart: false,
);
const PackageModel pAuthButton = PackageModel(
  packageName: 'auth_buttons',
  packageVersion: '2.0.4',
  isDart: false,
);

const PackageModel pGoogleMobileAds = PackageModel(
  packageName: 'google_mobile_ads',
  packageVersion: '1.2.0',
  isDart: false,
  customPath: "import 'package:google_mobile_ads/google_mobile_ads.dart';",
);

const PackageModel pIntl = PackageModel(
  packageName: 'intl',
  packageVersion: '0.17.0',
  isDart: false,
  extraCode: 'hide TextDirection',
);
const PackageModel pBadges = PackageModel(
  packageName: 'badges',
  packageVersion: '2.0.3',
  isDart: false,
);
const PackageModel pBouncingWidget = PackageModel(
  packageName: 'bouncing_widget',
  packageVersion: '2.0.0',
  isDart: false,
);
const PackageModel pPagedVerticalCalendar = PackageModel(
  packageName: 'paged_vertical_calendar',
  packageVersion: '1.1.3',
  isDart: false,
);
const PackageModel pTableCalendar = PackageModel(
  packageName: 'table_calendar',
  packageVersion: '3.0.7',
  isDart: false,
);
const PackageModel pConcentricTransition = PackageModel(
  packageName: 'concentric_transition',
  packageVersion: '1.0.3',
  isDart: false,
);
//unused
const PackageModel pLiquidSwipe = PackageModel(
  packageName: 'liquid_swipe',
  packageVersion: '2.1.1',
  isDart: false,
);
const PackageModel pMap = PackageModel(
  packageName: 'map',
  packageVersion: '1.0.0',
  isDart: false,
  extraCode: 'as map',
);
const PackageModel pGoogleMaps = PackageModel(
  packageName: 'google_maps_flutter',
  packageVersion: '2.2.1',
  isDart: false,
  customPath: '''
  import 'package:google_maps_flutter/google_maps_flutter.dart';
  import 'dart:async';
  import 'dart:typed_data';
  import 'dart:ui';
  ''',
);
const PackageModel pFlutterCacheManager = PackageModel(
  packageName: 'flutter_cache_manager',
  packageVersion: '3.3.0',
  isDart: false,
  customPath: '''
    import 'package:flutter_cache_manager/flutter_cache_manager.dart';
    import 'package:flutter_cache_manager/file.dart';
    ''',
);
const PackageModel pDartz = PackageModel(
  packageName: 'dartz',
  packageVersion: '0.10.1',
  isDart: false,
  customPath: '''
    import 'package:dartz/dartz.dart' as fp;
    ''',
);
const PackageModel pPolyLinesPoints = PackageModel(
  packageName: 'flutter_polyline_points',
  packageVersion: '1.0.0',
  isDart: false,
  customPath: '''
    import 'package:flutter_polyline_points/flutter_polyline_points.dart';
    ''',
);
//Use this instead of location. Location is not maintained properly.
const PackageModel pGeolocator = PackageModel(
  packageName: 'geolocator',
  packageVersion: '9.0.2',
  isDart: false,
  customPath: '''
    import 'package:geolocator/geolocator.dart';
    ''',
);
const PackageModel pLocation = PackageModel(
  packageName: 'location',
  packageVersion: '5.0.0-dev.8',
  isDart: false,
  customPath: '''
    import 'package:location/location.dart';
    ''',
);
const PackageModel pLatLang = PackageModel(
  packageName: 'latlng',
  packageVersion: '0.1.0',
  isDart: false,
  extraCode: ' as latlng',
);
const PackageModel pQrFlutter = PackageModel(
  packageName: 'qr_flutter',
  packageVersion: '4.0.0',
  isDart: false,
);
const PackageModel pTCard = PackageModel(
  packageName: 'tcard',
  packageVersion: '1.3.5',
  isDart: false,
);
const PackageModel pYoutubePlayerIframe = PackageModel(
  packageName: 'youtube_player_iframe',
  packageVersion: '2.3.0',
  isDart: false,
);
const PackageModel pWebviewX = PackageModel(
  packageName: 'webviewx',
  packageVersion: '0.2.1',
  isDart: false,
);
const PackageModel pFontAwesomeNamed = PackageModel(
  packageName: 'font_awesome_flutter_named',
  packageVersion: '1.1.1',
  isDart: false,
);
const PackageModel pFeatherIcons = PackageModel(
  packageName: 'feather_icons',
  packageVersion: '1.2.0',
  isDart: false,
);
const PackageModel pLineIcons = PackageModel(
  packageName: 'line_icons',
  packageVersion: '2.0.1',
  isDart: false,
);
const PackageModel pUrlLauncher = PackageModel(
  packageName: 'url_launcher',
  packageVersion: '6.1.4',
  isDart: false,
  customPath: "import 'package:url_launcher/url_launcher_string.dart';",
);
const PackageModel pIO = PackageModel(
  packageName: 'io',
  packageVersion: '',
  isDart: true,
);
const PackageModel pJustAudio = PackageModel(
  packageName: 'just_audio',
  packageVersion: '0.9.27',
  isDart: false,
  customPath: "import 'package:just_audio/just_audio.dart';",
);
const PackageModel pRxDart = PackageModel(
  packageName: 'rxdart',
  packageVersion: '0.27.4',
  isDart: false,
  customPath: "import 'package:rxdart/rxdart.dart';",
);
const PackageModel pEquatable = PackageModel(
  packageName: 'equatable',
  packageVersion: '2.0.3',
  isDart: false,
  customPath: "import 'package:equatable/equatable.dart';",
);
const PackageModel pAnotherFlushbar = PackageModel(
  packageName: 'another_flushbar',
  packageVersion: '1.12.29',
  isDart: false,
  customPath: "import 'package:another_flushbar/flushbar.dart';",
);
