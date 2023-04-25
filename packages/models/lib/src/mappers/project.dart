import 'package:enum_to_string/enum_to_string.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectMapper {
  const ProjectMapper();

  /// For a single instance
  static ProjectObject fromJson(final Map<String, dynamic> json) {
    final pages = <PageObject>[];

    return ProjectObject(
      id: json['id'] as int,
      userId: json['user_id'] != null ? json['user_id'] as int : 0,
      name: json['name'] as String? ?? '',
      link: json['link'] != null ? json['link'] as String : '',
      artifactId: json['artifact_id'] as int?,
      idMarketplaceKey: json['id_marketplace_key'] as String?,
      teamId: json['team_id'] as int,
      updatedAt: DateTime.tryParse(json['updated_at'] as String? ?? '') ??
          DateTime.now(),
      createdAt: DateTime.tryParse(json['created_at'] as String? ?? '') ??
          DateTime.now(),
      buildStatus: EnumToString.fromString(
            BuildStatus.values,
            json['status'] as String? ?? 'Experimenting',
            camelCase: true,
          ) ??
          BuildStatus.experimenting,
      cmsToken: json['cms_token'] as String?,
      iconUrl: (json['icon_url'] as String?)?.replaceFirst('.co/', '.in/'),
      marketplaceCoverUrl: json['marketplace_cover_url'] as String?,
      splashImageUrl: json['splash_image_url'] as String?,
      isUnderReview: json['is_under_review'] as bool?,
      isArtifact: json['is_artifact'] as bool?,
    );
  }

  /// Get a list of color styles from json
  List<ProjectObject> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  Map<String, dynamic> toJson(final ProjectObject e) => <String, dynamic>{
        'user_id': e.userId,
        'team_id': e.teamId,
        'name': e.name,
        'link': e.link,
        'icon_url': e.iconUrl,
        'marketplace_cover_url': e.marketplaceCoverUrl,
        'splash_image_url': e.splashImageUrl,
        'artifact_id': e.artifactId,
        'id_marketplace_key': e.idMarketplaceKey,
        'is_under_review': e.isUnderReview,
        'is_artifact': e.isArtifact,
        'cms_token': e.cmsToken,
      };

  ProjectObject copyWith({
    required final ProjectObject e,
    final int? id,
    final int? userId,
    final int? teamId,
    final List<String>? authors,
    final String? name,
    final String? link,
    final List<PageObject>? pages,
    final List<String>? participants,
    final List<String>? invites,
    final String? image,
    final ProjectEnum? rule,
    final String? token,
    final DateTime? updatedAt,
    final DateTime? createdAt,
    final BuildStatus? buildStatus,
    final String? cmsToken,
    final String? iconUrl,
    final String? marketplaceCoverUrl,
    final String? splashImageUrl,
    final int? artifactId,
    final String? idMarketplaceKey,
    final bool? isUnderReview,
    final bool? isArtifact,
    final PlanResponse? plan,
  }) {
    return ProjectObject(
      id: id ?? e.id,
      userId: userId ?? e.userId,
      teamId: teamId ?? e.teamId,
      name: name ?? e.name,
      link: link ?? e.link,
      updatedAt: updatedAt ?? e.updatedAt,
      createdAt: createdAt ?? e.createdAt,
      buildStatus: buildStatus ?? e.buildStatus,
      iconUrl: iconUrl ?? e.iconUrl,
      marketplaceCoverUrl: marketplaceCoverUrl ?? e.marketplaceCoverUrl,
      splashImageUrl: splashImageUrl ?? e.splashImageUrl,
      artifactId: artifactId ?? e.artifactId,
      idMarketplaceKey: idMarketplaceKey ?? e.idMarketplaceKey,
      isUnderReview: isUnderReview ?? e.isUnderReview,
      cmsToken: cmsToken ?? e.cmsToken,
      isArtifact: isArtifact ?? e.isArtifact,
      plan: plan ?? e.plan,
    );
  }

  bool isReadyForDownload(
    final ProjectObject prj,
    final ProjectConfigModel config,
  ) {
    return prj.iconUrl != null &&
        config.appleBundleID.isNotEmpty &&
        config.googlePackageName.isNotEmpty;
  }
}
