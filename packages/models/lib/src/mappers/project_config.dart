import 'package:theta_models/src/models/configs/index.dart';
import 'package:theta_models/src/models/languages/app_language.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectConfigMapper {
  const ProjectConfigMapper();

  /// For a single instance
  static ProjectConfigModel fromJson(final Map<String, dynamic> json) =>
      ProjectConfigModel(
        prjId: json['prj_id'] as ProjectID,
        appLanguage: AppLanguageObject.fromJson(json),
        mixpanel: const MixpanelConfigMapper().fromJson(json),
        supabase: const SupabaseConfigMapper().fromJson(json),
        github: const GitHubConfigMapper().fromJson(json),
        braintree: const BraintreeConfigMapper().fromJson(json),
        revenuecat: const RevenueCatConfigMapper().fromJson(json),
        qonversion: const QonversionConfigMapper().fromJson(json),
        stripe: const StripeConfigMapper().fromJson(json),
        admob: const AdMobConfigMapper().fromJson(json),
        firebase: const FirebaseConfigMapper().fromJson(json),
        airtable: const AirtableConfigMapper().fromJson(json),
        codemagicAPI: json['Codemagic_API'] as String? ?? '',
        appleKeyIdentifier: json['Key_Identifier'] as String? ?? '',
        appleIssuerID: json['Issuer_ID'] as String? ?? '',
        applePrivateKey: json['Private_Key'] as String? ?? '',
        appleCertificatePrivateKey:
            json['Certificate_Private_Key'] as String? ?? '',
        appleBundleID: json['Bundle_ID'] as String? ?? '',
        googlePackageName: json['Package_Name'] as String? ?? '',
        googlePrivateKey: json['Google_Private_Key'] as String? ?? '',
        googleVersion: json['Google_Version'] as String? ?? '',
        googleAlias: json['Google_Alias_Name'] as String? ?? '',
        androidArtefactAAB: json['Android_Artefact_AAB'] as String? ?? '',
        androidArtefactKeystore:
            json['Android_Artefact_Keystore'] as String? ?? '',
        redirectUrl: json['teta_auth_redirect_url'] as String? ?? '',
        privacyUrl: json['privacy_url'] as String? ?? '',
        termsAndConditionsUrl:
            json['terms_and_conditions_url'] as String? ?? '',
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
        'prj_id': e.prjId,
        ...e.appLanguage.toJson(),
        ...const MixpanelConfigMapper().toJson(e.mixpanel),
        ...const SupabaseConfigMapper().toJson(e.supabase),
        ...const GitHubConfigMapper().toJson(e.github),
        ...const BraintreeConfigMapper().toJson(e.braintree),
        ...const RevenueCatConfigMapper().toJson(e.revenuecat),
        ...const QonversionConfigMapper().toJson(e.qonversion),
        ...const StripeConfigMapper().toJson(e.stripe),
        ...const AdMobConfigMapper().toJson(e.admob),
        ...const FirebaseConfigMapper().toJson(e.firebase),
        ...const AirtableConfigMapper().toJson(e.airtable),
        'Codemagic_API': e.codemagicAPI,
        'Key_Identifier': e.appleKeyIdentifier,
        'Issuer_ID': e.appleIssuerID,
        'Private_Key': e.applePrivateKey,
        'Certificate_Private_Key': e.appleCertificatePrivateKey,
        'Bundle_ID': e.appleBundleID,
        'Package_Name': e.googlePackageName,
        'Google_Private_Key': e.googlePrivateKey,
        'Google_Version': e.googleVersion,
        'Google_Alias_Name': e.googleAlias,
        'Android_Artefact_AAB': e.androidArtefactAAB,
        'Android_Artefact_Keystore': e.androidArtefactKeystore,
        'teta_auth_redirect_url': e.redirectUrl,
        'privacy_url': e.privacyUrl,
        'terms_and_conditions_url': e.termsAndConditionsUrl,
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
        prjId: prjId ?? model.prjId,
        appLanguage: appLanguage ?? model.appLanguage,
        mixpanel: mixpanel ?? model.mixpanel,
        supabase: supabase ?? model.supabase,
        github: github ?? model.github,
        braintree: braintree ?? model.braintree,
        revenuecat: revenuecat ?? model.revenuecat,
        qonversion: qonversion ?? model.qonversion,
        stripe: stripe ?? model.stripe,
        admob: admob ?? model.admob,
        firebase: firebase ?? model.firebase,
        airtable: airtable ?? model.airtable,
        codemagicAPI: codemagicAPI ?? model.codemagicAPI,
        appleKeyIdentifier: appleKeyIdentifier ?? model.appleKeyIdentifier,
        appleIssuerID: appleIssuerID ?? model.appleIssuerID,
        applePrivateKey: applePrivateKey ?? model.applePrivateKey,
        appleCertificatePrivateKey:
            appleCertificatePrivateKey ?? model.appleCertificatePrivateKey,
        appleBundleID: appleBundleID ?? model.appleBundleID,
        googlePackageName: googlePackageName ?? model.googlePackageName,
        googlePrivateKey: googlePrivateKey ?? model.googlePrivateKey,
        googleVersion: googleVersion ?? model.googleVersion,
        googleAlias: googleAlias ?? model.googleAlias,
        androidArtefactAAB: androidArtefactAAB ?? model.androidArtefactAAB,
        androidArtefactKeystore:
            androidArtefactKeystore ?? model.androidArtefactKeystore,
        redirectUrl: redirectUrl ?? model.redirectUrl,
        privacyUrl: privacyUrl ?? model.privacyUrl,
        termsAndConditionsUrl:
            termsAndConditionsUrl ?? model.termsAndConditionsUrl,
        mapboxKey: mapboxKey ?? model.mapboxKey,
        googleMapsKey: googleMapsKey ?? model.googleMapsKey,
      );
}
