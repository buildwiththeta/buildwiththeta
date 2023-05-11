// ignore_for_file: unused_field

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta/src/core.dart';
import 'package:theta/theta.dart';

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
      'You must initialize the UIBuilder instance before calling UIBuilder.instance',
    );
    return _instance;
  }

  /// Returns if the instance is initialized or not
  static bool get isInitialized => _instance._initialized;

  /// Initialize the current Theta instance.
  static Future<Theta> initialize(String key) async {
    await _instance._init(key);
    Logger.printDefault('Theta init completed $_instance');
    return _instance;
  }

  static final Theta _instance = Theta._();

  bool _initialized = false;

  late ThetaCore _core;

  Future<void> _initExternalDependencies() async {
    await ThetaOpenWidgets.initialize();
  }

  Future<void> _initializeCore() async {
    _core = ThetaCore(getIt(), getIt())..initialize();
  }

  Future<void> _init(String key) async {
    await _initExternalDependencies();
    await initializeDependencyInjection(key);
    await _initializeCore();
    _initialized = true;
  }

  Future<Either<Exception, Widget>> build(
    final BuildContext context,
    final String componentName, {
    final List<Workflow>? workflows,
    final ThemeMode? theme,
    final List<Var>? parameters,
    final List<Var>? states,
  }) =>
      _core.build(
        context,
        componentName,
        workflows: workflows,
        theme: theme,
        parameters: parameters,
        states: states,
      );

  void dispose() {
    disposeDependencies();
    _initialized = false;
  }
}
