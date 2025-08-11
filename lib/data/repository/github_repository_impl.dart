import 'package:github_repository_finder/data/local/github_local_datasource.dart';
import 'package:github_repository_finder/data/mappers/repository_mapper.dart';
import 'package:github_repository_finder/data/remote/error_mapper.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  final GitHubRemoteDataSource _remoteDataSource;
  final GitHubLocalDataSource _localDataSource;

  GitHubRepositoryImpl({required GitHubRemoteDataSource remoteDataSource, required GitHubLocalDataSource localDataSource})
    : _remoteDataSource = remoteDataSource,
      _localDataSource = localDataSource;

  ///[searchRepositories] call search api, clear db, save last searched repositories
  @override
  Future<List<RepositoryDomainModel>> searchRepositories(String query) async {
    try {
      final repos = await _remoteDataSource.searchRepositories(query);

      await _localDataSource.clearCache();
      await _localDataSource.cacheRepositories(repos);

      return repos.map((r) => r.toDomain()).toList();
    } catch (e) {
      throw mapErrorToFailure(e);
    }
  }

  ///[getLastCachedSearch] get last searched repositories
  @override
  Future<List<RepositoryDomainModel>> getLastCachedSearch() async {
    final repos = await _localDataSource.getCachedRepositories();
    return repos.map((r) => r.toDomain()).toList();
  }
}
