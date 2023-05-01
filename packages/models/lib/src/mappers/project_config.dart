import 'package:theta_models/src/models/configs/index.dart';
import 'package:theta_models/src/models/languages/app_language.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectConfigMapper {
  const ProjectConfigMapper();

  /// For a single instance
  static ProjectConfigModel fromJson(final Map<String, dynamic> json) =>
      ProjectConfigModel(
        appLanguage: AppLanguageObject.fromJson(json),
        supabase: const SupabaseConfigMapper().fromJson(json),
        admob: const AdMobConfigMapper().fromJson(json),
        firebase: const FirebaseConfigMapper().fromJson(json),
        mapboxKey: json['mbK'] as String? ?? '',
        googleMapsKey: json['googleMapsKey'] as String? ?? '',
      );

  /// Get a list of color styles from json
  List<ProjectConfigModel> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final ProjectConfigModel e) => <String, dynamic>{
        ...e.appLanguage.toJson(),
        ...const SupabaseConfigMapper().toJson(e.supabase),
        ...const AdMobConfigMapper().toJson(e.admob),
        ...const FirebaseConfigMapper().toJson(e.firebase),
        'mbK': e.mapboxKey,
        'googleMapsKey': e.googleMapsKey,
      };

  ProjectConfigModel copyWith({
    required final ProjectConfigModel model,
    final ProjectID? prjId,
    final AppLanguageObject? appLanguage,
    final MixpanelConfigModel? mixpanel,
    final SupabaseConfigModel? supabase,
    final GitHubConfigModel? github,
    final BraintreeConfigModel? braintree,
    final RevenueCatConfigModel? revenuecat,
    final QonversionConfigModel? qonversion,
    final StripeConfigModel? stripe,
    final AdMobConfigModel? admob,
    final FirebaseConfigModel? firebase,
    final AirtableConfigModel? airtable,
    final String? codemagicAPI,
    final String? appleKeyIdentifier,
    final String? appleIssuerID,
    final String? applePrivateKey,
    final String? appleCertificatePrivateKey,
    final String? appleBundleID,
    final String? googlePackageName,
    final String? googlePrivateKey,
    final String? googleVersion,
    final String? googleAlias,
    final String? androidArtefactAAB,
    final String? androidArtefactKeystore,
    final String? redirectUrl,
    final String? privacyUrl,
    final String? termsAndConditionsUrl,
    final String? mapboxKey,
    final String? googleMapsKey,
  }) =>
      ProjectConfigModel(
        appLanguage: appLanguage ?? model.appLanguage,
        supabase: supabase ?? model.supabase,
        admob: admob ?? model.admob,
        firebase: firebase ?? model.firebase,
        mapboxKey: mapboxKey ?? model.mapboxKey,
        googleMapsKey: googleMapsKey ?? model.googleMapsKey,
      );
}
