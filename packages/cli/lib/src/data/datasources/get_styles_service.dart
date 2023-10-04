import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta_cli/src/core/constants.dart';
import 'package:theta_cli/src/data/models/token.dart';
import 'package:uuid/uuid.dart';

class StylesService {
  const StylesService(this._clientToken, this._httpClient);

  final ClientToken _clientToken;
  final Client _httpClient;

  Future<String> fetch() async {
    final res = await _httpClient.post(
      Uri.parse(getStylesApiUrl),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders
      },
      body: json.encode({
        'log': {
          "session_id": const Uuid().v1(),
          "title": "Theta ClI - Get styles",
          "description": null,
          "properties": null,
          "device_info": {
            "os_name": null,
            "os_version": null,
            "locale": null,
            "sdk_version": null,
            "sdk_build_number": null
          }
        }
      }),
    );

    if (res.statusCode != 200) {
      throw Exception(
        'Error fetching component, code: ${res.statusCode}, message: ${res.body}',
      );
    }
    return res.body;
  }
}
