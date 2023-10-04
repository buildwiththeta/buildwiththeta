import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta_cli/src/core/constants.dart';
import 'package:theta_cli/src/data/models/token.dart';

class PageService {
  const PageService(
    this._clientToken,
    this._httpClient,
  );

  final ClientToken _clientToken;
  final Client _httpClient;

  Future<List<String>> getPagesNames(String branchName) async {
    print(_clientToken.key);
    final res = await _httpClient.post(
      Uri.parse(getPagesApiUrl),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders,
      },
      body: json.encode({
        'branch_name': branchName,
      }),
    );

    if (res.statusCode != 200) {
      throw Exception(
        'Error fetching component, code: ${res.statusCode}, message: ${res.body}',
      );
    }
    final data = json.decode(res.body);
    return List.from(data['pages'] as List<dynamic>);
  }
}
