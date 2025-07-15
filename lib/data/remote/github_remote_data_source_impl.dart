import 'package:dio/dio.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/data/remote/models/repository_remote_model.dart';

class GitHubRemoteDataSourceImpl implements GitHubRemoteDataSource {
  final Dio dio;

  GitHubRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<RepositoryRemoteModel>> searchRepositories(String query) async {
    final response = await dio.get("https://api.github.com/search/repositories", queryParameters: {"q": query});

    if (response.statusCode == 200) {
      final List items = response.data["items"];
      return items.map((item) => RepositoryRemoteModelMapper.fromMap(item)).toList();
    } else {
      throw Exception("API error: ${response.statusCode}");
    }
  }
}
