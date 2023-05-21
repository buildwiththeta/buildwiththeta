import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:theta/src/data/models/get_styles_response.dart';

class LocalStylesService {
  const LocalStylesService(this.cacheExtentionInSeconds, this.isCacheEnabled);

  final int cacheExtentionInSeconds;
  final bool isCacheEnabled;

  Future<Box> getBox() async => Hive.openBox('styles_cache');

  Future<GetStylesResponseEntity?> getLocalStyles() async {
    final box = await getBox();
    final cachedJson = json.decode(box.get('styles'));

    // if the cached component is older than [cacheExtentionInSeconds] in seconds, return null
    if (isCacheEnabled) {
      final createdAt = cachedJson['created_at'];
      final now = DateTime.now().millisecondsSinceEpoch;
      final diff = now - createdAt;
      if (diff > 1000 * cacheExtentionInSeconds) {
        return null;
      }
    }

    // if the cache is not expired, return it
    if (cachedJson != null) {
      return GetStylesResponseEntity.fromJson(cachedJson);
    }
    return null;
  }

  void saveResponse(GetStylesResponseEntity getStylesResponseEntity) async {
    final box = await getBox();
    box.put(
        'styles',
        json.encode({
          ...getStylesResponseEntity.toJson(),
          'created_at': DateTime.now().millisecondsSinceEpoch,
        }));
  }
}
