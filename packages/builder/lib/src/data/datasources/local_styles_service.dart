import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/token.dart';

class LocalStylesService {
  const LocalStylesService(
    this._clientToken,
  );

  final ClientToken _clientToken;

  Future<GetStylesResponseEntity> getPreloadedStyles() async {
    final res = jsonDecode(await rootBundle.loadString(thetaPreloadFilePath));
    final decompress =
        await decompressAndDecrypt(_clientToken.key, res['styles']);
    return GetStylesResponseEntity.fromJson(jsonDecode(decompress));
  }
}
