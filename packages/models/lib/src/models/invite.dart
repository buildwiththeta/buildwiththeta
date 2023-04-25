// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

class InviteModel extends Equatable {
  /// Constructor
  const InviteModel({
    required this.id,
    required this.userId,
    required this.teamId,
    required this.email,
  });

  final int id;
  final int userId;
  final int teamId;
  final String email;

  static InviteModel fromJson(final Map<String, dynamic> json) {
    return InviteModel(
      id: json['id'] as int,
      userId: json['user_uid'] as int,
      teamId: json['team_id'] as int,
      email: json['email'] as String,
    );
  }

  @override
  List<Object?> get props => [id, userId, teamId, email];

  @override
  String toString() =>
      'id: $id\t user_uid: $userId\t team_id: $teamId\t email: $email';
}
