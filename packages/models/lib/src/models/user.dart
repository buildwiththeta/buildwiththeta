// Package imports:
// Project imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';

enum JobRole {
  nil,
  developer,
  designer,
  productManager,
  entrepreneur,
}

class UserObject extends Equatable {
  /// Constructor
  const UserObject({
    this.id = '',
    this.userUID = '',
    this.email,
    this.avatar,
    this.firstName,
    this.lastName,
    this.job = JobRole.nil,
    this.isStudent = false,
  });

  UserObject.fromJson(final Map<String, dynamic> json)
      : id = json['id'] as String? ?? '',
        userUID = json['user_uid'] as String? ?? '',
        email = json['email'] as String? ?? '',
        avatar = json['avatar_url'] as String?,
        firstName = json['firstName'] as String? ?? '',
        lastName = json['lastName'] as String? ?? '',
        job = EnumToString.fromString(
              JobRole.values,
              json['job'] as String? ?? 'Nil',
              camelCase: true,
            ) ??
            JobRole.nil,
        isStudent = json['isStudent'] as bool? ?? false;

  final UserID id;
  final UserID userUID;
  final String? email;
  final String? avatar;
  final String? firstName;
  final String? lastName;
  final JobRole job;
  final bool isStudent;

  static const empty = UserObject();

  UserObject copyWith({
    final String? id,
    final String? userUID,
    final String? email,
    final String? avatar,
    final String? firstName,
    final String? lastName,
    final JobRole? job,
    final bool? isStudent,
  }) =>
      UserObject(
        id: id ?? this.id,
        userUID: userUID ?? this.userUID,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        job: job ?? this.job,
        isStudent: isStudent ?? this.isStudent,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_uid': userUID,
        'email': email,
        'avatar_url': avatar,
        'firstName': firstName,
        'lastName': lastName,
        'job': job.name,
        'isStudent': isStudent,
      };

  @override
  List<Object?> get props => [
        id,
        userUID,
        email,
        avatar,
        firstName,
        lastName,
        job,
        isStudent,
      ];
}
