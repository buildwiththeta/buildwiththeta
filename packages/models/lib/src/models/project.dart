// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Package imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

enum ProjectEnum {
  admin,
  editor,
  viewer,
}

enum BuildStatus {
  experimenting,
  testing,
  prototype,
  release,
}

class ProjectObject extends Equatable {
  /// Constructor
  const ProjectObject({
    required this.id,
    required this.userId,
    required this.teamId,
    required this.name,
    required this.link,
    required this.updatedAt,
    required this.createdAt,
    this.buildStatus = BuildStatus.experimenting,
    this.cmsToken,
    this.iconUrl,
    this.marketplaceCoverUrl,
    this.splashImageUrl,
    this.artifactId,
    this.idMarketplaceKey,
    this.isUnderReview,
    this.isArtifact,
    this.plan = const PlanResponse(
      isPremium: false,
      plan: UserPlan.free,
      downgradedStillActive: false,
    ),
  });

  final ProjectID id;
  final UserID? userId;
  final TeamID teamId;
  final String name;
  final String link;
  final DateTime createdAt;
  final DateTime updatedAt;
  final BuildStatus buildStatus;
  final String? cmsToken;
  final String? iconUrl;
  final PlanResponse plan;

  //this field keep track of the project duplicated (from the original one).
  //used to call the update marketplace from the project (if this is not null).
  //don't have team_id or user_uid so will be undetectable
  final ID? artifactId;

  //use to track the marketplace item in an immutable way
  final String? idMarketplaceKey;

  ///marketplace cover url image
  final String? marketplaceCoverUrl;

  //Understand if marketplace item is under review
  final bool? isUnderReview;

  ///marketplace cover url image
  final String? splashImageUrl;

  //Understand if project is artifact
  final bool? isArtifact;

  @override
  List<Object?> get props => [
        id,
        name,
        userId,
        teamId,
        link,
        createdAt,
        updatedAt,
        buildStatus,
        cmsToken,
        iconUrl,
        plan,
        artifactId,
        idMarketplaceKey,
        marketplaceCoverUrl,
        isUnderReview,
        splashImageUrl,
        isArtifact,
      ];

  @override
  String toString() =>
      'ProjectObject { id: $id, user_id: $userId, team_id: $teamId }';
}
