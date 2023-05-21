// ignore_for_file: unused_field

import 'package:either_dart/either.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/client.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_analytics/theta_analytics.dart';
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

  /// Returns if the instance is initialized or not.
  static bool get isInitialized => _instance._initialized;

  /// Initialize the current Theta instance.
  ///
  /// ---
  ///
  /// [anonKey] is the anonymous key used to authenticate the request.
  /// This key is used to authenticate the request.
  /// Safe to use in client-side applications.
  /// You can get one at https://app.buildwiththeta.com
  ///
  /// ❗️ Store the anon key in a safe place like a .env file.
  ///
  /// ---
  ///
  /// [cacheExtension] is the cache extension in seconds.
  /// Default: 43200 (12 hours)
  ///
  /// ---
  ///
  /// [cacheEnabled] is used to enable or disable cache.
  /// Default: true
  ///
  /// If cache is disabled, the cache extension is ignored.
  /// Use this option only for development purposes.
  ///
  /// ---
  ///
  /// 🟡 Any issue? Please, open an issue at https://github.com/buildwiththeta/buildwiththeta/issues
  static Future<Theta> initialize({
    /// Anonymous key.
    /// This key is used to authenticate the request.
    ///
    /// Safe to use in client-side applications.
    /// ❗️ Store this key in a safe place like a .env file.
    required String anonKey,

    /// Cache extension in seconds.
    /// Default: 43200 (12 hours)
    int cacheExtension = 43200,

    /// Enable or disable cache.
    /// Default: true
    ///
    /// If cache is disabled, the cache extension is ignored.
    /// Use this option only for development purposes.
    /// This can cause an increase of consume-based billing.
    bool cacheEnabled = true,
  }) async {
    await _instance._init(anonKey, cacheExtension, cacheEnabled);
    Logger.printDefault('Theta init completed $_instance');
    return _instance;
  }

  static final Theta _instance = Theta._();

  bool _initialized = false;

  late ThetaClient _client;

  Future<void> _initExternalDependencies() async {
    await ThetaOpenWidgets.initialize();
    theta.initializeReflectable();
    await ThetaAnalytics.initialize();
  }

  Future<void> _initializeCore() async {
    _client = getIt();
    await _client.initialize();
  }

  Future<void> _init(String key, int cacheExtension, bool cacheEnabled) async {
    await _initExternalDependencies();
    await initializeDependencyInjection(key, cacheExtension, cacheEnabled);
    await _initializeCore();
    _initialized = true;
  }

  /// Build a remote UI component.
  Future<Either<Exception, GetPageResponseEntity>> build(
          final String componentName) =>
      _client.build(componentName);

  /// Dispose the current Theta instance.
  void dispose() {
    disposeDependencies();
    _initialized = false;
  }
}
