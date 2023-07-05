import 'package:either_dart/either.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/src/domain/usecases/base_usecase.dart';
import 'package:theta/theta.dart';

class SendConversionEventUseCase
    implements UseCase<Exception, void, SendConversionEventUseCaseParams> {
  const SendConversionEventUseCase(this._componentRepository);

  final ComponentRepository _componentRepository;

  @override
  Future<Either<Exception, void>> call(
          SendConversionEventUseCaseParams params) =>
      _componentRepository.sendConversionEvent(params.eventID, params.abTestID);
}

class SendConversionEventUseCaseParams extends Params {
  const SendConversionEventUseCaseParams({
    required this.eventID,
    this.abTestID,
  });

  final ID eventID;
  final ID? abTestID;
}
