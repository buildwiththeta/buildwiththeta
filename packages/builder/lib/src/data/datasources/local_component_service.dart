import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/token.dart';

class LocalComponentService {
  const LocalComponentService(
    this._clientToken,
  );

  final ClientToken _clientToken;

  Future<GetPageResponseEntity> getPreloadedComponent(
      String componentName) async {
    final res = jsonDecode(await rootBundle.loadString(thetaPreloadFilePath));
    final decompress =
        await decompressAndDecrypt(_clientToken.key, res[componentName]);
    return GetPageResponseEntity.fromJson(jsonDecode(decompress));
  }
}
