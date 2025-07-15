import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source_impl.dart';
import 'package:github_repository_finder/data/repository/github_repository_impl.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';

final getIt = GetIt.instance;

///[setupInjection] sets dependency injection
void setupInjection() {
  ///Data layer injections
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<GitHubRemoteDataSource>(() => GitHubRemoteDataSourceImpl(dio: getIt<Dio>()));
  getIt.registerLazySingleton<GitHubRepository>(() => GitHubRepositoryImpl(remoteDataSource: getIt<GitHubRemoteDataSource>()));
}
