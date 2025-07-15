import 'package:github_repository_finder/data/remote/models/repository_remote_model.dart';

abstract class GitHubLocalDataSource {
  Future<void> cacheRepositories(List<RepositoryRemoteModel> repositories);
  Future<List<RepositoryRemoteModel>> getCachedRepositories();
  Future<void> clearCache();
}
