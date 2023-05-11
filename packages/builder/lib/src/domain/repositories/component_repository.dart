import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_page_response.dart';

abstract class ComponentRepository {
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
      String componentName);
}
