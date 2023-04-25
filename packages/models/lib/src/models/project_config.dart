import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/configs/index.dart';
import 'package:theta_models/src/models/languages/app_language.dart';
import 'package:theta_models/theta_models.dart';

class ProjectConfigModel extends Equatable {
  /// Constructor
  const ProjectConfigModel({
    required this.prjId,
    this.appLanguage = const AppLanguageObject(),
    this.mixpanel = const MixpanelConfigModelUninitialized(),
    this.braintree = const BraintreeConfigModelUninitialized(),
    this.supabase = const SupabaseConfigModelUninitialized(),
    this.github = const GitHubConfigModelUninitialized(),
    this.revenuecat = const RevenueCatConfigModelUninitialized(),
    this.stripe = const StripeConfigModelUninitialized(),
    this.qonversion = const QonversionConfigModelUninitialized(),
    this.admob = const AdMobConfigModelUninitialized(),
    this.firebase = const FirebaseConfigModelUninitialized(),
    this.airtable = const AirtableConfigModelUninitialized(),
    this.codemagicAPI = '',
    this.appleKeyIdentifier = '',
    this.appleIssuerID = '',
    this.applePrivateKey = '',
    this.appleCertificatePrivateKey = '',
    this.googlePrivateKey = '',
    this.googleVersion = '',
    this.googleAlias = '',
    this.googlePackageName = '',
    this.appleBundleID = '',
    this.mapboxKey = '',
    this.redirectUrl = '',
    this.privacyUrl = '',
    this.termsAndConditionsUrl = '',
    this.googleMapsKey = '',
    this.androidArtefactAAB = '',
    this.androidArtefactKeystore = '',
  });

  /// Essentials -------------
  /// Prj ID
  final ProjectID prjId;

  /// Prj languages
  final AppLanguageObject appLanguage;

  /// Integrations -------------
  final MixpanelConfigModel mixpanel;
  final BraintreeConfigModel braintree;
  final SupabaseConfigModel supabase;
  final GitHubConfigModel github;
  final RevenueCatConfigModel revenuecat;
  final QonversionConfigModel qonversion;
  final StripeConfigModel stripe;
  final AdMobConfigModel admob;
  final FirebaseConfigModel firebase;
  final AirtableConfigModel airtable;

  /// Basic app info -------------
  final String codemagicAPI;
  final String appleKeyIdentifier;
  final String appleIssuerID;
  final String applePrivateKey;
  final String appleCertificatePrivateKey;
  final String appleBundleID;
  final String googlePrivateKey;
  final String googleVersion;
  final String googleAlias;
  final String googlePackageName;

  /// Other integrations -------------
  //TODO: Move these keys to proper config classes
  final String mapboxKey;
  final String googleMapsKey;

  /// Teta Auth & privacy -------------
  final String redirectUrl;
  final String privacyUrl;
  final String termsAndConditionsUrl;

  /// These are urls artifacts that user can download if the google codemagic publishing finish with success
  final String androidArtefactAAB;
  final String androidArtefactKeystore;

  bool get googleMapsEnabled => googleMapsKey.isNotEmpty;

  bool get mapEnabled => mapboxKey.isNotEmpty;

  bool get isAppleStoreConnected =>
      appleBundleID.isNotEmpty &&
      appleIssuerID.isNotEmpty &&
      appleKeyIdentifier.isNotEmpty &&
      applePrivateKey.isNotEmpty;

  bool get isGooglePlayConnected =>
      googlePackageName.isNotEmpty && googlePrivateKey.isNotEmpty;

  bool get isPrivacyUrlConnected => privacyUrl.isNotEmpty;

  bool get isTermsAndConditionUrlConnected => termsAndConditionsUrl.isNotEmpty;

  bool get requireDev => admob is AdMobConfigModelInitialized;
  bool get requireIndividual =>
      admob is AdMobConfigModelInitialized ||
      revenuecat is RevenueCatConfigModelInitialized ||
      qonversion is QonversionConfigModelInitialized ||
      braintree is BraintreeConfigModelInitialized ||
      supabase is SupabaseConfigModelInitialized ||
      airtable is AirtableConfigModelInitialized;
  bool get requireStartup => mixpanel is MixpanelConfigModelInitialized;

  /*
  List<PackageModel> getIntegrationsPackages() {
    final tempPackages = <PackageModel>[];
    if (admob is AdMobConfigModelInitialized) {
      tempPackages.add(pGoogleMobileAds);
    }
    return tempPackages;
  }
  */

  @override
  List<Object?> get props => [
        prjId,
        appLanguage,
        mixpanel,
        braintree,
        stripe,
        qonversion,
        revenuecat,
        supabase,
        admob,
        firebase,
        airtable,
        github,
        appleBundleID,
        appleCertificatePrivateKey,
        appleIssuerID,
        appleKeyIdentifier,
        applePrivateKey,
        mapboxKey,
        googleMapsKey,
        googleAlias,
        googlePackageName,
        googlePrivateKey,
        googleVersion,
        redirectUrl,
        privacyUrl,
        termsAndConditionsUrl,
        androidArtefactAAB,
        androidArtefactKeystore,
      ];
}
