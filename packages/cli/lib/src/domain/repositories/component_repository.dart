import 'package:either_dart/either.dart';

abstract class ComponentRepository {
  Future<Either<Exception, String>> getComponent(
    String componentName,
  );
}
