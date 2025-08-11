import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repository_finder/domain/core/failure.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';
import 'package:github_repository_finder/domain/services/external_launcher_service.dart';
import 'package:github_repository_finder/presentation/bloc/search_state.dart';
import 'package:logger/logger.dart';

class SearchCubit extends Cubit<SearchState> {
  final GitHubRepository gitHubRepository;
  final ExternalLauncherService urlLauncherService;

  final Logger logger;

  SearchCubit({required this.gitHubRepository, required this.logger, required this.urlLauncherService}) : super(SearchInitial()) {
    _getLastSearch();
  }

  void _getLastSearch() async {
    final repos = await gitHubRepository.getLastCachedSearch();
    if (repos.isNotEmpty) {
      emit(CachedReposLoaded(repos));
    }
  }

  Future<void> search(String query) async {
    emit(SearchLoading());
    try {
      final repos = await gitHubRepository.searchRepositories(query);
      emit(SearchLoaded(repos));
    } catch (e, stack) {
      logger.e("Search failed", error: e, stackTrace: stack);
      if (e is Failure) {
        emit(SearchError(e.message));
      } else {
        emit(SearchError("Unexpected error occurred."));
      }
    }
  }

  Future<void> launchUrlExternal(String url) async {
    try {
      await urlLauncherService.launchExternalUrl(url);
    } catch (e, stack) {
      logger.e("Failed to launch URL", error: e, stackTrace: stack);
    }
  }
}
