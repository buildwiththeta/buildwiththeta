import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:theta/src/core/constants.dart';
import 'package:theta/src/data/datasources/component_service.dart';
import 'package:theta/src/data/datasources/local_component_service.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/data/models/preload_flag.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta/src/domain/repositories/component_repository.dart';
import 'package:theta/theta.dart';

class ComponentRepositoryImpl implements ComponentRepository {
  const ComponentRepositoryImpl(
    this._componentService,
    this._localComponentService,
  );

  final ComponentService _componentService;
  final LocalComponentService _localComponentService;

  @override
  Future<Either<Exception, GetPageResponseEntity>> getComponent(
    String componentName,
  ) async {
    try {
      final flag = getIt<PreloadFlag>().value;
      if (flag) {
        final res = jsonDecode(
            await rootBundle.loadString('assets/theta_preload.json'));
        return Right(GetPageResponseEntity.fromJson(
            decompressString(res[componentName])));
      }
      final cachedComponent =
          await _localComponentService.getLocalComponent(componentName);
      if (cachedComponent != null) {
        return Right(cachedComponent);
      }
      final res = await _componentService.getComponent(componentName);
      _localComponentService.saveResponse(componentName, res);
      return Right(res);
    } catch (e) {
      _localComponentService.clearCache();
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, void>> sendConversionEvent(
      ID eventID, ID? abTestID) async {
    try {
      await _componentService.sendConversionEvent(eventID, abTestID);
      return const Right(null);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
