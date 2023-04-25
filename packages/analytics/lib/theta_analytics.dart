library theta_analytics;

import 'package:supabase/supabase.dart';
import 'package:theta_analytics/src/analytics.dart';
import 'package:theta_analytics/src/service.dart';
import 'package:theta_analytics/src/utils/info.dart';

/// Theta Analytics client
/// This package is used to send analytics data
/// within the Theta ecosystem.
class ThetaAnalytics {
  /// Theta analytics client
  ThetaAnalytics._();

  /// Singleton instance
  static final ThetaAnalytics _instance = ThetaAnalytics._();

  /// Get singleton instance
  static ThetaAnalytics get instance {
    assert(_instance._isInitialized, 'Theta Analytics is not initialized');
    return _instance;
  }

  /// Shortcut for [instance]
  static ThetaAnalytics get I => instance;

  /// Initialize analytics client
  /// ```dart
  /// await ThetaAnalytics.initialize(
  ///   prjId: 1,
  ///   token: 'xyz',
  /// );
  static Future<void> initialize(final SupabaseClient supabase) async {
    assert(!_instance._isInitialized, 'Theta Analytics is already initialized');
    await _instance._initialized(supabase);
  }

  Future<void> _initialized(final SupabaseClient supabase) async {
    final deviceInfo = await const DeviceInfoUtils().get();
    client = AnalyticsClient(AnalyticsService(supabase, deviceInfo));
    _isInitialized = true;
  }

  /// Analytics client
  late AnalyticsClient client;

  /// Is initialized
  bool _isInitialized = false;

  static bool get isInitialized => _instance._isInitialized;

  /// Dispose
  void dispose() {
    _isInitialized = false;
  }
}
