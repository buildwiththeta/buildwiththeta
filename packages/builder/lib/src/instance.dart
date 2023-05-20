// ignore_for_file: unused_field

import 'package:either_dart/either.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

import '../main.reflectable.dart' as theta;

/// Theta instance.
///
/// ❗️ Initialize before use, otherwise an error is thrown.
///
/// ```dart
/// await Theta.initialize(...)
/// ```
class Theta {
  Theta._();

  /// Gets the current Theta instance.
  ///
  /// An [AssertionError] is thrown if Theta isn't initialized yet.
  /// Call [Theta.initialize] to initialize it.
  static Theta get instance {
    assert(
      _instance._initialized,
      'You must initialize Theta instance before calling Theta.instance',
    );
    return _instance;
  }

  /// Returns if the instance is initialized or not
  static bool get isInitialized => _instance._initialized;

  /// Initialize the current Theta instance.
  static Future<Theta> initialize({required String anonKey}) async {
    await _instance._init(anonKey);
    Logger.printDefault('Theta init completed $_instance');
    return _instance;
  }

  static final Theta _instance = Theta._();

  bool _initialized = false;

  late ThetaClient _client;

  Future<void> _initExternalDependencies() async {
    await ThetaModels.initialize();
    await ThetaOpenWidgets.initialize();
    theta.initializeReflectable();
  }

  Future<void> _initializeCore() async {
    _client = getIt();
    await _client.initialize();
  }

  Future<void> _init(String key) async {
    await _initExternalDependencies();
    await initializeDependencyInjection(key);
    await _initializeCore();
    _initialized = true;
  }

  Future<Either<Exception, GetPageResponseEntity>> build(
          final String componentName) =>
      _client.build(componentName);

  void dispose() {
    disposeDependencies();
    _initialized = false;
  }
}
