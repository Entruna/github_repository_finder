import 'package:github_repository_finder/data/local/github_local_datasource.dart';
import 'package:github_repository_finder/data/local/sembast_storage.dart';
import 'package:github_repository_finder/data/remote/models/repository_remote_model.dart';
import 'package:sembast/sembast.dart';

class GitHubLocalDataSourceImpl implements GitHubLocalDataSource {
  final _store = StoreRef<String, Map<String, dynamic>>.main();
  static const String _cacheKey = 'last_searched_repositories';

  @override
  Future<void> cacheRepositories(List<RepositoryRemoteModel> repositories) async {
    final db = SembastStorage.instance.database;
    final listMap = repositories.map((repo) => repo.toMap()).toList();

    await _store.record(_cacheKey).put(db, {'items': listMap});
  }

  @override
  Future<List<RepositoryRemoteModel>> getCachedRepositories() async {
    final db = SembastStorage.instance.database;
    final record = await _store.record(_cacheKey).get(db);

    if (record == null || record['items'] == null) return [];

    final List items = record['items'];
    return items.map((item) => RepositoryRemoteModelMapper.fromMap(item)).toList();
  }

  @override
  Future<void> clearCache() async {
    await _store.record(_cacheKey).delete(SembastStorage.instance.database);
  }
}
