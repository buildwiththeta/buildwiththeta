library theta_open_widgets;

import 'package:theta_open_widgets/src/main.reflectable.dart';

export './src/core/index.dart';
export './src/core/overflow_indicator.dart';
export './src/elements/index.dart';
export './src/elements/render_objects/index.dart';
export './src/main.reflectable.dart';
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
    initializeReflectable();
    _instance.isInitialized = true;
  }

  bool isInitialized = false;
}
