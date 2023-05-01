import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/configs/index.dart';
import 'package:theta_models/src/models/languages/app_language.dart';

/// Project Entity.
/// Identifies a project in [buildwiththeta.com](https://buildwiththeta.com). Now included in projects table as field.
///
/// Read [internal docs](https://github.com/buildwiththeta/backend/blob/main/docs/supabase_db/tables.md#projects) about projects structure. Need a team access.
class ProjectConfigModel extends Equatable {
  /// Constructor
  const ProjectConfigModel({
    this.appLanguage = const AppLanguageObject(),
    this.supabase = const SupabaseConfigModelUninitialized(),
    this.admob = const AdMobConfigModelUninitialized(),
    this.firebase = const FirebaseConfigModelUninitialized(),
    this.mapboxKey = '',
    this.googleMapsKey = '',
  });

  /// Prj languages
  final AppLanguageObject appLanguage;

  /// Integrations -------------
  final SupabaseConfigModel supabase;
  final AdMobConfigModel admob;
  final FirebaseConfigModel firebase;

  /// Other integrations -------------
  final String mapboxKey;
  final String googleMapsKey;

  @override
  List<Object?> get props => [
        appLanguage,
        supabase,
        admob,
        firebase,
        mapboxKey,
        googleMapsKey,
      ];
}
