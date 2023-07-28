import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart';
import 'package:http/http.dart';
import 'package:mason_logger/mason_logger.dart';

class DirectoryService {
  const DirectoryService(this._client);

  final Client _client;

  static final Logger _logger = Logger();
  static final currentDirectory = Directory.current.path;
  static final assetsDirectory = '$currentDirectory/assets';
  static final thetaAssetsDirectory = '$assetsDirectory/theta_assets';
  static const preloadFile = '/theta_preload.json';
  static const defaultImage =
      'https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/cover-min.png';

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

  Future<bool> checkThetaAssetsDirectory() async =>
      await Directory('${Directory.current.path}/assets/theta_assets').exists();

  Future<void> createAssetsDirectory() async {
    await directoryContainsPubspec();
    if (!(await checkAssetsDirectory())) {
      await Directory(assetsDirectory).create();
    }
  }

  Future<void> createThetaAssetsDirectory() async {
    await directoryContainsPubspec();
    if (!(await checkThetaAssetsDirectory())) {
      await Directory(thetaAssetsDirectory).create();
    }
  }

  Future<void> createDirectories() async {
    await createAssetsDirectory();
    await createThetaAssetsDirectory();
  }

  Future<void> writePreloadFile(
      {required String anonKey,
      required String jsonKey,
      required String content}) async {
    await createDirectories();
    final file = File(thetaAssetsDirectory + preloadFile);
    final fileContent = await file.exists() ? await file.readAsString() : '{}';
    final json = jsonDecode(fileContent);

    json[jsonKey] = encrypt(anonKey, compressString(content));
    await file.writeAsString(jsonEncode(json));
  }

  Future<void> preloadImages(Map<String, dynamic> json) async {
    await createDirectories();
    final nodes = json['nodes'];
    for (final node in nodes) {
      if (node['type'] == 'image') {
        var url = node['properties']['img']['v'] as String? ?? defaultImage;
        if (url.isEmpty) url = defaultImage;
        _logger.info('📥 Preloading image: $url');
        final res = await _client.get(Uri.parse(url));
        final file = File(
            '$thetaAssetsDirectory/${base64.encode(utf8.encode(node['id']))}.${url.split('.').last}');
        await file.writeAsBytes(res.bodyBytes);
      }
    }
  }
}
