import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:github_repository_finder/data/local/github_local_datasource.dart';
import 'package:github_repository_finder/data/local/sembast_storage.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source_impl.dart';
import 'package:github_repository_finder/data/repository/github_repository_impl.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:logger/logger.dart';

import 'data/local/github_local_data_source_impl.dart';

final getIt = GetIt.instance;

///[setupInjection] sets dependency injection
Future<void> setupInjection() async {
  getIt.registerLazySingleton<Logger>(() => Logger());

  // Init Sembast
  final storage = SembastStorage.instance;
  await storage.init();

  ///Data layer injections
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<GitHubRemoteDataSource>(() => GitHubRemoteDataSourceImpl(dio: getIt<Dio>()));
  getIt.registerLazySingleton<GitHubLocalDataSource>(() => GitHubLocalDataSourceImpl());

  getIt.registerLazySingleton<GitHubRepository>(
    () => GitHubRepositoryImpl(remoteDataSource: getIt<GitHubRemoteDataSource>(), localDataSource: getIt<GitHubLocalDataSource>()),
  );

  ///Presentation layer injections
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(gitHubRepository: getIt<GitHubRepository>(), logger: getIt<Logger>()));
}
