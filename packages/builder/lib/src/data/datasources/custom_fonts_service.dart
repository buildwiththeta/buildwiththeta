import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:theta/theta.dart';

class CustomFontsService {
  const CustomFontsService(this.client);

  final Client client;

  Future<ByteData> _loadByteData(Uint8List bytes) async {
    return ByteData.view(bytes.buffer);
  }

  Future<void> fetchFonts(List<CustomFontEntity> customFonts) async {
    final futures = <Future>[];
    for (final font in customFonts) {
      futures.add(downloadFont(font));
    }
    await Future.wait(futures);
  }

  Future<void> downloadFont(CustomFontEntity customFont) async {
    final res = await client.get(Uri.parse(customFont.publicUrl));
    final fontLoader = FontLoader(customFont.name)
      ..addFont(_loadByteData(res.bodyBytes));
    await fontLoader.load();
  }
}
