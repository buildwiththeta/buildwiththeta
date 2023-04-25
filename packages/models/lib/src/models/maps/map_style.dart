import 'constants_export.dart';
import 'aubergine_map.dart';
import 'dark_map.dart';
import 'night_map.dart';
import 'retro_map.dart';
import 'silver_map.dart';
import 'standard_map.dart';

enum MapStyle {
  standard,
  silver,
  retro,
  dark,
  night,
  aubergine,
}

String getMap(final MapStyle mapStyle) {
  switch (mapStyle) {
    case MapStyle.standard:
      return kStandardMap;
    case MapStyle.silver:
      return kSilverMap;
    case MapStyle.retro:
      return kRetroMap;
    case MapStyle.dark:
      return kDarkMap;
    case MapStyle.night:
      return kNightMap;
    case MapStyle.aubergine:
      return kAubergineMap;
  }
}

String getMapToCodeName(final MapStyle mapStyle) {
  switch (mapStyle) {
    case MapStyle.standard:
      return kMapStyleStandard.name;
    case MapStyle.silver:
      return kMapStyleSilver.name;
    case MapStyle.retro:
      return kMapStyleRetro.name;
    case MapStyle.dark:
      return kMapStyleDark.name;
    case MapStyle.night:
      return kMapStyleNight.name;
    case MapStyle.aubergine:
      return kMapStyleAubergine.name;
  }
}
