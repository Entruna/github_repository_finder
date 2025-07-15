import 'package:github_repository_finder/data/models/repository_data_model.dart';

abstract class GitHubRemoteDataSource {
  Future<List<RepositoryDataModel>> searchRepositories(String query);
}
