import 'package:theta_models/theta_models.dart';

class UserMapper extends Mapper<UserEntity> {
  const UserMapper();

  static const _idKey = 'id';
  static const _userUID = 'user_uid';
  static const _email = 'email';
  static const _profilePicture = 'profile_picture';
  static const _firstName = 'first_name';
  static const _lastName = 'last_name';

  /// For a single instance
  @override
  UserEntity fromJson(final Map<String, dynamic> json) => UserEntity(
      id: json[_idKey],
      userUID: json[_userUID],
      email: json[_email],
      profilePicture: json[_profilePicture],
      firstName: json[_firstName],
      lastName: json[_lastName]);

  @override
  Map<String, dynamic> toJson(UserEntity e) => {
        _idKey: e.id,
        _userUID: e.userUID,
        _email: e.email,
        _profilePicture: e.profilePicture,
        _firstName: e.firstName,
        _lastName: e.lastName,
      };

  UserEntity copyWith(
    final UserEntity e, {
    final String? id,
    final String? userUID,
    final String? email,
    final String? profilePicture,
    final String? firstName,
    final String? lastName,
  }) =>
      UserEntity(
        id: id ?? e.id,
        userUID: userUID ?? e.userUID,
        email: email ?? e.email,
        profilePicture: profilePicture ?? e.profilePicture,
        firstName: firstName ?? e.firstName,
        lastName: lastName ?? e.lastName,
      );
}
