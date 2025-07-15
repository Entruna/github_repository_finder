import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source.dart';
import 'package:github_repository_finder/data/remote/github_remote_data_source_impl.dart';
import 'package:github_repository_finder/data/repository/github_repository_impl.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:logger/logger.dart';

final getIt = GetIt.instance;

///[setupInjection] sets dependency injection
void setupInjection() {
  getIt.registerLazySingleton<Logger>(() => Logger());

  ///Data layer injections
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<GitHubRemoteDataSource>(() => GitHubRemoteDataSourceImpl(dio: getIt<Dio>()));
  getIt.registerLazySingleton<GitHubRepository>(() => GitHubRepositoryImpl(remoteDataSource: getIt<GitHubRemoteDataSource>()));

  ///Presentation layer injections
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(gitHubRepository: getIt<GitHubRepository>(), logger: getIt<Logger>()));
}
