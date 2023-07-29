import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/data/models/token.dart';

class LocalStylesService {
  const LocalStylesService(
    this._clientToken,
    this._preloadFile,
    this.cacheExtentionInSeconds,
    this.isCacheEnabled,
  );

  final ClientToken _clientToken;
  final PreloadFile _preloadFile;
  final int cacheExtentionInSeconds;
  final bool isCacheEnabled;

  Future<Box> getBox() async => Hive.openBox('styles_cache');

  Future<GetStylesResponseEntity?> getLocalStyles() async {
    if (!isCacheEnabled) {
      return null;
    }

    final box = await getBox();

    if (box.get('styles') == null) {
      Logger.printDefault('Cache doesn\'t contain styles');
      return null;
    }

    final cachedJson = json.decode(box.get('styles'));

    if (cachedJson == null) {
      Logger.printDefault('Cached styles are null');
      return null;
    }

    // if the cached component is older than [cacheExtentionInSeconds] in seconds, return null
    final createdAt = cachedJson['created_at'];
    final now = DateTime.now().millisecondsSinceEpoch;
    final diff = now - createdAt;
    if (diff > 1000 * cacheExtentionInSeconds) {
      Logger.printDefault('Cache expired');
      return null;
    }

    // if the cache is not expired, return it
    return GetStylesResponseEntity.fromJson(cachedJson);
  }

  Future<void> saveResponse(
      GetStylesResponseEntity getStylesResponseEntity) async {
    final box = await getBox();
    await box.put(
        'styles',
        json.encode({
          ...getStylesResponseEntity.toJson(),
          'created_at': DateTime.now().millisecondsSinceEpoch,
        }));
    Logger.printDefault('Styles saved in cache');
  }

  Future<void> clearCache() async {
    final box = await getBox();
    await box.clear();
  }

  Future<GetStylesResponseEntity> getPreloadedStyles() async {
    final res = _preloadFile.customJson ??
        jsonDecode(await rootBundle.loadString(thetaPreloadFilePath));
    return GetStylesResponseEntity.fromJson(
        jsonDecode(decompressAndDecrypt(_clientToken.key, res['styles'])));
  }
}
