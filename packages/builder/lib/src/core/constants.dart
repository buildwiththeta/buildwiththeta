import 'dart:convert';

import 'package:archive/archive.dart';

const defaultHeaders = {'Content-Type': 'application/json'};
const baseUrl = 'https://api.buildwiththeta.com/';
const getComponentPath = 'get_component';
const getStylesPath = 'get_project_styles';
const sendConversionEventPath = 'add_conversion_log';

final gzip = GZipDecoder();
Map<String, dynamic> decompressString(String compressedString) {
  final decodeBase64Json = base64.decode(compressedString);
  final decodegZipJson = gzip.decodeBytes(decodeBase64Json);
  return jsonDecode(utf8.decode(decodegZipJson));
}
