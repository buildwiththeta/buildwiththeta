import 'dart:convert';

import 'package:archive/archive.dart';
import 'package:encrypt/encrypt.dart';

const defaultHeaders = {'Content-Type': 'application/json'};
const sendConversionEventPath = 'add_conversion_log';

const thetaPreloadFilePath = 'assets/theta_assets/theta_preload.json';

final gzip = GZipDecoder();
String decompressAndDecrypt(String anonKey, String encryptedBase64) {
  final key = Key.fromUtf8(anonKey.split('.')[1].substring(0, 32));
  final iv = IV.fromLength(16);

  final encrypter = Encrypter(AES(key));

  final encryptedValue = Encrypted.fromBase64(encryptedBase64);
  final decryptedValue = encrypter.decrypt(encryptedValue, iv: iv);

  final compressedJson = base64.decode(decryptedValue);
  final json = utf8.decode(gzip.decodeBytes(compressedJson));

  return json;
}
