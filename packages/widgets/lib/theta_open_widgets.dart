library theta_open_widgets;

import 'package:theta_models/theta_models.dart' deferred as theta_models;

export './src/core/index.dart';
export './src/core/overflow_indicator.dart';
export './src/elements/index.dart';
export './src/elements/render_objects/index.dart';
export './src/reflectable/index.dart';

class ThetaOpenWidgets {
  static final ThetaOpenWidgets _instance = ThetaOpenWidgets._();

  static ThetaOpenWidgets get I => instance;

  static ThetaOpenWidgets get instance => _instance;

  ThetaOpenWidgets._();

  static Future<void> initialize() async {
    await theta_models.loadLibrary();
    await theta_models.ThetaModels.initialize();
  }
}
