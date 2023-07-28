import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/preload_file.dart';
import 'package:theta/src/data/models/token.dart';

class LocalComponentService {
  const LocalComponentService(
    this._clientToken,
    this._preloadFile,
    this.cacheExtentionInSeconds,
    this.isCacheEnabled,
  );

  final ClientToken _clientToken;
  final PreloadFile _preloadFile;
  final int cacheExtentionInSeconds;
  final bool isCacheEnabled;

  Future<Box> getBox() async => await Hive.openBox('component_cache');

  Future<GetPageResponseEntity?> getLocalComponent(String componentName) async {
    if (!isCacheEnabled) {
      Logger.printDefault('Cache is not enabled');
      return null;
    }

    final box = await getBox();

    if (box.get(componentName) == null) {
      Logger.printDefault('Cache doesn\'t contain $componentName');
      return null;
    }

    final cachedJson = json.decode(box.get(componentName));

    if (cachedJson == null) {
      Logger.printDefault('The cached component is null');
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
    return GetPageResponseEntity.fromJson(cachedJson);
  }

  Future<void> saveResponse(
      String componentName, GetPageResponseEntity pageResponseEntity) async {
    final box = await getBox();
    await box.put(
        componentName,
        json.encode({
          ...pageResponseEntity.toJson(),
          'created_at': DateTime.now().millisecondsSinceEpoch,
        }));
    Logger.printDefault('Component $componentName saved in cache');
  }

  Future<void> clearCache() async {
    final box = await getBox();
    await box.clear();
  }

  Future<GetPageResponseEntity> getPreloadedComponent(
      String componentName) async {
    final res = _preloadFile.customJson ??
        jsonDecode(await rootBundle.loadString(thetaPreloadFilePath));
    return GetPageResponseEntity.fromJson(
        jsonDecode(decompressAndDecrypt(_clientToken.key, res[componentName])));
  }
}
