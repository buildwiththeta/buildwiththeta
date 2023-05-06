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
    required this.city,
    required this.country,
    required this.timezone,
    required this.currency,
  });

  final UserID id;
  final UserID userUID;
  final String? workingCompany;
  final String? jobTitle;
  final String? source;
  final String? city;
  final String? country;
  final String? timezone;
  final String? currency;

  @override
  List<Object?> get props => [
        id,
        userUID,
        workingCompany,
        jobTitle,
        source,
        city,
        country,
        timezone,
        currency
      ];
}
