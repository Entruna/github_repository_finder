import 'package:github_repository_finder/data/mappers/repository_mapper.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  final GitHubRemoteDataSource remoteDataSource;

  GitHubRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<RepositoryDomainModel>> searchRepositories(String query) async {
    final models = await remoteDataSource.searchRepositories(query);
    return models.map((m) => m.toDomain()).toList();
  }
}
