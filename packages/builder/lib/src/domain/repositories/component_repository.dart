import 'package:either_dart/either.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/theta.dart';

abstract class ComponentRepository {
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
      String componentName, bool preloadAllowed);

  Future<Either<Exception, void>> sendConversionEvent(ID eventID, ID? abTestID);
}
