import 'package:github_repository_finder/domain/models/repository_domain_model.dart';

abstract class GitHubRepository {
  Future<List<RepositoryDomainModel>> searchRepositories(String query);
}
