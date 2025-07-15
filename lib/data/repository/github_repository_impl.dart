import 'package:github_repository_finder/data/local/github_local_datasource.dart';
import 'package:github_repository_finder/data/mappers/repository_mapper.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  final GitHubRemoteDataSource remoteDataSource;
  final GitHubLocalDataSource localDataSource;

  GitHubRepositoryImpl({required this.remoteDataSource, required this.localDataSource});

  ///[searchRepositories] call search api, clear db, save last searched repositories
  @override
  Future<List<RepositoryDomainModel>> searchRepositories(String query) async {
    final repos = await remoteDataSource.searchRepositories(query);

    await localDataSource.clearCache();
    await localDataSource.cacheRepositories(repos);

    return repos.map((r) => r.toDomain()).toList();
  }

  ///[getLastCachedSearch] get last searched repositories
  @override
  Future<List<RepositoryDomainModel>> getLastCachedSearch() async {
    final repos = await localDataSource.getCachedRepositories();
    return repos.map((r) => r.toDomain()).toList();
  }
}
