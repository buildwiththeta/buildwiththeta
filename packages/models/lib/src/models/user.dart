import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// User Entity.
/// Identifies a public user in [buildwiththeta.com](https://buildwiththeta.com).
///
/// Read [internal docs](https://github.com/buildwiththeta/backend/blob/main/docs/supabase_db/tables.md#users) about the structure. Need a team access.
///
/// Uses a Mapper to serialize/deserialize.
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.userUID,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.profilePicture,
  });

  final UserID id;
  final UserID userUID;
  final String email;
  final String firstName;
  final String lastName;
  final String? profilePicture;

  String get fullName => '$firstName $lastName';

  @override
  List<Object?> get props =>
      [id, userUID, email, profilePicture, firstName, lastName];
}
