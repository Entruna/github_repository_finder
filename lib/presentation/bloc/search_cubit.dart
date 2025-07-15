import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';
import 'package:github_repository_finder/presentation/bloc/search_state.dart';
import 'package:github_repository_finder/utils/error_handler.dart';
import 'package:logger/logger.dart';

class SearchCubit extends Cubit<SearchState> {
  final GitHubRepository gitHubRepository;

  final Logger logger;

  SearchCubit({required this.gitHubRepository, required this.logger}) : super(SearchInitial());

  Future<void> search(String query) async {
    emit(SearchLoading());
    try {
      final repos = await gitHubRepository.searchRepositories(query);
      emit(SearchLoaded(repos));
    } catch (e, stack) {
      logger.e("Search failed", error: e, stackTrace: stack);
      emit(SearchError(handleDioError(e)));
    }
  }
}
