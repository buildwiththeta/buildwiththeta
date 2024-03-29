library theta_models;

import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';

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

  static ThetaModels get instance => _instance;

  ThetaModels._internal();

  static void initialize() {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } catch (e) {
      Logger.printError('ThetaModels.initialize() failed: $e');
    }
  }
}
