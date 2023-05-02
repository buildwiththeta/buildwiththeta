import 'package:theta_models/src/mappers/mapper.dart';
import 'package:theta_models/src/models/configs/index.dart';
import 'package:theta_models/src/models/languages/app_language.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectConfigMapper extends Mapper<ProjectConfigModel> {
  const ProjectConfigMapper();

  /// For a single instance
  @override
  ProjectConfigModel fromJson(Map<String, dynamic> json) => ProjectConfigModel(
        appLanguage: AppLanguageObject.fromJson(json),
        supabase: const SupabaseConfigMapper().fromJson(json),
        admob: const AdMobConfigMapper().fromJson(json),
        firebase: const FirebaseConfigMapper().fromJson(json),
        mapboxKey: json['mbK'] as String? ?? '',
        googleMapsKey: json['googleMapsKey'] as String? ?? '',
      );

  /// Return a json from this instance
  @override
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
    final SupabaseConfigModel? supabase,
    final AdMobConfigModel? admob,
    final FirebaseConfigModel? firebase,
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
