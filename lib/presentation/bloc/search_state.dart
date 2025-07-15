import 'package:github_repository_finder/domain/models/repository_domain_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<RepositoryDomainModel> repos;
  SearchLoaded(this.repos);
}

class CachedReposLoaded extends SearchState {
  final List<RepositoryDomainModel> repos;
  CachedReposLoaded(this.repos);
}

class SearchError extends SearchState {
  final String message;
  SearchError(this.message);
}
