import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/token.dart';
import 'package:theta/theta.dart';
import 'package:theta_analytics/theta_analytics.dart';

class ComponentService {
  const ComponentService(
    this._clientToken,
    this._httpClient,
  );

  final ClientToken _clientToken;
  final Client _httpClient;

  static final _analytics = ThetaAnalytics.instance.client;

  Future<GetPageResponseEntity> getComponent(String componentName) async {
    final log = _analytics.logEvent(title: 'Get component', description: null);
    final res = await _httpClient.post(
      Uri.parse('$baseUrl$getComponentPath'),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders,
      },
      body: json.encode({
        'component_name': componentName,
        if (log.isRight) 'log': {...log.right},
      }),
    );

    if (res.statusCode != 200) {
      throw Exception(
          'Error fetching component, code: ${res.statusCode}, message: ${res.body}');
    }
    return GetPageResponseEntity.fromJson(json.decode(res.body));
  }

  Future<void> sendConversionEvent(ID eventID, ID? abTestID) async {
    final res = await _httpClient.post(
      Uri.parse('$baseUrl$sendConversionEventPath'),
      headers: {
        'Authorization': 'Bearer ${_clientToken.key}',
        ...defaultHeaders,
      },
      body: json.encode({
        'event_id': eventID,
        'ab_test_id': abTestID,
      }),
    );
    if (res.statusCode != 200) {
      throw Exception(
          'Error send a conversion event, code: ${res.statusCode}, message: ${res.body}');
    }
  }
}
