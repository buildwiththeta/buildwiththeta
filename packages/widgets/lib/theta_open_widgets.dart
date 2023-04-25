library theta_open_widgets;

import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/main.reflectable.dart';

export './src/core/index.dart';
export './src/core/overflow_indicator.dart';
export './src/elements/index.dart';
export './src/elements/render_objects/index.dart';
export './src/reflectable/index.dart';

class ThetaOpenWidgets {
  static final ThetaOpenWidgets _instance = ThetaOpenWidgets._();

  static ThetaOpenWidgets get I {
    assert(!_instance.isInitialized,
        'ThetaModels is not initialized. Please call inizialize() before using it.');
    return _instance;
  }

  static ThetaOpenWidgets get instance {
    assert(!_instance.isInitialized,
        'ThetaModels is not initialized. Please call inizialize() before using it.');
    return _instance;
  }

  ThetaOpenWidgets._();

  static Future<void> initialize() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } catch (e) {
      Logger.printError('$e');
    }
    await ThetaModels.initialize();
    initializeReflectable();
    _instance.isInitialized = true;
  }

  bool isInitialized = false;
}
