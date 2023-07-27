import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart';

class DirectoryService {
  const DirectoryService();

  static final currentDirectory = Directory.current.path;
  static final assetsDirectory = '$currentDirectory/assets';
  static const preloadFile = '/theta_preload.json';

  String compressString(String json) {
    final enCodedJson = utf8.encode(json);
    final gZipJson = gzip.encode(enCodedJson);
    return base64.encode(gZipJson);
  }

  String encrypt(String anonKey, String value) {
    final key = Key.fromUtf8(anonKey.split('.')[1].substring(0, 32));
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    return encrypter.encrypt(value, iv: iv).base64;
  }

  Future<void> directoryContainsPubspec() async {
    final current =
        await File('${Directory.current.path}/pubspec.yaml').exists();
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
      await Directory('${Directory.current.path}/assets').exists();

  Future<void> createAssetsDirectory() async {
    await directoryContainsPubspec();
    if (!(await checkAssetsDirectory())) {
      await Directory(assetsDirectory).create();
    }
  }

  Future<void> writePreloadFile(
      {required String anonKey,
      required String jsonKey,
      required String content}) async {
    await createAssetsDirectory();
    final file = File(assetsDirectory + preloadFile);
    final fileContent = await file.exists() ? await file.readAsString() : '{}';
    final json = jsonDecode(fileContent);

    json[jsonKey] = encrypt(anonKey, compressString(content));
    await file.writeAsString(jsonEncode(json));
  }
}
