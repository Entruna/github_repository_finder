import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_finder/domain/models/owner_domain_model.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/domain/repository/github_repository.dart';
import 'package:github_repository_finder/domain/services/external_launcher_service.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:github_repository_finder/presentation/bloc/search_state.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockGitHubRepository extends Mock implements GitHubRepository {}

class MockLogger extends Mock implements Logger {}

class MockExternalLauncherService extends Mock implements ExternalLauncherService {}

void main() {
  late MockGitHubRepository mockRepository;
  late MockLogger mockLogger;
  late MockExternalLauncherService mockExternalLauncherService;

  const query = 'flutter';

  final fakeRepos = [
    RepositoryDomainModel(
      name: 'awesome_repo',
      description: 'Awesome flutter project',
      updatedAt: '2024-01-01T00:00:00Z',
      htmlUrl: 'https://github.com/example/awesome_repo',
      owner: OwnerDomainModel(login: 'example', avatarUrl: 'https://avatars.githubusercontent.com/u/1?v=4', htmlUrl: 'https://github.com/example'),
      forksCount: 123,
      createdAt: '2023-01-01T00:00:00Z',
    ),
  ];

  setUp(() {
    mockRepository = MockGitHubRepository();
    mockLogger = MockLogger();
    mockExternalLauncherService = MockExternalLauncherService();
  });

  group('SearchCubit', () {
    blocTest<SearchCubit, SearchState>(
      'emits [CachedReposLoaded] when cached repos exist at startup',
      build: () {
        when(() => mockRepository.getLastCachedSearch()).thenAnswer((_) async => fakeRepos);
        return SearchCubit(gitHubRepository: mockRepository, logger: mockLogger, urlLauncherService: mockExternalLauncherService);
      },
      expect: () => [isA<CachedReposLoaded>()],
    );

    blocTest<SearchCubit, SearchState>(
      'emits [SearchLoading, SearchLoaded] on successful search',
      build: () {
        when(() => mockRepository.searchRepositories(query)).thenAnswer((_) async => fakeRepos);

        when(() => mockRepository.getLastCachedSearch()).thenAnswer((_) async => []);

        return SearchCubit(gitHubRepository: mockRepository, logger: mockLogger, urlLauncherService: mockExternalLauncherService);
      },
      act: (cubit) async => await cubit.search(query),
      expect: () => [isA<SearchLoading>(), isA<SearchLoaded>()],
    );

    blocTest<SearchCubit, SearchState>(
      'emits [SearchLoading, SearchError] on failed search',
      build: () {
        when(() => mockRepository.searchRepositories(query)).thenThrow(Exception('Network error'));

        when(() => mockLogger.e(any(), error: any(named: 'error'), stackTrace: any(named: 'stackTrace'))).thenReturn(null);

        when(() => mockRepository.getLastCachedSearch()).thenAnswer((_) async => []);
        return SearchCubit(gitHubRepository: mockRepository, logger: mockLogger, urlLauncherService: mockExternalLauncherService);
      },
      act: (cubit) async => await cubit.search(query),
      expect: () => [isA<SearchLoading>(), isA<SearchError>()],
    );
  });

  blocTest<SearchCubit, SearchState>(
    'calls urlLauncherService.launchExternalUrl when launchUrlExternal is called',
    build: () {
      when(() => mockExternalLauncherService.launchExternalUrl(any())).thenAnswer((_) async {});
      when(() => mockRepository.getLastCachedSearch()).thenAnswer((_) async => []);
      return SearchCubit(gitHubRepository: mockRepository, logger: mockLogger, urlLauncherService: mockExternalLauncherService);
    },
    act: (cubit) async => await cubit.launchUrlExternal('https://example.com'),
    verify: (_) {
      verify(() => mockExternalLauncherService.launchExternalUrl('https://example.com')).called(1);
    },
  );
}
