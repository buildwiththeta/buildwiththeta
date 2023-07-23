import 'package:either_dart/either.dart';

abstract class UseCase<E, R, P extends Params> {
  const UseCase();

  Future<Either<E, R>> call(P params);
}

abstract class StreamUseCase<E, R, P extends Params> {
  const StreamUseCase();

  Stream<Either<E, R>> call(P params);
}

/// Use Params.empty in case the UseCase needs no params to be passed
abstract class Params {
  const Params();
  static const empty = EmptyParams._singleton;
}

class EmptyParams extends Params {
  const EmptyParams._internal();
  static const _singleton = EmptyParams._internal();
}
