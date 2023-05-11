import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:theta/src/data/models/token.dart';

class ClientMapper {
  const ClientMapper();

  ClientToken mapToken(String key) {
    final token = JWT.decode(key);
    return ClientToken(token.payload['base_url'], token.payload['token']);
  }
}
