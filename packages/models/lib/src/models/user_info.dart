import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// User Info Entity.
///
/// Uses a Mapper to serialize/deserialize.
class UserInfoEntity extends Equatable {
  const UserInfoEntity({
    required this.id,
    required this.userUID,
    required this.workingCompany,
    required this.jobTitle,
    required this.source,
  });

  final UserID id;
  final UserID userUID;
  final String? workingCompany;
  final String? jobTitle;
  final String? source;

  @override
  List<Object?> get props => [
        id,
        userUID,
        workingCompany,
        jobTitle,
        source,
      ];
}
