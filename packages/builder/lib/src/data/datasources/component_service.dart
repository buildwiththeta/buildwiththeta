import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/token.dart';
import 'package:theta/theta.dart';

class ComponentService {
  const ComponentService(
    this._clientToken,
    this._httpClient,
    this._customURLs,
  );

  final ClientToken _clientToken;
  final Client _httpClient;
  final CustomURLs _customURLs;

  Future<GetPageResponseEntity> getComponent(
      String componentName, String? branchName) async {
    final res = await _httpClient.post(
      Uri.parse(_customURLs.getComponent),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders,
      },
      body: json.encode({
        'component_name': componentName,
        'branch_name': branchName,
      }),
    );

    if (res.statusCode != 200) {
      throw Exception(
          'Error fetching component, code: ${res.statusCode}, message: ${res.body}');
    }
    return GetPageResponseEntity.fromJson(json.decode(res.body));
  }
}
