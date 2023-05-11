import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_page_response.dart';

class ComponentService {
  const ComponentService(this._httpClient);

  final Client _httpClient;

  Future<GetPageResponseEntity> getComponent(
      String baseUrl, String token, String componentName) async {
    final res = await _httpClient.post(
      Uri.parse('$baseUrl$getComponentPath'),
      headers: {
        'Authorization': 'Bearer $token',
        ...defaultHeaders,
      },
      body: json.encode({
        'component_name': componentName,
      }),
    );

    if (res.statusCode != 200) {
      throw Exception(
          'Error fetching component, code: ${res.statusCode}, message: ${res.body}');
    }
    return GetPageResponseEntity.fromJson(json.decode(res.body));
  }
}
