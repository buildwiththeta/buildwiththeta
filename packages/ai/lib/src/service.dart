import 'dart:convert';

import 'package:http/http.dart';
import 'package:theta_ai/src/constants.dart';

class AIService {
  const AIService(this.key, this.client);

  final String key;
  final Client client;

  Future<void> ask(String prompt) async {
    client.post(
      Uri.parse(Constants.gptUrl),
      headers: {
        ...Constants.defaultHeaders,
        'Authorization': 'Bearer $key',
      },
      body: json.encode(
        {
          "model": Constants.gptModel,
          "messages": [
            {
              "role": "user",
              "content": prompt,
            }
          ],
          "functions": []
        },
      ),
    );
  }
}
