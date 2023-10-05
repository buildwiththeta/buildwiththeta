import 'dart:convert';

import 'package:archive/archive.dart' deferred as archive;
import 'package:encrypt/encrypt.dart' deferred as encrypt;

const defaultHeaders = {'Content-Type': 'application/json'};
const thetaPreloadFilePath = 'assets/theta_assets/theta_preload.json';

Future<String> decompressAndDecrypt(
    String anonKey, String encryptedBase64) async {
  await Future.wait([
    archive.loadLibrary(),
    encrypt.loadLibrary(),
  ]);
  final gzip = archive.GZipDecoder();
  final key = encrypt.Key.fromUtf8(anonKey.split('.')[1].substring(0, 32));
  final iv = encrypt.IV.fromLength(16);

  final encrypter = encrypt.Encrypter(encrypt.AES(key));

  final encryptedValue = encrypt.Encrypted.fromBase64(encryptedBase64);
  final decryptedValue = encrypter.decrypt(encryptedValue, iv: iv);

  final compressedJson = base64.decode(decryptedValue);
  final json = utf8.decode(gzip.decodeBytes(compressedJson));

  return json;
}
