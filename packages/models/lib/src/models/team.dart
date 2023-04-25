// ignore_for_file: public_member_api_docs, avoid_dynamic_calls

// Project imports:

import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class TeamObject extends Equatable {
  const TeamObject({
    required this.id,
    required this.name,
    required this.description,
    required this.website,
    required this.authorId,
    required this.projects,
    required this.team_members,
  });

  final TeamID id;
  final String name;
  final String description;
  final String? website;
  final List<MinProjectModel> projects;
  final List<UserObject> team_members;
  final int authorId;

  // ignore: prefer_constructors_over_static_methods
  static TeamObject fromJson(final Map<String, dynamic> json) {
    final projects = (json['team']['projects'] as List<dynamic>? ?? <dynamic>[])
        .map(
          (final dynamic e) => const MinProjectModelMapper()
              .fromJson(json: e as Map<String, dynamic>),
        )
        .toList()
      ..sort(
        (final MinProjectModel a, final MinProjectModel b) =>
            b.updatedAt.compareTo(a.updatedAt),
      );
    return TeamObject(
      id: json['team']?['id'] as int? ?? 0,
      name: json['team']?['name'] as String,
      website: json['team']?['website'] as String?,
      authorId: json['team']?['author_uid'] as int,
      description: json['team']?['description'] as String,
      projects: projects,
      team_members:
          (json['team']['team_members'] as List<dynamic>? ?? <dynamic>[])
              .map(
                (final dynamic e) =>
                    UserObject.fromJson(e['user'] as Map<String, dynamic>),
              )
              .toList(),
    );
  }

  List<TeamObject> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'team': <String, dynamic>{
          'id': id,
          'name': name,
          'website': website,
          'author_uid': authorId,
          'description': description,
          'projects': projects
              .map((final e) => const MinProjectModelMapper().toJson(e))
              .toList(),
          'team_members': team_members
              .map((final e) => <String, dynamic>{'user': e.toJson()})
              .toList(),
        }
      };

  @override
  List<Object?> get props =>
      [id, name, description, website, authorId, projects, team_members];
}
