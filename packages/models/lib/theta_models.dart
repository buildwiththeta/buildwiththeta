library theta_models;

import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';

import 'main.reflectable.dart';

export 'package:theta_models/src/widgets/dynamic_attributes_parse.dart';
export 'package:theta_models/src/widgets/intrinsic_states/index.dart';
export 'package:theta_models/src/widgets/nodes/widget_adapter.dart';

export './src/enums/index.dart';
export './src/mappers/index.dart';
export './src/models/index.dart';
export './src/widgets/features/index.dart';
export './src/widgets/nodes/index.dart';

class ThetaModels {
  static final ThetaModels _instance = ThetaModels._internal();

  static ThetaModels get I {
    assert(!_instance.isInitialized,
        'ThetaModels is not initialized. Please call inizialize() before using it.');
    return _instance;
  }

  static ThetaModels get instance {
    assert(!_instance.isInitialized,
        'ThetaModels is not initialized. Please call inizialize() before using it.');
    return _instance;
  }

  ThetaModels._internal();

  static Future<void> initialize() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } catch (e) {
      Logger.printError('ThetaModels.initialize() failed: $e');
    }
    initializeReflectable();
    _instance.isInitialized = true;
  }

  bool isInitialized = false;
}
