import 'package:equatable/equatable.dart';

class GitHubConfigMapper {
  const GitHubConfigMapper();

  static const _secretKey = 'githubCS';
  static const _tokenKey = 'githubToken';
  static const _repositoryKey = 'githubRepo';

  GitHubConfigModel fromJson(final Map<String, dynamic> json) {
    final accessToken = json[_secretKey] as String?;
    final username = json[_tokenKey] as String?;
    final repository = json[_repositoryKey] as String?;
    if (accessToken != null && username != null && repository != null) {
      return GitHubConfigModelInitialized(
        accessToken: accessToken,
        username: username,
        repository: repository,
      );
    }
    return GitHubConfigModelUninitialized(
      accessToken: accessToken ?? '',
      username: username ?? '',
      repository: repository ?? '',
    );
  }

  Map<String, dynamic> toJson(final GitHubConfigModel e) => <String, dynamic>{
        _secretKey: e.accessToken,
        _tokenKey: e.username,
        _repositoryKey: e.repository,
      };

  GitHubConfigModel copyWith(
    final GitHubConfigModel e, {
    final String? accessToken,
    final String? username,
    final String? repository,
  }) {
    final _accessToken = accessToken ?? e.accessToken;
    final _username = username ?? e.username;
    final _repository = repository ?? e.repository;
    if (_accessToken.isNotEmpty &&
        _username.isNotEmpty &&
        _repository.isNotEmpty) {
      return GitHubConfigModelInitialized(
        accessToken: _accessToken,
        username: _username,
        repository: _repository,
      );
    }
    return GitHubConfigModelUninitialized(
      accessToken: _accessToken,
      username: _username,
      repository: _repository,
    );
  }
}

abstract class GitHubConfigModel extends Equatable {
  const GitHubConfigModel({
    required this.accessToken,
    required this.username,
    required this.repository,
  });

  final String accessToken;
  final String username;
  final String repository;

  @override
  List<Object?> get props => [
        accessToken,
        username,
        repository,
      ];
}

class GitHubConfigModelInitialized extends GitHubConfigModel {
  const GitHubConfigModelInitialized({
    required super.accessToken,
    required super.username,
    required super.repository,
  });
}

class GitHubConfigModelUninitialized extends GitHubConfigModel {
  const GitHubConfigModelUninitialized({
    super.accessToken = '',
    super.username = '',
    super.repository = '',
  });
}
