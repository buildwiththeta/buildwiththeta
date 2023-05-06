import 'package:theta_models/theta_models.dart';

class UserInfoMapper extends Mapper<UserInfoEntity> {
  const UserInfoMapper();

  static const _idKey = 'id';
  static const _userUID = 'user_uid';
  static const _workingCompany = 'working_company';
  static const _jobTitle = 'job_title';
  static const _source = 'source';
  static const _city = 'city';
  static const _country = 'country';
  static const _timezone = 'timezone';
  static const _currency = 'currency';

  /// For a single instance
  @override
  UserInfoEntity fromJson(final Map<String, dynamic> json) => UserInfoEntity(
        id: json[_idKey],
        userUID: json[_userUID],
        workingCompany: json[_workingCompany],
        jobTitle: json[_jobTitle],
        source: json[_source],
        city: json[_city],
        country: json[_country],
        timezone: json[_timezone],
        currency: json[_currency],
      );

  @override
  Map<String, dynamic> toJson(UserInfoEntity e) => {
        _idKey: e.id,
        _userUID: e.userUID,
        _workingCompany: e.workingCompany,
        _jobTitle: e.jobTitle,
        _source: e.source,
        _city: e.city,
        _country: e.country,
        _timezone: e.timezone,
        _currency: e.currency,
      };

  UserInfoEntity copyWith(
    final UserInfoEntity e, {
    final String? id,
    final String? userUID,
    final String? workingCompany,
    final String? jobTitle,
    final String? source,
    final String? city,
    final String? country,
    final String? timezone,
    final String? currency,
  }) =>
      UserInfoEntity(
        id: id ?? e.id,
        userUID: userUID ?? e.userUID,
        workingCompany: workingCompany ?? e.workingCompany,
        jobTitle: jobTitle ?? e.jobTitle,
        source: source ?? e.source,
        city: city ?? e.city,
        country: country ?? e.country,
        timezone: timezone ?? e.timezone,
        currency: currency ?? e.currency,
      );
}
