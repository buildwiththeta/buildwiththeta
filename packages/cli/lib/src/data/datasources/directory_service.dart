import 'dart:convert';
import 'dart:io';

class DirectoryService {
  const DirectoryService();

  static final currentDirectory = Directory.current.path;
  static final assetsDirectory = currentDirectory + '/assets';
  static const preloadFile = '/theta_preload.json';

  String compressString(String json) {
    final enCodedJson = utf8.encode(json);
    final gZipJson = gzip.encode(enCodedJson);
    return base64.encode(gZipJson);
  }

  Future<void> directoryContainsPubspec() async {
    final current =
        await File(Directory.current.path + '/pubspec.yaml').exists();
    if (!current) {
      throw Exception(
        'Error: current directory does not contain a pubspec.yaml file',
      );
    }
  }

  Future<String> retrieveExistingPreloadFile() async {
    final existingFile = File(assetsDirectory + preloadFile);
    return existingFile.readAsString();
  }

  Future<bool> checkAssetsDirectory() async =>
      await Directory(Directory.current.path + '/assets').exists();

  Future<void> createAssetsDirectory() async {
    await directoryContainsPubspec();
    if (!(await checkAssetsDirectory())) {
      await Directory(assetsDirectory).create();
    }
  }

  Future<void> writePreloadFile(String key, String content) async {
    await createAssetsDirectory();
    final file = File(assetsDirectory + preloadFile);
    final fileContent = await file.exists() ? await file.readAsString() : '{}';
    final json = jsonDecode(fileContent);
    json[key] = compressString(content);
    await file.writeAsString(jsonEncode(json));
  }
}
