import 'dart:convert';

import 'package:archive/archive.dart' deferred as archive;

const defaultHeaders = {'Content-Type': 'application/json'};
const thetaPreloadFilePath = 'assets/theta_assets/theta_preload.json';

Future<String> decompressAndDecrypt(String anonKey, String content) async {
  await archive.loadLibrary();
  try {
    final gzip = archive.GZipDecoder();
    final compressedJson = base64.decode(content);
    final json = utf8.decode(gzip.decodeBytes(compressedJson));

    return json;
  } catch (e) {
    throw Exception(
        'Error decompressing and decrypting, message: ${e.toString()}');
  }
}
