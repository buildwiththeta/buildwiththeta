import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/token.dart';
import 'package:theta/src/data/models/urls.dart';

class StylesService {
  const StylesService(
    this._clientToken,
    this._httpClient,
    this._customURLs,
  );

  final ClientToken _clientToken;
  final Client _httpClient;
  final CustomURLs _customURLs;

  Future<GetStylesResponseEntity> fetch() async {
    final res = await _httpClient.post(
      Uri.parse(_customURLs.getStyles),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders
      },
    );

    if (res.statusCode != 200) {
      throw Exception(
          'Error fetching component, code: ${res.statusCode}, message: ${res.body}');
    }
    return GetStylesResponseEntity.fromJson(json.decode(res.body));
  }
}
