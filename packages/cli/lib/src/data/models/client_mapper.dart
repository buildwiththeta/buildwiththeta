import 'package:theta_cli/src/data/models/token.dart';

class ClientMapper {
  const ClientMapper();

  ClientToken mapToken(String key) => ClientToken(key);
}
