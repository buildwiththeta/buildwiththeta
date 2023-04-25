// ignore_for_file: unused_field

import 'dart:ui';

import 'package:clear_response/clear_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projects_db/projects_db.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:ui_builder/src/builder.dart';
import 'package:ui_builder/ui_builder.dart';

/// UIBuilder instance.
///
/// It must be initialized before used, otherwise an error is thrown.
///
/// ```dart
/// await UIBuilder.initialize(...)
/// ```
///
/// Use it:
///
/// ```dart
/// final instance = UIBuilder.I;
/// ```
///
class UIBuilder {
  UIBuilder._();

  /// Gets the current UIBuilder instance.
  ///
  /// An [AssertionError] is thrown if supabase isn't initialized yet.
  /// Call [TetaCMS.initialize] to initialize it.
  static UIBuilder get instance {
    assert(
      _instance._initialized,
      'You must initialize the UIBuilder instance before calling UIBuilder.instance',
    );
    return _instance;
  }

  /// Shortcut to get the current UIBuilder instance.
  static UIBuilder get I {
    assert(
      _instance._initialized,
      'You must initialize the UIBuilder instance before calling UIBuilder.I',
    );
    return _instance;
  }

  /// Returns if the instance is initialized or not
  static bool get isInitialized => _instance._initialized;

  /// Initialize the current UIBuilder instance
  ///
  /// This must be called only once. If called more than once, an
  /// [AssertionError] is thrown
  static Future<UIBuilder> initialize({
    required final int channelId,
    required final int prjId,
    required final String token,
    final bool? debug,
  }) async {
    await _instance._init(
      channelId,
      token,
      prjId,
    );
    UIBuilder.log('***** UIBuilder init completed $_instance');
    return _instance;
  }

  static final UIBuilder _instance = UIBuilder._();

  bool _initialized = false;

  late Core _core;

  /// Dispose the instance to free up resources.
  void dispose() {
    _initialized = false;
  }

  Future<void> _init(
    final int channelId,
    final String token,
    final int prjId,
  ) async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      DartPluginRegistrant.ensureInitialized();
    } catch (e) {
      //This can throw unimplemented error on some platforms.
      UIBuilder.log('Info: $e');
    }
    await ThetaOpenWidgets.initialize();
    _core = Core(channelId, token);
    await Future.wait(
      [
        ProjectsDB.initialize(prjId: prjId, token: token),
        _core.initialize(),
      ],
    );
    _initialized = true;
  }

  Future<ClearResponse<Widget?, ClearErrorResponse?>> build(
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

  /// Print only in debug mode
  static void log(final String msg) {
    if (kDebugMode) {
      debugPrint(msg);
    }
  }

  /// Print a warning message only in debug mode
  static void printWarning(final String text) => log('\x1B[33m$text\x1B[0m');

  /// Print an error message only in debug mode
  static void printError(final String text) => log('\x1B[31m$text\x1B[0m');
}
