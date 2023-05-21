import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:theta/src/data/models/get_page_response.dart';

class LocalComponentService {
  const LocalComponentService(
      this.cacheExtentionInSeconds, this.isCacheEnabled);

  final int cacheExtentionInSeconds;
  final bool isCacheEnabled;

  getBox() => Hive.openBox('component_cache');

  Future<GetPageResponseEntity?> getLocalComponent(String componentName) async {
    final box = await getBox();
    final cachedJson = json.decode(box.get(componentName));

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
      return GetPageResponseEntity.fromJson(cachedJson);
    }
    return null;
  }

  void saveResponse(
      String componentName, GetPageResponseEntity pageResponseEntity) async {
    final box = await getBox();
    box.put(
        componentName,
        json.encode({
          ...pageResponseEntity.toJson(),
          'created_at': DateTime.now().millisecondsSinceEpoch,
        }));
  }
}
