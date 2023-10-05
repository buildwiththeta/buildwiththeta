import 'package:either_dart/either.dart';

abstract class DirectoryRepository {
  Future<Either<Exception, void>> writeConfigFile(
      {required String jsonKey, required String content});

  Future<Either<Exception, String>> readConfigFile({required String jsonKey});

  Future<Either<Exception, void>> deleteConfigFile();

  Future<Either<Exception, void>> writeNamesFile({
    required String content,
    required String fileName,
  });

  Future<Either<Exception, void>> writePreloadFile(
      {required String anonKey,
      required String jsonKey,
      required String content});

  Future<Either<Exception, void>> preloadImages(Map<String, dynamic> json);
  Future<Either<Exception, void>> preloadFonts(Map<String, dynamic> json);

  Future<Either<Exception, bool>> writeIfThetaIsInPubspec();
}
