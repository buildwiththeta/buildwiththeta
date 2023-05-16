import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_styles_response.dart';
import 'package:theta/src/data/models/token.dart';

class StylesService {
  const StylesService(this._clientToken, this._httpClient);

  final ClientToken _clientToken;
  final Client _httpClient;

  Future<GetStylesResponseEntity> fetch() async {
    final res = await _httpClient.post(
      Uri.parse('$baseUrl$getStylesPath'),
      headers: {'Authorization': 'Bearer ${_clientToken.key}'},
    );

    if (res.statusCode != 200) {
      throw Exception(
          'Error fetching component, code: ${res.statusCode}, message: ${res.body}');
    }
    return GetStylesResponseEntity.fromJson(json.decode(res.body));
  }
}
