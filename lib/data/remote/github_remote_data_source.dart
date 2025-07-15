import 'package:github_repository_finder/data/remote/models/repository_remote_model.dart';

abstract class GitHubRemoteDataSource {
  Future<List<RepositoryRemoteModel>> searchRepositories(String query);
}
