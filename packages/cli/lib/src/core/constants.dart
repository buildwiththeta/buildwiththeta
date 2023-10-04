import 'package:theta_cli/src/dependency_injection/di.dart';
import 'package:theta_cli/src/domain/usecases/read_config_file_usecase.dart';

const defaultHeaders = {'Content-Type': 'application/json'};
const baseUrl = 'https://api.buildwiththeta.com/functions/v1/';
const getComponentApiUrl = 'https://component.api.buildwiththeta.net';
const getStylesApiUrl = 'https://styles.api.buildwiththeta.net';
const getPagesApiUrl = '${baseUrl}get_pages';

Future<String> readToken() {
  return getIt<ReadConfigFileUseCase>()(
          const ReadConfigFileUseCaseParams(jsonKey: 'token'))
      .then(
    (res) => res.fold(
      (l) {
        throw Exception(l.toString());
      },
      (r) => r,
    ),
  );
}
